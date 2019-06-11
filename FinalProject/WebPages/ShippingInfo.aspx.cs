using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FinalProject.Classes;

namespace FinalProject.WebPages
{
    public partial class ShippingInfo : System.Web.UI.Page
    {
        
      
        string name;
        string street;
        string city;
        string prov;
        string pcode;
        decimal total;
        decimal tax;
        ShippingInfoLogic si;
        addressLogic al;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            var list = (List<CheckOutLogic>)Session["Info"];

            


            

            //  decimal a = 0;
            foreach ( CheckOutLogic co in  list)
              {
                 total += co.ProdSub;

             }


            // lbl.Text = a.ToString();
            if (!IsPostBack)
            {
                ddlProv.Items.Add("ON");
                ddlProv.Items.Add("AB");
                ddlProv.Items.Add("BC");
                ddlProv.Items.Add("QB");
                ddlProv.Items.Add("NS");
            }
         

            name = txtName.Text;
            street = txtStreet.Text;
            city = txtCity.Text;
            prov = ddlProv.SelectedItem.Text;
            pcode = txtPcode.Text;

          

        }

        protected void btnContinue_Click(object sender, EventArgs e)
        {


            List<ShippingInfoLogic> shipList = new List<ShippingInfoLogic>();
            shipList.Add(addressLogic.address_Setter(name, street, city, prov, pcode, total, tax, 0));
            Session["shipInfo"] = shipList;

            Response.Redirect("~/WebPages/FinalOrderPage.aspx");
        }
    }
}