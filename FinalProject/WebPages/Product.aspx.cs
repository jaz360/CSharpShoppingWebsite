using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FinalProject.dsBrandedHardwareTableAdapters;
using FinalProject.Classes;


namespace FinalProject.WebPages
{
    public partial class Product : System.Web.UI.Page
    {
        protected part1TableAdapter adptParts = new part1TableAdapter();
        protected dsBrandedHardware.part1DataTable tblpart = new dsBrandedHardware.part1DataTable();
        
        string req;
        int onHand;
       // int qty;

        static List<CheckOutLogic>  list  = new List<CheckOutLogic>();
        protected void Page_Load(object sender, EventArgs e)
        {
             req = Request.QueryString["product"];


            adptParts.FillByProduct(tblpart, req);



            DataListProd.DataSource = tblpart;

            DataBind();

            // lblInStock.Text = "HI";

            onHand = addToCartLogic.onHandProduct(req);
           lblInStock.Text = addToCartLogic.onHandProduct(req).ToString();


       



        }
        
        protected void DataListProd_ItemDataBound(object sender, DataListItemEventArgs e)
        {
    


           



        }

        protected void ImgaddToCart_Click(object sender, ImageClickEventArgs e)
        {

           int   qty = Convert.ToInt16(txtQuantity.Text);


            if (qty <= onHand)
            {


           
            int updateOnHand = onHand - qty;
            int partNo = addToCartLogic.PartNo(req);

            Session["updateOnHand"] = updateOnHand;
            Session["partNo"] = partNo;





                     list.Add(addToCartLogic.addToCartItem(qty,req));

       

                     Session["Info"] = list;
          


            Response.Redirect("~/WebPages/CheckOut.aspx");
            }else
            {
                lblErrorMsg.Text = "Entered Quantity Cannot Exceed " + addToCartLogic.onHandProduct(req) ;
                lblErrorMsg.ForeColor = System.Drawing.Color.Red;
            }
        }

        
    }
}