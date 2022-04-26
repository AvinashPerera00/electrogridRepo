package com.units;


//For REST Service
import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;


 

@Path("/bills")

public class Unitresource {
	


@POST
@Path("/")
@Consumes(MediaType.APPLICATION_FORM_URLENCODED)
@Produces(MediaType.TEXT_PLAIN)
public boolean insertunits(@FormParam("name") String name, @FormParam("date") String date,
		@FormParam("time") String time, @FormParam("unitamount") String unitamount,
		@FormParam("period") String period,@FormParam("area") String area) {
	boolean output = UnitsDBUtil.insertunits(name, date, time, unitamount, period,area);
	return output;
}

}
