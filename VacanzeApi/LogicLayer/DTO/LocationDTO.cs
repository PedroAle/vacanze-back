namespace vacanze_back.VacanzeApi.LogicLayer.DTO
{
    public class LocationDTO
    {
        public LocationDTO()
        {
        }

        public LocationDTO(int id, string country, string city)
        {
            Id = id;
            Country = country;
            City = city;
        }

        public LocationDTO(string country, string city)
        {
            Id = 0;
            Country = country;
            City = city;
        }

        public int Id { get; set; }
        public string Country { get; set; }
        public string City { get; set; }
    }
}