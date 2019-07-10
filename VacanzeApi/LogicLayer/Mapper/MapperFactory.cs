using vacanze_back.VacanzeApi.LogicLayer.Mapper.Grupo2;
using vacanze_back.VacanzeApi.LogicLayer.Mapper.Grupo5;
using vacanze_back.VacanzeApi.LogicLayer.Mapper.Grupo6;
using vacanze_back.VacanzeApi.LogicLayer.Mapper.Grupo7;
using vacanze_back.VacanzeApi.LogicLayer.Mapper.Grupo12;

namespace vacanze_back.VacanzeApi.LogicLayer.Mapper
{

    public class MapperFactory{

        public static VehicleMapper CreateVehicleMapper(){
            return new VehicleMapper();
        }
        
        public static BrandMapper CreateBrandMapper(){
            return new BrandMapper();
        }

        public static ModelMapper CreateModelMapper(){
            return new ModelMapper();
        }

        public static RestaurantMapper CreateRestaurantMapper()
        {
            return new RestaurantMapper();
        }

        public static HotelMapper createHotelMapper(){
            return new HotelMapper();
        }

        public static LocationMapper createLocationMapper(){
            return new LocationMapper();
        }

        public static UserMapper createUserMapper()
        {
            return new UserMapper();
        }

        public static RoleMapper createRoleMapper()
        {
            return new RoleMapper();
        }

        public static ReservationFlightMapper CreateReservationFlightMapper(){
            return new ReservationFlightMapper();

        }
    }
}