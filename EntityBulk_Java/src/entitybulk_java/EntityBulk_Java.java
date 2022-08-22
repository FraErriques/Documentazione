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
    // data
    private RecordLayout[] theVec;
    int capacity;
    int lastUsedIndex;
    
    
    public EntityBulk_Java()
    {
        this.capacity = 0;
        this.lastUsedIndex = -1;// init to one before first cell, which is [0]
    }// Ctor
    
    public EntityBulk_Java( RecordLayout par)// single element
    {
        this.capacity = +1;
        this.lastUsedIndex = 0;// init to first cell.
        // this.theVec = new RecordLayout[]{par};  NO  error: generic array creation
    }// Ctor    
    
    public EntityBulk_Java( RecordLayout parS[])// multiple elementS
    {
        this.capacity = parS.length;
        this.lastUsedIndex = parS.length-1;// init to one before last cell.
        //this.theVec = new RecordLayout[]{parS};  NO  error: generic array creation
    }// Ctor        
    
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

    
}// class container
