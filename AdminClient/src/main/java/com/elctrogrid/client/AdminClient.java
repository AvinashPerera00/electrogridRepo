package com.elctrogrid.client;

import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.client.Entity;
import javax.ws.rs.client.WebTarget;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import org.glassfish.jersey.client.ClientConfig;

import com.elctrogrid.client.Admin;

public class AdminClient {
	private static String baseURI = "http://localhost:8080/Electrogrid/AdminResource/admins";
	public static void main(String[] args) {
		
		

	}
	static void testDelete() {
		WebTarget target = getWebTarget();
		String adminId = "1";
		
		Response response = target.path(adminId)
								.request()
								.delete(Response.class);
		
		System.out.println(response);
	}
	
	static void testUpdate() {
		WebTarget target = getWebTarget();
		String adminId = "1";
		Admin admin = new Admin(0,"kamal","kamal@gmail.com","0776655454","kamal","kamal@1");
		Response response = target.path(adminId)
				.request()
				.put(Entity.entity(admin, MediaType.APPLICATION_JSON),
				Response.class);
		
		
		System.out.println(response);
		
	}
	
	static void testAdd() {
		WebTarget target = getWebTarget();
		Admin admin = new Admin(0,"kasun","kasun@gmail.com","0776658754","kasun","kasun@1");
		Response response = target.request().post(
				Entity.entity(admin, MediaType.APPLICATION_JSON),
				Response.class);
		
		
		System.out.println(response.getLocation().toString());
		
	}
	
	
	static void testGet() {
		WebTarget target = getWebTarget();
		String adminId = "2";
		Admin admin = target.path(adminId)
				.request()
				.accept(MediaType.APPLICATION_JSON)
				.get(Admin.class);
		
		System.out.println(admin);
	}
	
	static void testList() {
		WebTarget target = getWebTarget();
		String response = target.request().accept(MediaType.APPLICATION_JSON).get(String.class);

		System.out.println(response);
		
	} 
	
	
	static WebTarget getWebTarget() {
		ClientConfig config = new ClientConfig();
		Client client = ClientBuilder.newClient(config);
		
		return client.target(baseURI);

		
	}


}
