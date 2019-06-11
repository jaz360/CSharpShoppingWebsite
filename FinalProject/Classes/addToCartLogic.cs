using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using FinalProject.Classes;
using FinalProject.dsBrandedHardwareTableAdapters;
namespace FinalProject.Classes
{

    public class addToCartLogic
    {
        protected static part1TableAdapter adptParts = new part1TableAdapter();
        protected static dsBrandedHardware.part1DataTable tblpart = new dsBrandedHardware.part1DataTable();
        static  CheckOutLogic co;
        //static int  onHand ;
        public static CheckOutLogic addToCartItem(int qty, string req)
        {
            adptParts.FillByProduct(tblpart, req);
            var row = tblpart[0];
            string name = row.Partname;
           

            co = new CheckOutLogic(row.Partno, row.Partname, row.Partclass, row.Unitprice, qty, qty);

            return co;
        }


        public static int  onHandProduct(string req)
        {
            adptParts.FillByProduct(tblpart, req);
            var row = tblpart[0];
            return row.Onhand;

        }

        public static int PartNo(string req)
        {
            adptParts.FillByProduct(tblpart, req);
            var row = tblpart[0];
            return row.Partno;

        }


    }
}