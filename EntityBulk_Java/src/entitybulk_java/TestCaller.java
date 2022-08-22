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
            public int i;
            public MyTypedef()// Ctor
            {}// Ctor
        }// class
        
        MyTypedef[] vec = new MyTypedef[2];
        vec[0] = new MyTypedef();
        vec[0].i = 1;
        vec[1] = new MyTypedef();
        vec[1].i = 2;
        
        EntityBulk_Java<MyTypedef> eb = new EntityBulk_Java<MyTypedef>( vec);
        EntityBulk_Java<MyTypedef>.iterator it = eb.begin();
    }// main    
}
