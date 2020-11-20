using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebLoginApplication
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (readSession())
            {
                Response.Redirect("MainPage");
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string userId = TbUserId.Text;
            string userPass = TbUserPass.Text;

            if(userId == "11" && userPass == "22")
            {
                writeSession(userId);
                Response.Redirect("MainPage.aspx");
            }
            else
            {
                Response.Write("Error!");
            }
        }

        private void writeSession(string userId)
        {
            Session["userId"] = userId;
        }

        private bool readSession()
        {
            if(Session["userId"] == null)
            {
                return false;
            }
            else
            {
                return true;
            }
        }

    }
}