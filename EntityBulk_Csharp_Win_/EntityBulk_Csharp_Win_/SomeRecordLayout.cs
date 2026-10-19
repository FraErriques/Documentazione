using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace EntityBulk_Csharp_Win_
{

    public class someRecordLayout
    {
        public int id;
        public string surname;
        public int age;
        public string email;
        public string cellPhone;
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
            int id,
            string surname,
            int age,
            string email,
            string cellPhone
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
                 " { " + this.id.ToString()
                + ", " + this.surname.ToString()
                + ", " + this.age.ToString()
                + ", " + this.email.ToString()
                + ", " + this.cellPhone.ToString()
                + " }\n");
        }// internalPrint
    }// class someRecordLayout

}// nmsp
