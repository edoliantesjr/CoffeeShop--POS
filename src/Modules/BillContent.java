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
public class BillContent {
    private String bill_id;
    private String prod_id;
    private String prod_name;
    private Double prod_price;
    private String type;
    private int quantity;
    
    public BillContent(String bill_id,String prod_id, String prod_name,int quantity,Double prod_price,String type){
        this.bill_id=bill_id;
        this.prod_id=prod_id;
        this.prod_name=prod_name;
        this.quantity=quantity;
        this.prod_price=prod_price;
        this.type=type;
    }
    
    public String getBillId(){
        return bill_id;
    }
    public String getProdId(){
        return prod_id;
    }
    public String getProdName(){
        return prod_name;
    }
    public int getQuantity(){
        return quantity;
    }
    public Double getProdPrice(){
        return prod_price;
    }
    public String getType(){
        return type;
    }
}
