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
            public RecordLayout first;
            public RecordLayout one_after_last;
            public RecordLayout current;
            public int curIndex;
            public int containerCapacity;
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
            //public void operator ++( int fake )//Error: User-defined operator must be declared static and public
            public void FFWD()
            {
                if (this.curIndex < 0
                     || this.curIndex > this.containerCapacity)// where containerCapacity-1 is the last component
                {
                    throw new System.Exception("current index is out of range! DBG needed.");
                }
                this.curIndex++;
            }
            public void BKWD()
            {
                if (this.curIndex < 0
                     || this.curIndex > this.containerCapacity)// where containerCapacity-1 is the last component
                {
                    throw new System.Exception("current index is out of range! DBG needed.");
                }
                this.curIndex--;
            }
            public bool isDifferent( iterator other)
            {
                bool res = false;// init
                if (this.curIndex < 0
                     || this.curIndex >= this.containerCapacity)// where containerCapacity-1 is the last component
                {
                    throw new System.Exception("current index is out of range! DBG needed.");
                }
                if (this.curIndex == other.curIndex
                     && Object.ReferenceEquals( this.current, other.current) // only with reference-types NB!
                    )
                { res = false; }// they are equal.
                else
                { res = true; }// they differ
                //
                return res;
            }// isDifferent
            public bool isEqual( iterator other )
            {
                bool res = false;// init
                if (this.curIndex < 0
                     || this.curIndex >= this.containerCapacity)// where containerCapacity-1 is the last component
                {
                    throw new System.Exception("current index is out of range! DBG needed.");
                }
                if (this.curIndex == other.curIndex
                     && Object.ReferenceEquals(this.current, other.current) //  only with reference-types  NB!
                    )
                { res = true; }// they are equal.
                else
                { res = false; }// they differ
                //
                return res;
            }// isEqual
        }//  class iterator

        //---start class EntityBulk<RecordLayout>
        private RecordLayout[] vec;
        private int capacity;
        //
        public EntityBulk( int capacity=100)  // 
        {
            this.capacity = capacity;
            this.vec = new RecordLayout[this.capacity];
        }// Ctor

        public iterator begin()
        {
            EntityBulk_Csharp_Win_.EntityBulk<RecordLayout>.iterator curIterator = new EntityBulk_Csharp_Win_.EntityBulk<RecordLayout>.iterator();
            curIterator.containerCapacity = this.capacity;
            curIterator.first = this.vec[0];
            curIterator.one_after_last = this.vec[this.capacity-1];// vec[] range is [0,capacity-1] so vec[capacity] is one_after_last.
            curIterator.current = curIterator.first;
            curIterator.curIndex = 0;//first
            //ready
            return curIterator;
        }// begin

        public iterator end()
        {
            EntityBulk_Csharp_Win_.EntityBulk<RecordLayout>.iterator curIterator = new EntityBulk_Csharp_Win_.EntityBulk<RecordLayout>.iterator();
            curIterator.containerCapacity = this.capacity;
            curIterator.first = this.vec[0];
            curIterator.one_after_last = this.vec[this.capacity-1];// vec[] range is [0,capacity-1] so vec[capacity] is one_after_last.
            curIterator.current = curIterator.one_after_last;// here is the difference between begin() and end().
            curIterator.curIndex = this.capacity-1;// vec[] range is [0,capacity-1] so vec[capacity] is one_after_last.
            //ready
            return curIterator;
        }// end

    }//  class EntityBulk<RecordLayout>


}// nmsp   EntityBulk_Csharp_Win_

class someRecordLayout
{
    int id;
    string surname;
    int age;
    string email;
    string cellPhone;
}// class someRecordLayout

class Program
{
    static void Main( string[] args )
    {
        //EntityBulk_Csharp_Win_.EntityBulk<int> eBint = new EntityBulk_Csharp_Win_.EntityBulk<int>(3);

        EntityBulk_Csharp_Win_.EntityBulk<someRecordLayout> eBint = new EntityBulk_Csharp_Win_.EntityBulk<someRecordLayout>(3);
        int step = +1;
        for (EntityBulk_Csharp_Win_.EntityBulk<someRecordLayout>.iterator it = eBint.begin();
             it.isDifferent(eBint.end());
             it.FFWD()
           )
        {
            System.Console.Write("\t" + step++);
            System.Console.Write("\t iterator curIndex=" + it.curIndex);
            System.Console.WriteLine("\t end() curIndex=" + eBint.end().curIndex);
        }// for
        // ready
        System.Console.Write("\t Strike \"Enter\" to leave\t");
        System.Console.ReadLine();
    }
}//class Program::Main
