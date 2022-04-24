package com.elctrogrid;



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

@Path("/admins")
public class AdminResource {
	 

	@GET
	@Path("/")
	@Produces(MediaType.TEXT_HTML)
	public String readAdmins() {
		return "Welcome";
	}

	@GET
	@Path("/")
	@Produces(MediaType.APPLICATION_JSON)
	public ArrayList<Admin> getAdmin(String userName) throws SQLException {
		return (ArrayList<Admin>) AdminDBUtil.getAdmin(userName);

	}

	@POST
	@Path("/")
	@Consumes(MediaType.APPLICATION_FORM_URLENCODED)
	@Produces(MediaType.TEXT_PLAIN)
	public boolean insertadmin(@FormParam("name") String name, @FormParam("email") String email,
			@FormParam("phone") String phone, @FormParam("username") String username,
			@FormParam("password") String password) {
		boolean output = AdminDBUtil.insertadmin(name, email, phone, username, password);
		return output;
	}
	
	
	
	@PUT
	@Path("/") 
	@Consumes(MediaType.APPLICATION_JSON) 
	@Produces(MediaType.TEXT_PLAIN) 
	public boolean updateadmin(String adminData) 
	{ 
	//Convert the input string to a JSON object 
	 JsonObject adminObject = new JsonParser().parse(adminData).getAsJsonObject(); 
	 
	//Read the values from the JSON object
	 String id = adminObject.get("id").getAsString(); 
	 String name = adminObject.get("name").getAsString(); 
	 String email = adminObject.get("email").getAsString(); 
	 String phone = adminObject.get("phone").getAsString(); 
	 String username = adminObject.get("username").getAsString();
	 String password = adminObject.get("password").getAsString(); 
	 
	 boolean output = AdminDBUtil.updateadmin(id, name, email, phone, username,password); 
	return output; 
	}


	@DELETE
	@Path("/") 
	@Consumes(MediaType.APPLICATION_XML) 
	@Produces(MediaType.TEXT_PLAIN) 
	public boolean deleteAdmin(String adminData) 
	{ 
	//Convert the input string to an XML document
	 Document doc = Jsoup.parse(adminData, "", Parser.xmlParser()); 
	 
	//Read the value from the element <id>
	 String id = doc.select("id").text(); 
	 boolean output = AdminDBUtil.deleteAdmin(id); 
	return output; 
	}


	
}
