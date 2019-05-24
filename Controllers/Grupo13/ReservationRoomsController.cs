﻿using System;
using System.Collections.Generic;
using System.Linq;
using Microsoft.AspNetCore.Mvc;
using vacanze_back.Entities.Grupo13;
using vacanze_back.Entities;
using vacanze_back.Persistence.Grupo13;

namespace vacanze_back.Controllers.Grupo13
{
    [Route("api/[controller]")]
    [ApiController]
    public class ReservationRoomsController : ControllerBase
    {
        // GET api/values
        [HttpGet]
        public ActionResult<IEnumerable<Entity>> Get()
        {
            try
            {
                DAOReservationRoom daoReservationRooms = new DAOReservationRoom();
                List<Entity> result = daoReservationRooms.getRoomReservations();
                return Ok(result.ToList());
            }
            catch (System.Exception)
            {
                return null;
                throw;
            }
        }

        [HttpGet("{id}")]
        public ActionResult<Entity> Find(int id)
        {
            try
            {
                DAOReservationRoom daoReservationRooms = new DAOReservationRoom();
                Entity result = daoReservationRooms.Find(id);
                return Ok(result);
            }
            catch (System.Exception)
            {

                throw;
            }
        }

        // POST api/values //CREAR UN RECURSO
        [HttpPost]
        public void Post([FromBody] string value)
        {
        }

        // PUT api/values/5    //ACTUALIZAR UN RECURSO
        [HttpPut("{id}")]
        public void Put(int id, [FromBody] string value)
        {
        }

        // DELETE api/values/5 //BORRAR
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}
