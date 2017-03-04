package com.examples.spring.controller.helper;

import com.examples.spring.model.Persona;

public class GreetingHelper {
    
    private Persona persona;
    private String message;
    
    
    public Persona getPersona() {
        return persona;
    }
    public void setPersona(Persona persona) {
        this.persona = persona;
    }
    public String getMessage() {
        return message;
    }
    public void setMessage(String message) {
        this.message = message;
    }
    
    public String saludar (){
        return this.message + " " + this.persona;
    }

}
