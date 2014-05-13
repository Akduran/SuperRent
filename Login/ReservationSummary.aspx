

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ReservationSummary.aspx.cs" Inherits="Default2"  %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd" >


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SuperRent-Reservation Summary</title>

    
    <style type="text/css">
        .style1
        {
            font-size: x-large;
            font-weight: bold;
        }
    </style>

    
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

    <p>&nbsp;</p>
    <p class="style1">Reservation Summary</p>
    <p>&nbsp;</p>
    <p>
        &nbsp;<asp:Label ID="lblTodaysDate" runat="server" Text="Today's Date:" style="font-weight: 700"></asp:Label>  
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; <asp:Label ID="lblTodaysDateResult" runat="server" Text="Label"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           
    </p>
    <p>
        
    
    </p>
    <p>
        
    
    </p>
    <p>
        
        &nbsp;<asp:Label ID="lblFirstName" runat="server" 
            Text="First Name:" style="font-weight: 700"></asp:Label>                  

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; <asp:Label ID="lblFirstNameResult" runat="server" Text="Label"></asp:Label>
    <p>
        &nbsp;<asp:Label ID="lblLastName" runat="server" Text="Last Name:" 
            style="font-weight: 700"></asp:Label>                  
           
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; <asp:Label ID="lblLastNameResult" runat="server" Text="Label"></asp:Label>
    <p>
        &nbsp;<asp:Label ID="lblPhoneNumber" runat="server" Text="Phone Number:" 
            style="font-weight: 700"></asp:Label>                  
           
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="lblPhoneNumberResult" runat="server" Text="Label"></asp:Label>
    <p>
        &nbsp;<asp:Label ID="lblEmail" runat="server" Text="Email:" 
            style="font-weight: 700"></asp:Label>                  
           
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; <asp:Label ID="lblEmailResult" runat="server" Text="Label"></asp:Label>
    <p>
        &nbsp;<asp:Label ID="lblPickupLocation" runat="server" Text="Pick-up Location:" 
            style="font-weight: 700"></asp:Label>   

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="lblPickupLocationResult" runat="server" Text="Label"></asp:Label>
    <p>
        &nbsp;<asp:Label ID="lblDropOffLocation" runat="server" 
            Text="Drop off Location:" style="font-weight: 700"></asp:Label>   

        &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="lblDropOffLocationResult" runat="server" Text="Label"></asp:Label>
    <p>

        &nbsp;<asp:Label ID="LabelPickUpDate" runat="server" Text="Pick-up Date:" 
            style="font-weight: 700"></asp:Label>   

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="LabelPickUpDateResult" runat="server" Text="Label"></asp:Label>
    <p>

        &nbsp;<asp:Label ID="LabelReturnDate" runat="server" 
            Text="Return Date:" style="font-weight: 700"></asp:Label>   

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="LabelReturnDateResult" runat="server" Text="Label"></asp:Label>

    <p>
        <asp:Label ID="lblCarType" runat="server" Text="Car Type:" 
            style="font-weight: 700"></asp:Label>  
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="lblCarTypeResult" runat="server" Text="Label"></asp:Label>                
    <p>
        <asp:Label ID="lblCarInsurance" runat="server" Text="Purchase Insurance (yes/no):" 
            style="font-weight: 700"></asp:Label>  
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="lblCarInsuranceResult" runat="server" Text="Label"></asp:Label>                
    
    <p>
        &nbsp;</p>
    <p>

    <asp:Button ID="btnCompleteReservation" runat="server" BackColor="#003300" 
        Font-Bold="True" Font-Size="Medium" ForeColor="White" Text="Complete Reservation" 
        Width="214px" />

    &nbsp;&nbsp;&nbsp;&nbsp;

    <asp:Button ID="btnCancelReservation" runat="server" BackColor="#003300" 
        Font-Bold="True" Font-Size="Medium" ForeColor="White" Text="Cancel Reservation" 
        Width="214px" />

    </p>
    
    </form>
    </body>
</html>
