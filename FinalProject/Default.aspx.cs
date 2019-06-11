using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FinalProject.dsBrandedHardwareTableAdapters;
namespace FinalProject
{
    public partial class Default : System.Web.UI.Page
    {
        protected part1TableAdapter adptParts = new part1TableAdapter();
        protected dsBrandedHardware.part1DataTable tblpart = new dsBrandedHardware.part1DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {

            

            adptParts.FillByCategory(tblpart, "EL");

            DataListEL.DataSource = tblpart;
            DataListEL.DataBind();


        }
    }
}