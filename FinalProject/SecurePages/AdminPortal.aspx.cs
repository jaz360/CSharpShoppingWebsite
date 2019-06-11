using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FinalProject.dsBrandedHardwareTableAdapters;


namespace FinalProject.SecurePages
{
    public partial class AdminPortal : System.Web.UI.Page
    {
        protected part1TableAdapter adptParts = new part1TableAdapter();
        protected dsBrandedHardware.part1DataTable tblpart = new dsBrandedHardware.part1DataTable();

        protected customerTableAdapter adptCust = new customerTableAdapter();
        protected dsBrandedHardware.customerDataTable tblCust = new dsBrandedHardware.customerDataTable();

        protected ordersTableAdapter adptOrder = new ordersTableAdapter();
        protected dsBrandedHardware.ordersDataTable tblOrder = new dsBrandedHardware.ordersDataTable();

        protected void Page_Load(object sender, EventArgs e)
        {
           if (!IsPostBack)
            {
                grdCustomers.Visible = false;
                grdOrders.Visible = false;
                grdPart.Visible = false;
            }
        }

        protected void btnPart_Click(object sender, EventArgs e)
        {

            //adptParts.FillAll(tblpart);
            //grdPart.DataSource = tblpart;
            //grdPart.DataBind();

            grdCustomers.Visible = false;
            grdOrders.Visible = false;
            grdPart.Visible = true;


        }

        protected void btnCustomer_Click(object sender, EventArgs e)
        {


            //adptCust.FillCustInfo(tblCust);
            //grdPart.DataSource = tblCust;
            //grdPart.DataBind();

            grdCustomers.Visible = true;
            grdOrders.Visible = false;
            grdPart.Visible = false;

        }

        protected void btnOrder_Click(object sender, EventArgs e)
        {
            //adptOrder.Fill(tblOrder);
            //grdPart.DataSource = tblOrder;
            //grdPart.DataBind();

            grdCustomers.Visible = false;
            grdOrders.Visible = true;
            grdPart.Visible = false;

        }


        protected void grdTable_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            
            //grdPart.PageIndex = e.NewPageIndex;
           
            //grdPart.DataBind();
            
            


        }

        protected void grdTable_PageIndexChanged(object sender, EventArgs e)
        {
            //  grdTable.DataBind();

        }

        protected void grdOrders_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void sqlCustomers_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}