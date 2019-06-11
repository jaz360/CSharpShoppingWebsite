using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using FinalProject.Classes;
namespace FinalProject.Classes
{
    public class addressLogic
    {

        static ShippingInfoLogic si;
        public static ShippingInfoLogic address_Setter(string name, string street, string city, string prov, string postCode, decimal total, decimal tax, int shipCost)
        {
            if (prov.Equals("ON"))
            {
                tax = 13;
                total = (total * (tax / 100)) + (total + 5);
                si = new ShippingInfoLogic(name, street, city, prov, postCode, total, tax, 5);



            }
            else if (prov.Equals("AB"))
            {
                tax = 5;
                total = (total * (tax / 100)) + (total + 7);
                si = new ShippingInfoLogic(name, street, city, prov, postCode, total, tax, 7);

            }
            else if (prov.Equals("BC"))
            {
                tax = 5;
                total = (total * (tax / 100)) + (total + 9);
                si = new ShippingInfoLogic(name, street, city, prov, postCode, total, tax, 9);

            }
            else if (prov.Equals("QB"))
            {
                tax = 5;
                total = (total * (tax / 100)) + (total + 11);
                si = new ShippingInfoLogic(name, street, city, prov, postCode, total, tax, 11);

            }
            else if (prov.Equals("NS"))
            {
                tax = 15;
                total = (total * (tax / 100)) + (total + 19);
                si = new ShippingInfoLogic(name, street, city, prov, postCode, total, tax, 19);

            }

            return si;

            
        }

    }
}