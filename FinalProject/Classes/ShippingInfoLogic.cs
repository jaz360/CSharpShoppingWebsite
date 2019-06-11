using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using FinalProject.Classes;
namespace FinalProject.Classes
{
    public class ShippingInfoLogic
    {

        private string name;
        private string street;
        private string city;
        private string prov;
        private string postCode;
        private decimal total;
        private decimal tax;
        private int shipCost;

        public ShippingInfoLogic (string name, string street,  string city,   string prov, string postCode, decimal total, decimal tax, int shipCost)
        {
            this.name = name;
            this.street = street;
            this.city = city;
            this.prov = prov;
            this.postCode = postCode;
            this.total = total;
            this.tax = tax;
            this.shipCost = shipCost;


        }

       

        public string CustName
        {
            get { return name; }
            set { name = value; }
        }

        public string CustStreet
        {
            get { return street; }
            set { street = value; }
        }

        public string CustCity
        {
            get { return city; }
            set { city = value; }
        }

        public string CustProv
        {
            get { return prov; }
            set { prov = value; }
        }

        public string CustPostCode
        {
            get { return postCode; }
            set { postCode = value; }
        }

        public decimal Total
        {
            get { return total; }
            set { total = value; }
        }

        public decimal Tax
        {
            get { return tax; }
            set { tax = value; }
        }

        

        public int ShippingCost
        {
            get { return shipCost; }
            set { shipCost = value; }
        }



        public void updateTotal(decimal subTotal )
        {
            



        }




    }
}