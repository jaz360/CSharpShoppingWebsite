using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FinalProject.Classes;
using FinalProject.dsBrandedHardwareTableAdapters;

namespace FinalProject.WebPages
{
    public partial class Invoice : System.Web.UI.Page
    {
        protected static part1TableAdapter adptParts = new part1TableAdapter();
        protected static dsBrandedHardware.part1DataTable tblpart = new dsBrandedHardware.part1DataTable();
        // public   ShippingInfoLogic si;
        public DateTime today = DateTime.Today.Date;
        
        public List<CheckOutLogic> list;
        public List<ShippingInfoLogic> shipList;

       
       
        protected void Page_Load(object sender, EventArgs e)
        {
         


             list = (List<CheckOutLogic>)Session["Info"];
             shipList = (List<ShippingInfoLogic>)Session["shipInfo"];

           int  partNo = (int)Session["partNo"];
           int updateOnHand = (int)Session["updateOnHand"];




            DataList1.DataSource = shipList;
            DataList1.DataBind();

            DataList2.DataSource = shipList;
            DataList2.DataBind();

            //DataList3.DataSource = list;
            //DataList3.DataBind();

            //adptParts.in

            if (!IsPostBack)
            {
                adptParts.UpdateOnHand(updateOnHand, partNo);
                InsertDataIntoDatabase.InsertCustomerInfo(shipList);
                InsertDataIntoDatabase.InsertOrderProd(list);
                InsertDataIntoDatabase.InsertOrder(today);
                InsertDataIntoDatabase.InsertInvoice(today);
            }

        }
    }
}