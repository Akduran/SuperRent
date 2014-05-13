using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{

    TextBox txtType = new TextBox();
    TextBox txtCategory = new TextBox();
    TextBox txtPassword = new TextBox();
    TextBox Name_textbox = new TextBox();
    Button btnAdd = new Button();
    protected void Page_Load(object sender, EventArgs e)
    {
        for (int i = 1; i <= 4; i++)
        {
            TableRow tr = new TableRow();

            User_Info.Rows.Add(tr);
            TableCell tc1 = new TableCell();
            TableCell tc2 = new TableCell();

            switch (i)
            {
                case 1:

                    tc2.Text = "Name:";

                    Name_textbox.ID = "Name";
                    
                    tc1.Controls.Add(Name_textbox);
                    break;
                case 2:
                    tc2.Text = "Password:";

                    txtPassword.ID = "Password";
                    
                    tc1.Controls.Add(txtPassword);

                    break;
                case 3:
                    tc2.Text = "Category:";

                    txtCategory.ID = "Category";
                    
                    tc1.Controls.Add(txtCategory);

                    break;
                case 4:
                    tc2.Text = "Type:";

                    txtType.ID = "Type";
                    
                    tc1.Controls.Add(txtType);

                    break;
            }
            //tc1.Text = User_Reader.GetString(i);
            //tc1.Text = "test";


            //tc1.Text = i.ToString();
            tr.Cells.Add(tc2);
            tr.Cells.Add(tc1);
        }
        TableRow tr2 = new TableRow();
        btnAdd.Text = "Add User";
        User_Info.Rows.Add(tr2);
        TableCell tc3 = new TableCell();
        tc3.Controls.Add(btnAdd);
        tr2.Cells.Add(tc3);


    }
}