/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entitybulk_java;

/**
 *
 * @author fra
 */
public class TestCaller 
{

    public static void main(String[] args) 
    {
        class MyTypedef
        {
            int i;
        }        
        
        EntityBulk_Java<MyTypedef> eb = new EntityBulk_Java<MyTypedef>();
        EntityBulk_Java<MyTypedef>.iterator it = eb.begin();
    }// main    
}
