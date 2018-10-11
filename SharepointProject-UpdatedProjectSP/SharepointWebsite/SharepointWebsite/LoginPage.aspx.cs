using System;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.SharePoint.Client;

namespace SharepointWebsite
{
    public partial class LoginPage : System.Web.UI.Page
    {
        public static string UserName, SiteName, Password;
        public ClientContext isCtx;
        SecureString SecurePassword = new SecureString();

        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            UserName = UserNameTextBox.Text;
            Password = PasswordTextBox.Text;
            SiteName = SiteNameTextBox.Text;

            ClientContextCredentials ccc = new ClientContextCredentials();
            ccc.ValidateCradentials(UserName, Password, SiteName);

            if (ClientContextCredentials.isClX != null)
            {
                Response.Redirect("SiteContents.aspx?SiteName="+SiteName);
            }
            else
            {
                Label1.Text = "Invalid Credentials!!!!!";
                Response.Redirect("LoginPage.aspx");
            }


        }
    }
}