/*
 * CustomerBean.java
 *
 * Created on December 24, 2009, 6:33 PM
 *
 * To change this template, choose Tools | Template Manager
 * and open the template in the editor.
 */

package Jewellery;

/**
 *
 * @author uniq
 */
public class CustomerBean {
    
    /** Creates a new instance of CustomerBean */
    public CustomerBean() {
    }
    
    private String  customer_name ="";
    private String  password="";
    private String  email="";
    private String  phone="";
    private String  address="";

    public String getCustomer_name() {
        return customer_name;
    }

    public void setCustomer_name(String customer_name) {
        this.customer_name = customer_name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
    
    
}

