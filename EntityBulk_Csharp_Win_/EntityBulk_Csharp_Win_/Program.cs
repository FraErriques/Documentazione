using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;


namespace EntityBulk_Csharp_Win_
{

    public class EntityBulk<RecordLayout>  where RecordLayout: new()
    {
        //---envelope class EntityBulk<RecordLayout>
        public RecordLayout[] vec;
        private int capacity;
         

        public class iterator //----internal class -------------------------------------------------
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
            public void FFWD(RecordLayout[] envelopeData)
            {
                if (this.curIndex >= this.containerCapacity)// where containerCapacity-1 is the last component
                {
                    throw new System.Exception("current index is out of range! DBG needed.");
                }
                this.curIndex++;
                this.current = envelopeData[this.curIndex];
            }// FFWD

            public void BKWD()
            {
                if (this.curIndex < 0
                     || this.curIndex >= this.containerCapacity)// where containerCapacity-1 is the last component
                {
                    throw new System.Exception("current index is out of range! DBG needed.");
                }
                this.curIndex--;
            }// BKWD

            public bool isDifferent( iterator other)
            {
                bool res = false;// init
                if (this.curIndex < 0
                     || this.curIndex >= this.containerCapacity)// where containerCapacity-1 is the last component
                {
                    throw new System.Exception("current index is out of range! DBG needed.");
                }
                if (this.curIndex == other.curIndex // this is the only possible check for value-types( i.e. when the template is concretized with a value-type.
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
                if (this.curIndex == other.curIndex // this is the only possible check for value-types( i.e. when the template is concretized with a value-type. 
                     && Object.ReferenceEquals(this.current, other.current) //  only with reference-types  NB!
                    )
                { res = true; }// they are equal.
                else
                { res = false; }// they differ
                //
                return res;
            }// isEqual

            public bool isBeyond( iterator other )//---"Oltre l'ultimo"---usato per scorrere [begin, end]
            {
                bool res = false;// init
                if (this.curIndex < 0
                     || this.curIndex >= this.containerCapacity)// where containerCapacity-1 is the last component
                {
                    //throw new System.Exception("current index is out of range! DBG needed.");
                    res = true; // they differ
                }
                if ( //this.curIndex == other.curIndex // this is the only possible check for value-types( i.e. when the template is concretized with a value-type. 
                      Object.ReferenceEquals(this.current, other.current) //  only with reference-types  NB!
                    )
                { res = false; }// they are equal.
                else
                { res = true; }// they differ
                //
                return res;
            }// isUpTo

        }//  class iterator --------------internal class----------------------------------------------------------------


        // Ctor of envelope class
        public EntityBulk( int capacity=100)  // 
        {
            this.capacity = capacity;
            this.vec = new RecordLayout[this.capacity];
            // let the array entries not null, by calling their Ctor:
            for (int c = 0; c < this.capacity; c++)
            {
                this.vec[c] = new RecordLayout();
            }
        }// Ctor

        public iterator begin()
        {
            EntityBulk_Csharp_Win_.EntityBulk<RecordLayout>.iterator curIterator = new EntityBulk_Csharp_Win_.EntityBulk<RecordLayout>.iterator();
            curIterator.containerCapacity = this.capacity;
            curIterator.first = this.vec[0];
            bool isSamePointee = Object.ReferenceEquals( curIterator.first, this.vec[0]); // DBG
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
    //
    public someRecordLayout()// Ctor
    {
        this.id = -1;
        this.surname = "fake";
        this.age = -1;
        this.email = "fake";
        this.cellPhone = "fake";
    }// Ctor
}// class someRecordLayout


class Program//-----------test------------
{
    static void Main( string[] args )
    {
        //EntityBulk_Csharp_Win_.EntityBulk<int> eBint = new EntityBulk_Csharp_Win_.EntityBulk<int>(3);

        EntityBulk_Csharp_Win_.EntityBulk<someRecordLayout> eBint = new EntityBulk_Csharp_Win_.EntityBulk<someRecordLayout>(3);
        int step = +1;
        for (EntityBulk_Csharp_Win_.EntityBulk<someRecordLayout>.iterator it = eBint.begin();
             it.isBeyond(eBint.end()); //it.isDifferent(eBint.end());
             it.FFWD( eBint.vec )
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
