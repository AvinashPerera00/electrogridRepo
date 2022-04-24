package com;

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

@Path("/customers")
public class CustomerResource {
		 
		@GET
		@Path("/")
		@Produces(MediaType.TEXT_HTML)
		public String readCustomers() {
			return "Welcome";
		}

		@GET
		@Path("/")
		@Produces(MediaType.APPLICATION_JSON)
		public ArrayList<Customer> getCustomer(String userName) throws SQLException {
			return (ArrayList<Customer>) cusDBUtil.getCustomer(userName);
		}

		@POST
		@Path("/")
		@Consumes(MediaType.APPLICATION_FORM_URLENCODED)
		@Produces(MediaType.TEXT_PLAIN)
		public boolean insertcustomer(@FormParam("name") String name, @FormParam("address") String address,
				@FormParam("phone") String phonenumber, @FormParam("username") String username,
				@FormParam("password") String password) {
			boolean output = cusDBUtil.insertcustomer(name, address, phonenumber, username, password);
			return output;
		}
		
		
		
		@PUT
		@Path("/") 
		@Consumes(MediaType.APPLICATION_JSON) 
		@Produces(MediaType.TEXT_PLAIN) 
		public boolean updatecustomer(String cusData) 
		{ 
		//Convert the input string to a JSON object 
		 JsonObject cusObject = new JsonParser().parse(cusData).getAsJsonObject(); 
		 
		//Read the values from the JSON object
		 String id = cusObject.get("id").getAsString(); 
		 String name = cusObject.get("name").getAsString(); 
		 String address = cusObject.get("address").getAsString(); 
		 String phonenumber = cusObject.get("phonenumber").getAsString(); 
		 String username = cusObject.get("username").getAsString();
		 String password = cusObject.get("password").getAsString(); 
		 
		 boolean output = cusDBUtil.updatecustomer(id, name, address, phonenumber, username,password); 
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
		 boolean output = cusDBUtil.deleteCustomer(id); 
		return output; 
		}


		
	
}
