using vacanze_back.VacanzeApi.Common.Entities;
using vacanze_back.VacanzeApi.Common.Entities.Grupo3;
using  vacanze_back.VacanzeApi.LogicLayer.DTO.Grupo3;
using System.Collections.Generic;
using vacanze_back.VacanzeApi.Common.Entities.Grupo2;
using vacanze_back.VacanzeApi.LogicLayer.DTO.Grupo2;
using vacanze_back.VacanzeApi.LogicLayer.DTO.Grupo14;
using  vacanze_back.VacanzeApi.LogicLayer.DTO.Grupo5;
using  vacanze_back.VacanzeApi.LogicLayer.DTO.Grupo6;
using  vacanze_back.VacanzeApi.LogicLayer.DTO.Grupo12;

namespace vacanze_back.VacanzeApi.LogicLayer.DTO{

    public class DTOFactory{


        public static FlightDTO CreateFlightDTO(Airplane plane, double price, string departure, string arrival,
         Location loc_departure, Location loc_arrival){
            return new FlightDTO(plane,price,departure,arrival,loc_departure,loc_arrival);
        }

        public static VehicleDTO CreateVehicleDTO(int Id, int _vehicleModelId, int _vehicleLocationId, 
            string _license, double _price, bool _status)
        {
            return new VehicleDTO(Id, _vehicleModelId, _vehicleLocationId, _license, _price, _status);
        }

        public static BrandDTO CreateBrandDTO(int id, string brandName)
        {
            return new BrandDTO(id, brandName);
        }

        public static ModelDTO CreateModelDTO(int id, int brandId, string modelName, int capacity, 
            string picture)
        {
            return new ModelDTO(id, brandId, modelName, capacity, picture);
        }

        // +++++++++++++++++
        //     GRUPO 6
        // +++++++++++++++++
        public static HotelDTO CreateHotelDTO(int id , string name , int amountOfRooms, int roomCapacity ,
        bool isActive, string addressSpecs, decimal pricePerRoom, string website , string phone ,
        string picture, int stars , int locationId)
        {
            return new HotelDTO(id, name, amountOfRooms, roomCapacity , isActive, addressSpecs, pricePerRoom,
                                website, phone, picture, stars, locationId );
        }

        public static LocationDTO CreateLocationDTO(int id, string country, string city){
            return new LocationDTO(id, country, city);
        }

        public static UserDTO CreateUserDTO(int Id, long DocumentId, string Name, string Lastname, string Email, string Password, List<Role> Roles)
        {
            return new UserDTO(Id, DocumentId, Name, Lastname, Email, Password, Roles);
        }

        public static RoleDTO CreateRoleDTO(int id, string name)
        {
            return new RoleDTO(id, name);
        }

        public static FlightResDTO CreateFlightResDTO(int id,int price,string timestamp,string seatNum,
         string name_cityI,string name_countryI, string namecityV,string namecountryV,int numPas, int id_user){
            return new FlightResDTO(  id, price, timestamp, seatNum, name_cityI, name_countryI, namecityV,
            namecountryV, numPas, id_user);

        }
        // +++++++++++++++++
        //     GRUPO 14
        // +++++++++++++++++
        public static ResRestaurantDTO CreateResRestaurantDTO(int id, string locationName, string pais, string restName,
         string address, string fecha_reservacion, int cant_person)
        {

            return new ResRestaurantDTO( id,  locationName,  pais,  restName,
          address,  fecha_reservacion,  cant_person);
        }
    }

}