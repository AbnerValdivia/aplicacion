package controllers;

import play.data.validation.Constraints;

public class UserData{

	@Constraints.Required
	    private String nombre;
    @Constraints.Required
   		private String apellidos;
    @Constraints.Required
    	private String username;
    @Constraints.Required
    	private String email;
    @Constraints.Required
    	private String password;
    @Constraints.Required 
    	private String tipo;

    public UserData() {
    }

    public String getNombre() {
        return nombre;
    }
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    
    public String getApellidos() {
        return apellidos;
    }
	public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public String getUsername() {
        return username;
    }
    public void setUsername(String username) {
        this.username = username;
    }
    
    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
	}

    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }

    public String getTipo(){
    	return tipo;
    }
    public void setTipo(String tipo){
    	this.tipo = tipo;
    }
}