using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Data.SqlClient;

/// <summary>
/// Summary description for DataBase_Access
/// </summary>
public class DataBase_Access
{
    private string connection_String;
    SqlConnection dbcon;
    public DataBase_Access()
    {
        connection_String = Get_Connection_String();
        dbcon = new SqlConnection(connection_String);
    }
    public string Get_Connection_String()
    {


        string conString = @"Data Source=(LocalDB)\v11.0;AttachDbFilename='C:\Users\Alexander\Documents\comp7081\SuperRent_Project\SuperRent DB Backup\SuperRent.mdf';Integrated Security=True;Connect Timeout=30";
        return conString;
    }

    public string Get_User_Type(String id)
    {
        dbcon.Close();
        SqlCommand comm = new SqlCommand("SELECT Id, UserType Category FROM Users WHERE Id ='"+ id + "';", dbcon);

        dbcon.Open();

        SqlDataReader reader = comm.ExecuteReader();

        reader.Read();
        return reader.GetString(1);

    }
    
    public string get_User_ID(String UserName, String Password)
    {
        dbcon.Close();
        SqlCommand comm = new SqlCommand("SELECT Id, Username, UserPassword FROM Users WHERE UserName = '" + UserName + "' AND UserPassword = '" + Password + "';", dbcon);

        dbcon.Open();

        SqlDataReader reader = comm.ExecuteReader();

        reader.Read();
        return reader.GetInt32(0).ToString();
    }

    // checks to see if a username and userpassword combo exist on the system if they do it returns true if they don't it returns false
    public bool Check_Password(string userName, string userPassword)
    {

        SqlCommand comm = new SqlCommand("SELECT UserName, UserPassword FROM Users WHERE UserName = '" + userName + "' AND UserPassword = '" + userPassword + "';", dbcon);

        dbcon.Open();

        SqlDataReader reader = comm.ExecuteReader();

        if (reader.HasRows)
        {
            dbcon.Close();
            return true;
        }
        else
        {
            dbcon.Close();
            return false;
        }





        // Test code
        /*if(userName.Equals("test"))
        {
            return "test";
        }
        else
        {
            return null;
        }*/

    }


    // Takes a String a checks if it exists as a user on the database returns true if it exists returns false if it doesn't
    public Boolean Check_Username(string userName)
    {


        SqlCommand comm = new SqlCommand("SELECT UserName FROM Users WHERE UserName = '" + userName + "';", dbcon);

        dbcon.Open();

        SqlDataReader reader = comm.ExecuteReader();

        if (reader.HasRows)
        {
            dbcon.Close();
            return true;
        }
        else
        {
            dbcon.Close();
            return false;
        }


        // test code
        /*if(userName.Equals("test"))
        {
            return true;

        }
        else
        {
            return false;
        }*/
    }

    public string Get_Name(string userName)
    {
        if (userName.Equals("test"))
        {
            return "Jeff";

        }
        else
        {
            return null;
        }
    }

    public string Get_UserCategory(string strUserName, string strPassword)
    {
        SqlCommand comm = new SqlCommand("SELECT UserName, UserPassword, UserCategory FROM Users WHERE UserName = '" + strUserName + "' AND UserPassword = '" + strPassword + "';", dbcon);

        dbcon.Open();

        SqlDataReader reader = comm.ExecuteReader();

        string strCategory = reader.GetString(3);

        dbcon.Close();
        return strCategory;


    }

    public SqlDataReader Get_Users()
    {
        dbcon.Close();
        SqlCommand comm = new SqlCommand("SELECT Id,  UserName, UserCategory, UserType FROM Users;", dbcon);

        dbcon.Open();

        SqlDataReader reader = comm.ExecuteReader();



        return reader;
    }

    public String Get_First_user()
    {
        dbcon.Close();
        SqlCommand comm = new SqlCommand("SELECT UserName, UserCategory, UserType FROM Users;", dbcon);

        dbcon.Open();

        SqlDataReader reader = comm.ExecuteReader();
        reader.Read();

        return reader.GetString(0);

    }

    public SqlDataReader Get_User_info(String Id)
    {
        dbcon.Close();

        SqlCommand comm = new SqlCommand("SELECT Id, UserName, UserPassword, UserCategory, UserType FROM Users WHERE Id = '" + Id+ "';" , dbcon);
        dbcon.Open();

        SqlDataReader reader = comm.ExecuteReader();



        return reader;

    }

    public bool Set_User_Info(String Id , string UserName, string UserPassword, string Usertype, string UserCategpory)
    {
        dbcon.Close();

        SqlCommand comm = new SqlCommand("Update Users Set UserName = '" + UserName + "', UserPassword ='" + UserPassword + "', UserCategory = '" + UserCategpory + "' , UserType = '" + Usertype + "' WHERE Id = '" + Id + "';", dbcon);
        dbcon.Open();

        try
        {
            comm.ExecuteNonQuery();
            //Message.InnerHtml = "<b>Record Updated.</b><br>";
            //MyDataGrid.EditItemIndex = -1;
            return true;
        }
        catch (SqlException e)
        {
            if (e.Number == 2627)
                return false;
                //Message.InnerHtml = "ERROR: A record already exists" +
                   //" with the same primary key";
           
               // Message.InnerHtml = "ERROR: Could not update record," +
                  //" please ensure the fields are correctly filled out";
            //Message.Style["color"] = "red";
        }
        return false;
    }

    public bool Add_User(String Id , string UserName, string UserPassword, string Usertype, string UserCategpory)
    {
        dbcon.Close();

        SqlCommand comm = new SqlCommand("INSERT INTO Users ( i UserName, UserPassword , UserCategory , UserType) VALUES ( ' ';", dbcon);
        dbcon.Open();

        try
        {
            comm.ExecuteNonQuery();
            //Message.InnerHtml = "<b>Record Updated.</b><br>";
            //MyDataGrid.EditItemIndex = -1;
            return true;
        }
        catch (SqlException e)
        {
            if (e.Number == 2627)
                return false;
            //Message.InnerHtml = "ERROR: A record already exists" +
            //" with the same primary key";

            // Message.InnerHtml = "ERROR: Could not update record," +
            //" please ensure the fields are correctly filled out";
            //Message.Style["color"] = "red";
        }
        return false;


    }
}