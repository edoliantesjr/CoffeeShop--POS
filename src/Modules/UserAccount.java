/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modules;

/**
 *
 * @author JhunR
 */
public class UserAccount {
    private int id;
    private String emp_id;
    private String full_name;
    private String username;
    private String password;
    private byte [] photo;
    
    public UserAccount(int id,String emp_id,String full_name,String username,String password,byte [] photo){
        this.id=id;
        this.emp_id=emp_id;
        this.full_name=full_name;
        this.username=username;
        this.password=password;
        this.photo=photo;
    }
    
    public int getId(){
        return id;
    }
    
    public String getEmpId(){
        return emp_id;
    }
    
    public String getFullName(){
        return full_name;
    }
    
    public String getUsername(){
        return username;
    }
    
    public String getPassword(){
        return password;
    }
    
    public byte[] getPhoto(){
        return photo;
    }
    
    
}
