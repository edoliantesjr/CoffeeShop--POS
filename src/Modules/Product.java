package Modules;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author JhunR
 */
public class Product {
    private  int id;
    private  String prod_id;
    private  String prod_name;
    private  double prod_price;
    private String prod_type;
    
    public Product(int id,String prod_id,String prod_name,double prod_price,String prod_type){
        this.id = id;
        this.prod_id = prod_id;
        this.prod_name = prod_name;
        this.prod_price = prod_price;
        this.prod_type=prod_type;
    }
    
    public int getId(){
        return id;
    }
    
    public String getProdId(){
        return prod_id;
    }
    
    public String getProdName(){
        return prod_name;
    }
    
    public double getProdPrice(){
        return prod_price;
    }
    public String getProdType(){
        return prod_type;
    }
}

