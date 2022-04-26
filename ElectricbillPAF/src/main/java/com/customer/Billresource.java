package com.customer;

import java.sql.SQLException;
import java.util.ArrayList;

//For REST Service
import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;


//For JSON
import com.google.gson.*; 
//For XML
import org.jsoup.*; 
import org.jsoup.parser.*; 
import org.jsoup.nodes.Document; 

@Path("/bills")

public class Billresource {
	

	
	@GET
	@Path("/")
	@Produces(MediaType.APPLICATION_JSON)
	public ArrayList<Customer> selectAllCustomer()  {
		return (ArrayList<Customer>) CustomerDBUtil.selectAllCustomer();

	}

	
	
	
	@PUT
	@Path("/") 
	@Consumes(MediaType.APPLICATION_JSON) 
	@Produces(MediaType.TEXT_PLAIN) 
	public boolean updatecustomer(String cusData) 
	{ 
	//Convert the input string to a JSON object 
	 JsonObject customerObject = new JsonParser().parse(cusData).getAsJsonObject(); 
	 
	//Read the values from the JSON object
	 String id = customerObject.get("id").getAsString(); 
	 String name = customerObject.get("name").getAsString(); 
	 String address = customerObject.get("address").getAsString(); 
	 String unitsconsumed = customerObject.get("unitsconsumed").getAsString(); 
	 String billamount = customerObject.get("billamount").getAsString();
	 String date = customerObject.get("date").getAsString(); 
	 
	 boolean output = CustomerDBUtil.updatecustomer(id, name, address, unitsconsumed, billamount,date); 
	return output; 
	}


	@DELETE
	@Path("/") 
	@Consumes(MediaType.APPLICATION_XML) 
	@Produces(MediaType.TEXT_PLAIN) 
	public boolean deleteCustomer(String cusData) 
	{ 
	//Convert the input string to an XML document
	 Document doc = Jsoup.parse(cusData, "", Parser.xmlParser()); 
	 
	//Read the value from the element <id>
	 String id = doc.select("id").text(); 
	 boolean output = CustomerDBUtil.deleteCustomer(id); 
	return output; 
	}



}
