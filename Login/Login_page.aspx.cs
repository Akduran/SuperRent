using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Login.Click += new EventHandler(this.Loginbtn_Click);

        Response.Cookies["sessionID"].Value = "12";

    }

    protected void Loginbtn_Click (Object sender, EventArgs e)
    {
        Login_Con lCon = new Login_Con();

        string strUserName = UserName.Text;
        string strPassword = Password.Text;


        switch(lCon.Login_check(strUserName, strPassword, Response.Cookies["sessionID"].Value))
        {
            case 0:
                TestLabel.Text = "Username incorrect";
                break;
            case 1:
                TestLabel.Text = "Password incorrect";
                break;
            case 2:

                Response.Redirect("Admin_menu.aspx");
                break;

        }

    }

  

  
}