using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using FinalProject.Classes;
using FinalProject.dsBrandedHardwareTableAdapters;

namespace FinalProject.Classes
{
    public class InsertDataIntoDatabase
    {
        protected static  customerTableAdapter adptCust = new customerTableAdapter();
        protected static orderprodTableAdapter adptOrderProd = new orderprodTableAdapter();
        protected static ordersTableAdapter adptOrder = new ordersTableAdapter();
        protected static invoiceTableAdapter adptInv = new invoiceTableAdapter();
        static int custId;
        static int orderId;
        public static void InsertCustomerInfo(List<ShippingInfoLogic> custInfo)
        {

            ShippingInfoLogic si ;
            si = custInfo[0];
            custId = Convert.ToInt32(adptCust.InsertCustInfo(si.CustName, si.CustStreet, si.CustCity, si.CustProv, si.CustPostCode));

           


        }


        public static void InsertOrderProd(List<CheckOutLogic> orderInfo)
        {
            foreach (CheckOutLogic ck in orderInfo)
            {
                adptOrderProd.Insert(ck.ProdID, ck.Pqty, ck.ProdSub);
                


            }

        }


        public static void InsertOrder ( DateTime date)
        {

            

           orderId =  Convert.ToInt32( adptOrder.InsertOrder(date, custId));
           
        }


        public static void InsertInvoice( DateTime date)
        {

            adptInv.Insert(date, orderId);



        }






    }
}