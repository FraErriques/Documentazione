/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entitybulk_java;

/**
 *
 * @author itfraerr
 */
public class EntityBulk_SpecificRecordLayout
{
    // data
    private SpecificRecordLayout[] theVec;
    int capacity;
    int lastUsedIndex;
    public class iterator
    {
        public iterator()
        {// empty Ctor, used by begin(), etc.
        }// Ctor        
    }//  class iterator
    public class SpecificRecordLayout
    {
        int id;// db row pk-id
        String name;
        String cellPhone;
        //
        public SpecificRecordLayout()// empty Ctor for arrays
        {
            this.id = -1;// init to invalid
            this.name = "fake";
            this.cellPhone = "fake";
        }// Ctor
        public SpecificRecordLayout(// Ctor        
                int id,
                String name,
                String cellPhone
        )
        {
            this.id = id;
            this.name = name;
            this.cellPhone = cellPhone;
        }// Ctor        
        public void internalPrint()
        {
            System.out.println("{ "+this.id+" , "+this.name+" , "+this.cellPhone+" }");
        }        
    }// class SpecificRecordLayout
    
    
    public EntityBulk_SpecificRecordLayout()
    {
        this.capacity = 2;
        this.lastUsedIndex = -1;// init to one before first cell, which is [0]
        this.theVec = new SpecificRecordLayout[capacity];
    }// Ctor

    public void internalPrint()
    {
        System.out.println("\n\t---------INTERNAL PRINT-----START-----");
        System.out.println("\n\t--------- this.capacity=="+this.capacity);
        System.out.println("\n\t--------- this.lastUsedIndex=="+this.lastUsedIndex);
        for( int c=0; c<=this.lastUsedIndex; c++)
        {
            System.out.print(" this.theVec["+c+"]== ");
            this.theVec[c].internalPrint();
        }
        System.out.println("\n\t---------INTERNAL PRINT------END----");
    }// Ctor    

    public EntityBulk_SpecificRecordLayout( SpecificRecordLayout parS[])// multiple elementS
    {
        this.capacity = parS.length;
        this.lastUsedIndex = parS.length-1;// init to one before last cell.
        this.theVec = new SpecificRecordLayout[this.capacity];
        for( int c=0; c<capacity; c++)
        {
            this.theVec[c] = parS[c];
        }
    }// Ctor        
    
    boolean push_back( SpecificRecordLayout par) throws Exception
    {
        boolean res = false;
        if( lastUsedIndex < capacity-1)
        {// ordinary love
            System.out.println("// ordinary love");
            this.theVec[++lastUsedIndex] = par;// lastUsedIndex updated.
            res = true;
            internalPrint();
        }
        else if( lastUsedIndex == capacity-1)
        {//NO ordinary love :  std::move
            System.out.println("// NO ordinary love");
            SpecificRecordLayout tmp[] = new SpecificRecordLayout[++capacity];
            for( int c=0; c<capacity-1; c++)
            {
                tmp[c] = this.theVec[c];// copy pre-existing elements
            }
            tmp[capacity-1] = par;// incremental element
            this.lastUsedIndex = capacity-1;// update
            this.theVec = tmp; // std::move
            tmp = null;// garbage collect
            res = true;
            internalPrint();
        }
        else if( lastUsedIndex > capacity-1)
        {
            res = false;
            internalPrint();
            throw new Exception();
        }
        // ready.
        return res;
    }// push_back

    
    public iterator begin()
    {
        EntityBulk_SpecificRecordLayout.iterator it = new EntityBulk_SpecificRecordLayout.iterator();
        return it;// will be garbage collected when its reference counter remains enough time on null.
    }// begin()

    
}// class EntityBulk_SpecificRecordLayout
