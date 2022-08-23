using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace EntityBulk_Csharp_Win_
{



    public class EntityBulk_SpecificRecord_
    {
        //---envelope class EntityBulk<RecordLayout>
        public someRecordLayout[] vec;
        public int capacity;
         

        public class iterator //----internal class -------------------------------------------------
        {
            public someRecordLayout first;
            public someRecordLayout one_after_last;
            public someRecordLayout current;
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
            public someRecordLayout iteratorDeference()
            {/* NB. this is why in C# we cannot deference an iterator with an operator overload:
              * Error	1	An object reference is required for the non-static field, method, 
              * or property 'EntityBulk_Csharp_Win_.EntityBulk<RecordLayout>.iterator.current'	
              */
                return this.current;
            }// iteratorDeference(

            //public void operator ++( int fake )//Error: User-defined operator must be declared static and public
            public void FFWD( someRecordLayout[] envelopeData)
            {
                if (this.curIndex >= this.containerCapacity-1)// where containerCapacity-1 is the last component
                {
                    //throw new System.Exception("current index is out of range! DBG needed.");
                    return;// no more FFWD
                }
                this.curIndex++;
                this.current = envelopeData[this.curIndex];
            }// FFWD

            public void BKWD( someRecordLayout[] envelopeData )
            {
                if (this.curIndex <= 0 )// where 0 is the sallest available index 
                {
                    //throw new System.Exception("current index is out of range! DBG needed.");
                    return;
                }
                this.curIndex--;
                this.current = envelopeData[this.curIndex];
            }// BKWD

            public bool isDifferent( iterator other)
            {
                bool res = false;// init
                //if (this.curIndex < 0
                //     || this.curIndex >= this.containerCapacity)// where containerCapacity-1 is the last component
                //{
                //    throw new System.Exception("current index is out of range! DBG needed.");
                //}
                if( Object.ReferenceEquals( this.current, other.current) )// only with reference-types NB!
                    { res = false; }// isDifferent==false, since they are equal.
                else
                    { res = true; }// they differ -> isDifferent==true
                //
                return res;
            }// isDifferent

            public bool isEqual( iterator other )
            {
                bool res = false;// init
                //if (this.curIndex < 0
                //     || this.curIndex >= this.containerCapacity)// where containerCapacity-1 is the last component
                //{
                //    throw new System.Exception("current index is out of range! DBG needed.");
                //}
                if (Object.ReferenceEquals(this.current, other.current))// only with reference-types NB!
                    { res = true; }// they are equal.
                else
                    { res = false; }// they differ
                //
                return res;
            }// isEqual


        }//  class iterator --------------internal class----------------------------------------------------------------


        // Ctor of envelope class
        public EntityBulk_SpecificRecord_( int capacity=100)  // 
        {
            this.capacity = capacity;
            this.vec = new someRecordLayout[this.capacity];
            // let the array entries not null, by calling their Ctor:
            for (int c = 0; c < this.capacity; c++)
            {
                this.vec[c] = new someRecordLayout();
                this.vec[c].init(
                      c
                    , c.ToString()
                    , c
                    , c.ToString()
                    , c.ToString()
                 );
            }
        }// Ctor

        public iterator begin()
        {
            EntityBulk_Csharp_Win_.EntityBulk_SpecificRecord_.iterator curIterator = 
                new EntityBulk_Csharp_Win_.EntityBulk_SpecificRecord_.iterator();
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
            EntityBulk_Csharp_Win_.EntityBulk_SpecificRecord_.iterator curIterator =
                new EntityBulk_Csharp_Win_.EntityBulk_SpecificRecord_.iterator();
            curIterator.containerCapacity = this.capacity;
            curIterator.first = this.vec[0];
            curIterator.one_after_last = this.vec[this.capacity-1];// vec[] range is [0,capacity-1] so vec[capacity] is one_after_last.
            curIterator.current = curIterator.one_after_last;// here is the difference between begin() and end().
            curIterator.curIndex = this.capacity-1;// vec[] range is [0,capacity-1] so vec[capacity] is one_after_last.
            //ready
            return curIterator;
        }// end

    }//  class EntityBulk_SpecificRecord_


}// nmsp   EntityBulk_Csharp_Win_


/*  cantina   
class someRecordLayout
{
    int     id;
    string  surname;
    int     age;
    string  email;
    string  cellPhone;
    //
    public someRecordLayout()// Ctor
    {
        this.id = -1;
        this.surname = "fake";
        this.age = -1;
        this.email = "fake";
        this.cellPhone = "fake";
    }// Ctor
    //
    public void init(
        int     id,
        string  surname,
        int     age,
        string  email,
        string  cellPhone
      )// init
    {
        this.id = id;
        this.surname = surname;
        this.age = age;
        this.email = email;
        this.cellPhone = cellPhone;
    }// init
    public void internalPrint()
    {
        System.Console.Write(
                 this.id.ToString()
            + ", " + this.surname.ToString()
            + ", " + this.age.ToString()
            + ", " + this.email.ToString()
            + ", " + this.cellPhone.ToString()
            + "\n");
    }// internalPrint
}// class someRecordLayout

*/
