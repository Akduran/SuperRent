using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        btnLogIn.Click += new EventHandler(this.Loginbtn_Click);

        Response.Cookies["sessionID"].Value = "12";

    }

    protected void Loginbtn_Click(Object sender, EventArgs e)
    {
        Login_Con lCon = new Login_Con();

        string strUserName = TextBoxUserName.Text;
        string strPassword = TextBoxPassword.Text;


        switch (lCon.Login_check(strUserName, strPassword, Response.Cookies["sessionID"].Value))
        {
            case 0:
                Label_Failure.Text = "Username incorrect";
                break;
            case 1:
                Label_Failure.Text = "Password incorrect";
                break;
            case 2:

                Response.Redirect("Admin_menu.aspx");
                break;
            case 3:
                Response.Redirect("ReservationRent.aspx");
                break;
            case 4:
                Response.Redirect("ReservationRent.aspx");
                break;
            case 5:
                Response.Redirect("ReservationRent.aspx");
                break;
            case 6:
                Label_Failure.Text = "Incorrect Category";
                break;

        }

    }
}