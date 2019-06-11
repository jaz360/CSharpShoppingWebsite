using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FinalProject.Classes
{
    public class CheckOutLogic
    {

        private int pId;
        private string pName;
        private string pClass;
        private decimal pPrice;
        private int pQty;
        private decimal pSub;



        public CheckOutLogic()
        {

        }
        public CheckOutLogic(int pId, string pName, string pClass, decimal pPrice, int pQty, decimal pSub)
        {
            this.pId = pId;
            this.pName = pName;
            this.pClass = pClass;
            this.pPrice = pPrice;
            this.pQty = pQty;
            this.pSub = pSub;
        }


        public int ProdID
        {
            get { return pId; }

            set { pId = value; }
        }


        public string ProdName
        {
            get { return pName; }

            set { pName = value; }
        }

        public string ProdClass
        {
            get { return pClass; }

            set { pClass = value; }
        }

        public decimal ProdPrice
        {
            get { return pPrice; }

            set { pPrice = value; }
        }

        public int Pqty
        {
            get { return pQty ; }

            set { pQty = value; }
        }


        public decimal ProdSub
        {
            
            get { return pQty  * Convert.ToDecimal(pPrice) ; }

            set { pSub = pQty * Convert.ToDecimal(pPrice); }
        }



      public void  checkoutProduct(    )
        {
            
        }





    }
}