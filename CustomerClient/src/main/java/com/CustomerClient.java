package com;

import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.client.Entity;
import javax.ws.rs.client.WebTarget;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import org.glassfish.jersey.client.ClientConfig;

public class CustomerClient {
	private static String baseURI = "http://localhost:8080/Electrogrid-pafY3/CustomerResource/customers";
	public static void main(String[] args) {
		testList();
		
		

	}
	static void testDelete() {
		WebTarget target = getWebTarget();
		String cusId = "1";
		
		Response response = target.path(cusId)
								.request()
								.delete(Response.class);
		
		System.out.println(response);
	}
	
	static void testUpdate() {
		WebTarget target = getWebTarget();
		String cusId = "1";
		Customer cus = new Customer(0,"A.Perera","66/6,Gampaha","0776655454","A_perera","A_perera");
		Response response = target.path(cusId)
				.request()
				.put(Entity.entity(cus, MediaType.APPLICATION_JSON),
				Response.class);
		
		
		System.out.println(response);
		
	}
	
	static void testAdd() {
		WebTarget target = getWebTarget();
		Customer cus = new Customer(0,"A.Perera","66/6,Gampaha","0716655554","A_perera","A_perera");
		Response response = target.request().post(
				Entity.entity(cus, MediaType.APPLICATION_JSON),
				Response.class);
		
		
		System.out.println(response.getLocation().toString());
		
	}
	
	
	static void testGet() {
		WebTarget target = getWebTarget();
		String cusId = "2";
		Customer cus = target.path(cusId)
				.request()
				.accept(MediaType.APPLICATION_JSON)
				.get(Customer.class);
		
		System.out.println(cus);
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
