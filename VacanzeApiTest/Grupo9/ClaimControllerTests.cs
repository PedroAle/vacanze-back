using System.Collections.Generic;
using System.Linq;
using Microsoft.AspNetCore.Mvc;
using NUnit.Framework;
using vacanze_back.VacanzeApi.Common.Entities.Grupo9;
using vacanze_back.VacanzeApi.LogicLayer.DTO.Grupo9;
using vacanze_back.VacanzeApi.LogicLayer.Mapper;
using vacanze_back.VacanzeApi.LogicLayer.Mapper.Grupo9;
using vacanze_back.VacanzeApi.Persistence.DAO.Grupo9;
using vacanze_back.VacanzeApi.Services.Controllers.Grupo9;

namespace vacanze_back.VacanzeApiTest.Grupo9
{
    [TestFixture]
    public class ClaimControllerTest
    {
        private ClaimController _claimController;
        private ClaimDto _claimDto;
        private ClaimMapper _claimMapper;
        private List<int> _insertedClaims;
        private PostgresClaimDao _postgresClaimDao;
        
        [SetUp]
        public void Setup()
        {
            _postgresClaimDao = new PostgresClaimDao();
            _claimController = new ClaimController(null);
            _insertedClaims = new List<int>();
            var claim = ClaimBuilder.Create()
                .WithStatus("ABIERTO")
                .WithDescription("Bolso negro extraviado en el areopuerto de maiquetia")
                .WithTitle("Bolso extraviado")
                .WithBagagge(6)
                .Build();

            _claimMapper = MapperFactory.CreateClaimMapper();
            _claimDto = _claimMapper.CreateDTO(claim);
        }

        [TearDown]
        public void TearDown()
        {
            foreach (var claimId in _insertedClaims) _postgresClaimDao.Delete(claimId);
            _insertedClaims.Clear();
        }

        [Test]
        public void GetByDocument_InvalidDocumentId_EmptyListReturned()
        {
            var result = _claimController.GetByDocument("-1");
            Assert.AreEqual(0, result.Value.Count());
        }

        [Test]
        public void GetById_InvalidClaimId_NotFoundResultReturned()
        {
            var result = _claimController.GetById(-1);
            Assert.IsInstanceOf<NotFoundResult>(result.Result);
        }

        [Test]
        public void GetById_ValidClaimId_OkResultReturned()
        {
            var savedClaimId = _postgresClaimDao.Add(_claimMapper.CreateEntity(_claimDto));
            _insertedClaims.Add(savedClaimId);
            var result = _claimController.GetById(savedClaimId);
            Assert.IsInstanceOf<OkObjectResult>(result.Result);
        }

        [Test]
        public void GetByStatus_ValidStatusName_OkResultReturned()
        {
            var savedClaimId = _postgresClaimDao.Add(_claimMapper.CreateEntity(_claimDto));
            _insertedClaims.Add(savedClaimId);
            var result = _claimController.GetByStatus("ABIERTO");
            Assert.IsInstanceOf<OkObjectResult>(result.Result);
        }


        [Test]
        public void Post_ClaimWithNoExistingBaggage_BadRequestReturned()
        {
            _claimDto.BaggageId = -10;
            var result = _claimController.Post(_claimDto);
            Assert.IsInstanceOf<BadRequestObjectResult>(result.Result);
        }

        [Test]
        public void Post_ClaimWithNoValidStatus_BadRequestReturned()
        {
            _claimDto.Status = "NOTVALIDSTATUS";
            var result = _claimController.Post(_claimDto);
            Assert.IsInstanceOf<BadRequestObjectResult>(result.Result);
        }

        [Test]
        public void Post_ClaimWithVeryLongTitle_BadRequestReturned()
        {
            _claimDto.Title = "abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz";
            var result = _claimController.Post(_claimDto);
            Assert.IsInstanceOf<BadRequestObjectResult>(result.Result);
        }

        [Test]
        public void Post_ClaimWithBaggageIdEqualsToZero_BadRequestReturned()
        {
            _claimDto.BaggageId = 0;
            var result = _claimController.Post(_claimDto);
            Assert.IsInstanceOf<BadRequestObjectResult>(result.Result);
        }

        [Test]
        public void Post_ClaimWithNullTitle_BadRequestReturned()
        {
            _claimDto.Title = null;
            var result = _claimController.Post(_claimDto);
            Assert.IsInstanceOf<BadRequestObjectResult>(result.Result);
        }

        [Test]
        public void Post_ClaimWithNullDescription_BadRequestReturned()
        {
            _claimDto.Description = null;
            var result = _claimController.Post(_claimDto);
            Assert.IsInstanceOf<BadRequestObjectResult>(result.Result);
        }


        [Test]
        public void Put_Claim_OkResultReturned()
        {
            var savedClaimId = _postgresClaimDao.Add(_claimMapper.CreateEntity(_claimDto));
            _insertedClaims.Add(savedClaimId);
            _claimDto.Description = "updated";
            var result = _claimController.Put(savedClaimId,_claimDto);
            Assert.IsInstanceOf<OkObjectResult>(result.Result);
        }

        
    }
}