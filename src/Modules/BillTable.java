/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modules;

import java.util.Date;

/**
 *
 * @author JhunR
 */
public class BillTable {
    private String bill_id;
    private int bill_table;
    private double totalAmountDue;
    private Date dateCreated;
    
    public BillTable(String bill_id,int bill_table,double totalAmountDue,Date dateCreated){
        this.bill_id=bill_id;
        this.bill_table=bill_table;
        this.totalAmountDue=totalAmountDue;
        this.dateCreated=dateCreated;
    }
    
    public String getBillId(){
        return bill_id;
    }
    
    public int getTableNo(){
        return bill_table;
    }
    
    public Date getDateCreated(){
        return dateCreated;
    }
    
    public double getTotalAmountDue(){
        return totalAmountDue;
    }
    
}
