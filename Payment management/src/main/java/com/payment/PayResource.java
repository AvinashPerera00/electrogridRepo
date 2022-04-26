package com.payment;

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

@Path("/payments")

public class PayResource {
	

	@GET
	@Path("/")
	@Produces(MediaType.APPLICATION_JSON)
	public ArrayList<Payment> payinsert(String userName) {
		return (ArrayList<Payment>) payDBUtil.payinsert(userName);

	}

	@POST
	@Path("/")
	@Consumes(MediaType.APPLICATION_FORM_URLENCODED)
	@Produces(MediaType.TEXT_PLAIN)
	public boolean insertadmin(@FormParam("name") String name, @FormParam("email") String email,
			@FormParam("phone") String phone, @FormParam("username") String username,
			@FormParam("password") String password) {
		boolean output = payDBUtil.payinsert(name, email, phone, username, password);
		return output;
	}
	
	
	
	@PUT
	@Path("/") 
	@Consumes(MediaType.APPLICATION_JSON) 
	@Produces(MediaType.TEXT_PLAIN) 
	public boolean updatecustomer(String payData) 
	{ 
	//Convert the input string to a JSON object 
	 JsonObject updatecustomer = new JsonParser().parse(payData).getAsJsonObject(); 
	 
	//Read the values from the JSON object
	 String pid= updatecustomer.get("id").getAsString(); 
	 String name = updatecustomer.get("name").getAsString(); 
	 String  address= updatecustomer.get("email").getAsString(); 
	 String unitsconsumed = updatecustomer.get("phone").getAsString(); 
	 String billamount = updatecustomer.get("username").getAsString();
	 String status = updatecustomer.get("password").getAsString(); 
	 
	 boolean output = payDBUtil.updatecustomer(pid, name, address, unitsconsumed, billamount,status); 
	return output; 
	}


	@DELETE
	@Path("/") 
	@Consumes(MediaType.APPLICATION_XML) 
	@Produces(MediaType.TEXT_PLAIN) 
	public boolean deletePayment(String payData) 
	{ 
	//Convert the input string to an XML document
	 Document doc = Jsoup.parse(payData, "", Parser.xmlParser()); 
	 
	//Read the value from the element <id>
	 String id = doc.select("id").text(); 
	 boolean output = payDBUtil.deletePayment(id); 
	return output; 
	}


	

}
