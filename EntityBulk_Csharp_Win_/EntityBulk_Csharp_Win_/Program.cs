using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;


namespace EntityBulk_Csharp_Win_
{
}// nmsp   EntityBulk_Csharp_Win_





class Program//-----------test------------
{
    static void Main( string[] args )
    {
        EntityBulk_Csharp_Win_.EntityBulk_SpecificRecord_ eBspecif =
            new EntityBulk_Csharp_Win_.EntityBulk_SpecificRecord_();// with no parameter, it defaults to capacity==100
        int step = +1;
        for (EntityBulk_Csharp_Win_.EntityBulk_SpecificRecord_.iterator it = eBspecif.begin();
             ; //it.isDifferent(eBspecif.end()); better the exit condition in the for::body.
             it.FFWD(eBspecif.vec)
           )
        {
            System.Console.Write("\t" + step++);
            System.Console.Write("\t iterator curIndex=" + it.curIndex);
            //System.Console.WriteLine("\t end() curIndex=" + eBspecif.end().curIndex);
            it.current.internalPrint();
            //
            if( it.isEqual( eBspecif.end() ) )
            {// better this way; the other way around it skips last record.
                break;
            }// else continue.
        }// for
        // ready
        System.Console.Write("\t Strike \"Enter\" to leave\t");
        System.Console.ReadLine();
    }
}//class Program::Main


/*  cantina 
        EntityBulk_Csharp_Win_.EntityBulk_Template_<EntityBulk_Csharp_Win_.someRecordLayout> eBint =
            new EntityBulk_Csharp_Win_.EntityBulk_Template_<EntityBulk_Csharp_Win_.someRecordLayout>(3);
        int step = +1;
        for (EntityBulk_Csharp_Win_.EntityBulk_Template_<EntityBulk_Csharp_Win_.someRecordLayout>.iterator it = eBint.begin();
             it.isDifferent( eBint.end());
             it.FFWD( eBint.vec )
           )
        {
            System.Console.Write("\t" + step++);
            System.Console.Write("\t iterator curIndex=" + it.curIndex);
            System.Console.WriteLine("\t end() curIndex=" + eBint.end().curIndex);
        }// for
*/
