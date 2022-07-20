/*
 * UserBean.java
 *
 * Created on December 29, 2009, 5:55 PM
 *
 * To change this template, choose Tools | Template Manager
 * and open the template in the editor.
 */

package Jewellery;

/**
 *
 * @author uniq
 */
public class UserBean {
    
    /** Creates a new instance of UserBean */
    private String  user_name="";
    private String  password="";
    private String  role="";
    
        
    public UserBean() {
    }

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }
    
}
