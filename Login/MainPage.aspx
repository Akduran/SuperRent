﻿

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MainPage.aspx.cs" Inherits="Default2"  %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd" >


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SuperRent</title>

    
</head>
<body>
   
    <form id="form1" runat="server">
   
    <asp:Panel ID="PanelMainScreen1" runat="server" BackColor="Silver" HorizontalAlign="Right" 
        Height="27px" Direction="RightToLeft" >
            <asp:Button ID="BtnSignIn" runat="server"  Text="Sign In" BackColor="Silver" 
                BorderStyle="None" ForeColor="#003300" Font-Size="X-Small" />
            <asp:Button ID="BtnClubMembership" runat="server" Text="Club Membership" 
                BackColor="Silver" BorderStyle="None" ForeColor="#003300" 
                Font-Size="X-Small" />
    </asp:Panel>

    <br />
     
     <asp:Panel ID="PanelMainScree2" runat="server" BackColor="#333333" 
        Height="50px" >


            <asp:Label ID="lblSuperRent" runat="server" BorderWidth="12px" 
                Font-Bold="True" Font-Size="XX-Large" ForeColor="#009933" 
                Text="Super Rent"></asp:Label>


            <asp:Button ID="btnReservation" runat="server"  Text="Reservation" BackColor="#333333" 
                BorderStyle="None" ForeColor="White"  padding="30px" Font-Bold="True" 
                Font-Size="Medium"/>
            <asp:Button ID="btnClubMembership1" runat="server" Text="Club Membership" 
                BackColor="#333333" BorderStyle="None" ForeColor="White" 
                Font-Bold="True" Font-Size="Medium" />
            <asp:Button ID="btnLocation" runat="server" BackColor="#333333" 
                BorderStyle="None" Font-Bold="True" ForeColor="White" Text="Location" 
                Font-Size="Medium" />
            <asp:Button ID="btnVehicle" runat="server" BackColor="#333333" 
                BorderStyle="None" Font-Bold="True" ForeColor="White" Text="Vehicle" 
                Font-Size="Medium" />
            <asp:Button ID="btnContact" runat="server" BackColor="#333333" 
                BorderStyle="None" Font-Bold="True" ForeColor="White" Text="Contact" 
                Font-Size="Medium" />
    </asp:Panel>

         
    </form>
</body>
</html>
