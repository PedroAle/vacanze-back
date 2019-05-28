using System;
using System.Collections.Generic;
using Microsoft.AspNetCore.Cors;
using Microsoft.AspNetCore.Mvc;
using vacanze_back.VacanzeApi.Common.Entities.Grupo9;
using vacanze_back.VacanzeApi.Common.Exceptions;
using vacanze_back.VacanzeApi.Persistence.Repository.Grupo9;

namespace vacanze_back.VacanzeApi.Services.Controllers.Grupo9
{
    [Produces("application/json")]
    [Route("api/[controller]")]
    [EnableCors("MyPolicy")]
    [ApiController]
    public class ClaimController : ControllerBase
    {
        // GET api/values
        //se usara para consultar por pasaporte
        [HttpGet]
        public ActionResult<IEnumerable<Claim>> Get()
        {
            try
            {
                var conec = new ClaimConnection();
                var claimList = conec.GetClaim(2);
                return Ok(claimList);
            }
            catch (DatabaseException)
            {
                return StatusCode(500);
            }
            catch (GeneralException)
            {
                return StatusCode(500);
            }
        }

        // GET api/values/5
        [HttpGet("{id}")]
        public ActionResult<IEnumerable<Claim>> Get(int id)
        {
            try
            {
                var conec = new ClaimConnection();
                var claimList = conec.GetClaim(id);

                return Ok(claimList);
            }
            catch (DatabaseException)
            {
                return StatusCode(500);
            }
            catch (GeneralException)
            {
                return StatusCode(500);
            }
        }

        // GET api/values/5
        // Get para la tabla equipaje
        [HttpGet("{tipo}/{id}")]
        public ActionResult<IEnumerable<Claim>> Get(string tipo, int id)
        {
            try
            {
                if (tipo == "Baggage")
                {
                    var conec = new ClaimConnection();
                    var claimList = conec.GetClaimBaggage(id);
                    return Ok(claimList);
                }

                if (tipo == "documentPasaport")
                {
                    var conec = new ClaimConnection();
                    var claimList = conec.GetClaimDocumentPasaport(id);
                    return Ok(claimList);
                }

                if (tipo == "documentCedula")
                {
                    var conec = new ClaimConnection();
                    var claimList = conec.GetClaimDocumentCedula(id);
                    return Ok(claimList);
                }

                return StatusCode(404);
            }
            catch (DatabaseException)
            {
                return StatusCode(500);
            }
            catch (GeneralException)
            {
                return StatusCode(500);
            }
        }
        // Post api/Claim/

        [HttpPost]
        public ActionResult<string> Post([FromBody] ClaimSecundary ClaimAux)
        {
            try
            {
                var conec = new ClaimConnection();
                var claim = new Claim(ClaimAux.title, ClaimAux.description, ClaimAux.status);
                conec.AddClaim(claim);
                return Ok("Agregado correctamente");
            }
            catch (DatabaseException)
            {
                return StatusCode(500);
            }
            catch (GeneralException)
            {
                return StatusCode(500);
            }
        }

        // DELETE api/Claim/5
        [HttpDelete("{id}")]
        public ActionResult<string> Delete(int id)
        {
            try
            {
                var conec = new ClaimConnection();
                conec.DeleteClaim(id);
                return Ok("Eliminado exitosamente");
            }
            catch (DatabaseException)
            {
                return StatusCode(500);
            }
            catch (GeneralException)
            {
                return StatusCode(500);
            }
        }

        //api/Clain/status/5
        [HttpPut("{id}")]
        public ActionResult<string> Put(int id, [FromBody] ClaimSecundary ClaimAux)
        {
            try
            {
                var conec = new ClaimConnection();
                var claim = new Claim(ClaimAux.title, ClaimAux.description, ClaimAux.status);
                Console.WriteLine("estoy aqui");
                if (ClaimAux.status != null)
                    conec.ModifyClaimStatus(id, claim);
                else if (ClaimAux.title != null && ClaimAux.description != null)
                    conec.ModifyClaimTitle(id, claim);
                return Ok("Modificado exitosamente");
            }
            catch (DatabaseException)
            {
                return StatusCode(500);
            }
            catch (GeneralException)
            {
                return StatusCode(500);
            }
        }
    }

    public class ClaimSecundary
    {
        public string description;
        public string status;
        public string title;

        public string getStatus()
        {
            return status;
        }
    }
}