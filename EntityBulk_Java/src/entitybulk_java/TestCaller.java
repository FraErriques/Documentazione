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
        EntityBulk_SpecificRecordLayout sr = new EntityBulk_SpecificRecordLayout();
        EntityBulk_SpecificRecordLayout.SpecificRecordLayout sr_1 = sr.new SpecificRecordLayout();// NB. inner class
        EntityBulk_SpecificRecordLayout.SpecificRecordLayout sr_2 = // NB. inner class
                sr.new SpecificRecordLayout(1,"mario","123");
        EntityBulk_SpecificRecordLayout.SpecificRecordLayout sr_3 = // NB. inner class
                sr.new SpecificRecordLayout(2,"gino","345");        
        try
        {
            sr.push_back( sr_1);
            sr.push_back( sr_2);
            sr.push_back( sr_3);
            for( int c=4; c<=100; c++)
            {
                EntityBulk_SpecificRecordLayout.SpecificRecordLayout tmpToBePushedBack =
                        sr.new SpecificRecordLayout();// NB. inner class
                sr.push_back( tmpToBePushedBack);
            }// fill up to #100.            
        }
        catch( Exception ex)
        {// something wrong while pushing-back
            System.out.println( ex.getMessage() );
        }
        
//        EntityBulk_Java<MyTypedef> eb = new EntityBulk_Java<MyTypedef>( vec);
//        EntityBulk_Java<MyTypedef>.iterator it = eb.begin();
    }// main    
}
