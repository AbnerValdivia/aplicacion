package models;

public class User{
    public String nombre;
    public String apellidos;
    public String email;
    public String username;
    public String password;
    public String tipo;
    
    public User(String nombre, String apellidos, String username, String email, String password, String tipo) {
      this.nombre = nombre;
      this.apellidos = apellidos;
      this.email = email;
      this.username = username;
      this.password = password;
      this.tipo = tipo;
    }
}