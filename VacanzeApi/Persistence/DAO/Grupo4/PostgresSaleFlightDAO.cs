﻿using System;
using System.Collections.Generic;
using System.Data;
using vacanze_back.VacanzeApi.Common.Entities.Grupo4;
using vacanze_back.VacanzeApi.Common.Exceptions;
using vacanze_back.VacanzeApi.Common.Exceptions.Grupo4;

namespace vacanze_back.VacanzeApi.Persistence.DAO.Grupo4
{
    public class PostgresSaleFlightDAO: ISaleFlightDAO
    {
        private const string SP_SELECTFLIGHT = "GetAvailableFlight(@_origin, @_destination,@_dateArrival, @_dateDeparture)";

        private const string SP_POSTFLIGHTSALE = "PostSaleFlight(@_seatnum, @_num_ps,@_user, @_pay,@__fli)";

        public List<SaleFlight> GetSaleFlight(int origin, int destination, DateTime dateArrival,DateTime dateDeparute)
        {
            var resultTable = PgConnection.Instance.ExecuteFunction(SP_SELECTFLIGHT,origin,destination,dateArrival,dateDeparute);
            if (resultTable.Rows.Count == 0)
                throw new FlightNotFoundException();

            return RowToSaleFlightList(resultTable);
        }

        public List<SaleFlight> RowToSaleFlightList(DataTable dt)
        {
            var _oResp = new List<SaleFlight>();

            for (var i = 0; i < dt.Rows.Count; i++)
            {
                var hotel = RowToSaleFlight(dt.Rows[i]);
                _oResp.Add(hotel);
            }

            return _oResp;
        }

        public SaleFlight RowToSaleFlight(DataRow row)
        {

            try
            {
                var _oResp = new SaleFlight();

                _oResp.id = Convert.ToInt32(row[0]);
                _oResp.ileft = Convert.ToInt32(row[1]);
                _oResp.descrip = Convert.ToString(row[2]);
                _oResp.dateArrival = Convert.ToDateTime(row[3]);
                _oResp.price = Convert.ToDecimal(row[4]);
                _oResp.origin = Convert.ToString(row[5]);
                _oResp.destination = Convert.ToString(row[6]);

                return _oResp;
            }
            catch (Exception)
            {

                throw new NotValidFieldException("Error en los campos de salida");
            }
           
        }

        public int PostSaleFlight(List<PostSaleFlight> postflight)
        {
            int _ireturn = 0;
            try
            {
                if (postflight.Count > 0)
                {
                    postflight.ForEach(det => {

                        var resultTable = PgConnection.Instance.ExecuteFunction(SP_POSTFLIGHTSALE, det.seat,det.numps,det.user,det.pay,det.fli);
                    });
                    

                }
                else
                {
                    throw new ErrorInSaleFlightException();
                }

            }
            catch (Exception ex)
            {

                throw new ErrorInSaleFlightException();
            }
            return _ireturn;
        }
    }
}
