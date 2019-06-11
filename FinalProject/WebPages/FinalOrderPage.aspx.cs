using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FinalProject.Classes;

namespace FinalProject.WebPages
{
    public partial class FinalOrderPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            var list = (List<CheckOutLogic>)Session["Info"];
            var shipList  = (List<ShippingInfoLogic>)Session["shipInfo"];

            DataList1.DataSource = list;
            DataList1.DataBind();

            DataList2.DataSource = shipList;
            DataList2.DataBind();

            DataList3.DataSource = shipList;
            DataList3.DataBind();


        }


        protected void btnContinue_Click(object sender, EventArgs e)
        {


            Response.Redirect("~/WebPages/Invoice.aspx");

        }
        }
}