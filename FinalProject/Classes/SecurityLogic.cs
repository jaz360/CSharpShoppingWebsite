using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using FinalProject.dsBrandedHardwareTableAdapters;

namespace FinalProject.Classes
{

    public class SecurityLogic
    {
        protected static AdminTableAdapter adptAdmin = new AdminTableAdapter();
        protected dsBrandedHardware.AdminDataTable tblpart = new dsBrandedHardware.AdminDataTable();


        public static  bool AuthUser(string usernmae, string password)
        {

            int? result = adptAdmin.CheckUsernameAndPassowrd(usernmae, password);

            if (result == 1) return true;
            else return false;

        }



    }
}