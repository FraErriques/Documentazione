using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;


namespace EntityBulk_Csharp_Win_
{

    public class EntityBulk<RecordLayout>
    {
        public class iterator
        {
            private RecordLayout first;
            private RecordLayout one_after_last;
            private RecordLayout current;
            //
            public iterator()// Ctor
            {
            }// Ctor
            //public static RecordLayout operator*(iterator fakeInstance, int otherFake)
            //{/* NB. this is why in C# we cannot deference an iterator with an operator overload:
            //  * Error	1	An object reference is required for the non-static field, method, 
            //  * or property 'EntityBulk_Csharp_Win_.EntityBulk<RecordLayout>.iterator.current'	
            //  */
            //    return current;
            //}
            public RecordLayout iteratorDeference()
            {/* NB. this is why in C# we cannot deference an iterator with an operator overload:
              * Error	1	An object reference is required for the non-static field, method, 
              * or property 'EntityBulk_Csharp_Win_.EntityBulk<RecordLayout>.iterator.current'	
              */
                return this.current;
            }// iteratorDeference(
        }//  class iterator

        private RecordLayout[] vec;
        public EntityBulk( int capacity=100)  // 
        {
            this.vec = new RecordLayout[capacity];
        }// Ctor
    }//  class EntityBulk<RecordLayout>



    class Program
    {
        static void Main( string[] args )
        {
        }
    }//class Program::Main

}// nmsp
