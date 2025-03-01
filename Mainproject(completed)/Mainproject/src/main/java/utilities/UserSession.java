/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package utilities;

/**
 *
 * @author hp
 */
public class UserSession {
    
    private static UserSession session;
    
    private int id;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    
    public static synchronized UserSession getInstance()
    {
        if(session== null)
             session = new UserSession();
        return session;
                     
    }
    
}
