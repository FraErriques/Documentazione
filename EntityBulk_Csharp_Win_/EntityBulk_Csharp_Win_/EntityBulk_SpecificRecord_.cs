using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace EntityBulk_Csharp_Win_
{



    public class EntityBulk_SpecificRecord_
    {
        //---envelope class EntityBulk_SpecificRecord_ : add new classes under the same name, to vary the Record-Layout.
        public someRecordLayout[] vec;
        public int capacity;
        private int lastUsedIndex;
         

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
                    // DBG throw new System.Exception("current index is out of range! DBG needed.");
                    return;// no more FFWD
                }
                this.curIndex++;
                this.current = envelopeData[this.curIndex];
            }// FFWD

            public void BKWD( someRecordLayout[] envelopeData )
            {
                if (this.curIndex <= 0 )// where 0 is the sallest available index 
                {
                    // DBG throw new System.Exception("current index is out of range! DBG needed.");
                    return;
                }
                this.curIndex--;
                this.current = envelopeData[this.curIndex];
            }// BKWD

            public bool isDifferent( iterator other)
            {
                bool res = false;// init
                if( Object.ReferenceEquals( this.current, other.current) )// only with reference-types NB!
                    { res = false; }// isDifferent==false, since they are equal.
                else
                    { res = true; }// they differ -> isDifferent==true
                //ready.
                return res;
            }// isDifferent

            public bool isEqual( iterator other )
            {
                bool res = false;// init
                if (Object.ReferenceEquals(this.current, other.current))// only with reference-types NB!
                    { res = true; }// they are equal.
                else
                    { res = false; }// they differ
                // ready.
                return res;
            }// isEqual


        }//  class iterator --------------internal class----------------------------------------------------------------


        // Ctor of envelope class
        public EntityBulk_SpecificRecord_( int capacity=100)  // 
        {
            this.capacity = capacity;
            this.lastUsedIndex = -1;// init one before start.
            this.vec = new someRecordLayout[this.capacity];
        }// Ctor

        public void push_back( someRecordLayout par )// par is reference-type
        {// TODO check lastUsedIndex
            if (this.lastUsedIndex < this.capacity - 1)
            {// ordinary love
                if (++this.lastUsedIndex < 0)
                {
                    throw new System.Exception(" DBG : index underflow");
                }// else continue.
                this.vec[this.lastUsedIndex] = par;
            }
            else if (this.lastUsedIndex == this.capacity - 1)
            {// NO ordinary love
                someRecordLayout[] tmp = new someRecordLayout[this.capacity + 1];// TODO parmetrize the resize.
                for (int c = 0; c < this.capacity; c++)
                {
                    tmp[c] = this.vec[c];// previous elements.
                }
                tmp[this.capacity] = par; // additional element;
                this.capacity++;// update capacity.
                this.lastUsedIndex = this.capacity - 1;
                this.vec = tmp;// std::move.
                tmp = null;// after the completion of its role, let it be garbage-collected.
            }
            else if (this.lastUsedIndex > this.capacity - 1)
            {
                throw new System.Exception(" DBG : index overflow");
            }
        }// push_back

        public iterator begin()
        {
            EntityBulk_Csharp_Win_.EntityBulk_SpecificRecord_.iterator curIterator = 
                new EntityBulk_Csharp_Win_.EntityBulk_SpecificRecord_.iterator();
            curIterator.containerCapacity = this.capacity;
            curIterator.first = this.vec[0];
            // DBG bool isSamePointee = Object.ReferenceEquals( curIterator.first, this.vec[0]); // DBG
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
