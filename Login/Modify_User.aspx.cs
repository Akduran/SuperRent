using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    String User_Name;
    TextBox txtType = new TextBox();
    TextBox txtCategory = new TextBox();
    TextBox txtPassword = new TextBox();
    TextBox Name_textbox = new TextBox();

    protected void Page_Load(object sender, EventArgs e)
    {
        //User_Name = Response.Cookies["UserToModify"].Value;
        User_Name = Request.QueryString["User"];

        DataBase_Access dbacc = new DataBase_Access();

      SqlDataReader User_Reader = dbacc.Get_User_info(User_Name);


      Modify_user.Text = "Modify User";
      Modify_user.Click += new EventHandler(this.Modify_Btn_Click);

      
      while (User_Reader.Read()) 
        {
            /*if (User_Reader.IsDBNull(User_Reader.GetOrdinal("UserName")))
            {
                break;
            }
            else
            {*/

                
          
                
                for (int i = 1; i <= 4; i++)
                {
                    TableRow tr = new TableRow();

                    User_Info.Rows.Add(tr);
                    TableCell tc1 = new TableCell();
                    TableCell tc2 = new TableCell();
                    
                    switch(i)
                    {
                        case 1:
                            
                            tc2.Text = "Name:";
                            
                            Name_textbox.ID = "Name";
                            Name_textbox.Text = User_Reader.GetString(i);
                            tc1.Controls.Add(Name_textbox);
                            break;
                        case 2:
                            tc2.Text = "Password:";
                            
                            txtPassword.ID = "Password";
                            txtPassword.Text = User_Reader.GetString(i);
                            tc1.Controls.Add(txtPassword);
                            
                            break;
                        case 3:
                            tc2.Text = "Category:";
                           
                            txtCategory.ID = "Category";
                            txtCategory.Text = User_Reader.GetString(i);
                            tc1.Controls.Add(txtCategory);
                            
                            break;
                        case 4:
                            tc2.Text = "Type:";
                            
                            txtType.ID = "Type";
                            txtType.Text = User_Reader.GetString(i);
                            tc1.Controls.Add(txtType);
                            
                            break;
                    }
                    //tc1.Text = User_Reader.GetString(i);
                    //tc1.Text = "test";
                    

                    //tc1.Text = i.ToString();
                    tr.Cells.Add(tc2);
                    tr.Cells.Add(tc1);
                }

                

                
            //}
        } }
    void Modify_Btn_Click(Object sender,
                           EventArgs e)
    {
        // When the button is clicked,
        // change the button text, and disable it.

        Button clickedButton = (Button)sender;

        //Response.Cookies["UserToModify"].Value = clickedButton.ID;
        DataBase_Access dbacc = new DataBase_Access();

        bool blUpdated = dbacc.Set_User_Info(User_Name, Name_textbox.Text, txtPassword.Text, txtType.Text, txtCategory.Text);

        if(blUpdated)
        {
            Confirm.Text = "Update completed successfully";
        }
        else
        {
            Confirm.Text = "Udate failed";
        }
       
        // Display the greeting label text.

    }
    }
