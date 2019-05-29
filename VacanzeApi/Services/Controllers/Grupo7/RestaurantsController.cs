using System.Collections.Generic;
using Microsoft.AspNetCore.Cors;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using Newtonsoft.Json;
using vacanze_back.VacanzeApi.Common.Entities.Grupo7;
using vacanze_back.VacanzeApi.Common.Exceptions;
using vacanze_back.VacanzeApi.Persistence.Repository.Grupo7;

namespace vacanze_back.VacanzeApi.Services.Controllers.Grupo7
{
    [Produces("application/json")]
    [Route("api/[controller]")]
    [EnableCors("MyPolicy")]
    [ApiController]
    public class RestaurantsController : ControllerBase
    {

        // GET api/restaurants/[?location={location_id}]
        [HttpGet]
        public ActionResult<IEnumerable<Restaurant>> Get([FromQuery] long location = -1)
        {
            try
            {
                if (location == -1)
                    return RestaurantRepository.GetRestaurants();
                return Ok($"No implementado todavia. Recibi location: {location}");
            }
            catch (DatabaseException e)
            {
                // TODO: No se deberia mandar un Ok cuando falla la base de datos, se deberia mandar
                //       un error 500 o algo
                return Ok(e.Message);
            }
        }

        // GET/Restaurant/{id}
        [HttpGet("{id}")]
        public IActionResult GetRestaurant(int id)
        {
            try
            {
                 Restaurant restaurant=  RestaurantRepository.GetRestaurant(id);
                 return Ok(JsonConvert.SerializeObject(restaurant));
            }
            catch (IndexOutOfRangeException)
            {
                return StatusCode(500,"El Restaurant no fue encontrado");
            }
        }

        [HttpPost]
        [ProducesResponseType(StatusCodes.Status201Created)]
        [ProducesResponseType(StatusCodes.Status400BadRequest)]
        public ActionResult<Restaurant> Create([FromBody] Restaurant restaurant)
        {
            var receivedId = RestaurantRepository.AddRestaurant(restaurant);
            var savedrestaurant = new Restaurant(receivedId, restaurant.Name, restaurant.Capacity, restaurant.IsActive,
                                                 restaurant.Qualify, restaurant.Specialty, restaurant.Price, restaurant.BusinessName, 
                                                 restaurant.Picture, restaurant.Description, restaurant.Phone,
                                                 restaurant.Location,
                                                 restaurant.Address);
            return CreatedAtAction("Get", "restaurants", savedrestaurant); 
        }

        [HttpPut]
        public void Put([FromBody] Restaurant restaurant)
        {
            var receivedId = RestaurantRepository.PutRestaurant(restaurant);
        }

        [HttpDelete("{id}")]
        public ActionResult<int> DeleteRestaurant(int id)
        {
            var deletedid = RestaurantRepository.DeleteRestaurant(id);
            if (deletedid.Equals(-1))
            {
                return StatusCode(500, "El restaurante no existe");
            }
            return StatusCode(200, "Eliminado satisfactoriamente");
        }

    }
}