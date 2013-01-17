/**
 * 
 */
package com.day.cq5.myapp;

import com.day.cq.wcm.api.Page;

/**
 * @author A.Shashi.Chaurasia
 * 
 */
public class HelloPerson {

	private Page personPage;
	public static final String PN_PERSON_NAME = "personName";

	public HelloPerson(Page personPage) {
		this.personPage = personPage;
	}
	
	public String getHelloMessage() {
		String personName = "";
		if(personPage.getProperties().get(PN_PERSON_NAME) != null){
			personName = personPage.getProperties().get(PN_PERSON_NAME)
			.toString();	
		}else{
			personName ="--empty--";
		}
		return personName;
	}
}