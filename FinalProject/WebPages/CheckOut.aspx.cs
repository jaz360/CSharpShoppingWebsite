using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FinalProject.Classes;

namespace FinalProject.WebPages
{
    public partial class CheckOut : System.Web.UI.Page
    {
        List<CheckOutLogic> list;
        List<ShippingInfoLogic> shipList;
        ShippingInfoLogic si;
        CheckOutLogic co;
        protected void Page_Load(object sender, EventArgs e)
        {
            list = (List<CheckOutLogic>)Session["Info"];
            //shipList = (List<ShippingInfoLogic>)Session["shipInfo"];
            // co = list[0];

            DataList1.DataSource = list;
            DataList1.DataBind();
           


            



         
        }

        protected void btnContinue_Click(object sender, EventArgs e)
        {
            //if (shipList == null)
            //{
                Response.Redirect("~/WebPages/ShippingInfo.aspx");
            //}else
            //{
            //    //co = list[0];
            //    si = shipList[0];
            //    foreach (CheckOutLogic co in list)
            //    {
            //        si.Total += co.ProdSub;
            //    }
            //    Response.Redirect("~/WebPages/FinalOrderPage.aspx");
            //}
        }
    }
}