using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Xml;
 
/// <summary>
/// Summary description for Class1
/// </summary>
public class Login_Con
{
	public Login_Con()
	{
		
	}

    public int Login_check(string username, string password, string Session_ID)
    {
       DataBase_Access Dacc = new DataBase_Access();
       bool blTest_Username = Dacc.Check_Username(username);

       bool blTest_pass = Dacc.Check_Password(username, password);

       

        if(!blTest_Username)
        {
            return 0;
        }
        else if(blTest_pass)
        {
            string id = Dacc.get_User_ID(username, password);

            string type = Dacc.Get_User_Type(id);
            switch (type)
            {
                case "Admin":
                    return 2;
                case "clerk":
                    return 3;
                case "manager":
                    return 4;
                case "customer":
                    return 5;

            }
            return 6;
            
        }
        else
        {
            return 1;
        }


        
    }
}