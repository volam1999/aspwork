using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyFacebook
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        bool check = false;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void menu_drop_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(menu_drop.SelectedValue.ToString() == "Other")
            {
                check = true;
                lbCheck.Text = "true";
            }
        }

        protected void cusValidator_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if(check == true && String.IsNullOrEmpty(args.Value.ToString()))
            {
                args.IsValid = false;
            }
            else
            {
                args.IsValid = true;
            }
        }
    }
}