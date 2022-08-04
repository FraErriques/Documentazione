/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package entitybulk_java;

/**
 *
 * @author itfraerr
 */
public class EntityBulk_Java<RecordLayout>
{
    
    public class iterator
    {
        public iterator()
        {// empty Ctor, used by begin(), etc.
        }// Ctor
        
    }//  class iterator
    
    public iterator begin()
    {
        EntityBulk_Java<RecordLayout>.iterator it = new EntityBulk_Java<RecordLayout>.iterator();
        return it;// will be garbage collected when its reference counter remains enough on zero.
    }// begin()
    private RecordLayout[] theVec;



    
}// class container
