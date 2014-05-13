using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
  
    protected void Page_Load(object sender, EventArgs e)
    {
      DataBase_Access dbacc = new DataBase_Access();

      SqlDataReader User_Reader = dbacc.Get_Users();
      int count = 0;

      TableRow title = new TableRow();
      Users_Table.Rows.Add(title);
      TableCell tcName = new TableCell();
      tcName.Text = "User Name";
      TableCell tcCategory = new TableCell();
      tcCategory.Text = "User Category";
      TableCell tcType = new TableCell();
      tcType.Text = "User Type";

      title.Cells.Add(tcName);
      title.Cells.Add(tcCategory);
      title.Cells.Add(tcType);

      
      while (User_Reader.Read()) 
        {
            /*if (User_Reader.IsDBNull(User_Reader.GetOrdinal("UserName")))
            {
                break;
            }
            else
            {*/

                TableRow tr = new TableRow();

                Users_Table.Rows.Add(tr);

                count++;
                for (int i = 1; i <= 3; i++)
                {
                    TableCell tc1 = new TableCell();

                    tc1.Text = User_Reader.GetString(i);

                    //tc1.Text = i.ToString();
                    tr.Cells.Add(tc1);
                }

                TableCell tc2 = new TableCell();

                Button bt = new Button();
                bt.Text = "Modify User";
                bt.ID = User_Reader.GetInt32(0).ToString();
                bt.Click += new EventHandler(this.Modify_Btn_Click);

                tc2.Controls.Add(bt);
                tr.Cells.Add(tc2);

                
            //}
        } }

        void Modify_Btn_Click(Object sender,
                           EventArgs e)
    {
        // When the button is clicked,
        // change the button text, and disable it.

        Button clickedButton = (Button)sender;
            
        //Response.Cookies["UserToModify"].Value = clickedButton.ID;
        
        Response.Redirect("Modify_User.aspx?User=" + clickedButton.ID);
        // Display the greeting label text.
        
    }

      /*TableRow tr = new TableRow();

      Users_Table.Rows.Add(tr);

      TableCell tc1 = new TableCell();

      tc1.Text = dbacc.Get_First_user();

      tr.Cells.Add(tc1);*/


        

    }


