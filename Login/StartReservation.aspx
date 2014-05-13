

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StartReservation.aspx.cs" Inherits="Default2"  %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd" >


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SuperRent-Reservation</title>

    
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
    <p>
        <asp:Label ID="lblPickupLocation" runat="server" Text="Pick-up Location*"></asp:Label>   

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   

        <asp:CheckBox ID="CheckBoxReturnToSameLocation" runat="server" 
            Text="Return to same location" />
           
    </p>
    <p>

        <asp:DropDownList ID="DropDownListPickUpLocation" runat="server" Width="469px" 
            style="margin-left: 5px" Height="28px">

        </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>

    <p>
        <asp:Label ID="lblDropOffLocation" runat="server" Text="Drop off Location*"></asp:Label>   

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   

        
           
    </p>
    <p>

        <asp:DropDownList ID="DropDownListDropOffLocation" runat="server" Width="469px" 
            style="margin-left: 5px" Height="28px">

        </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
       
    <p>
        <asp:Label ID="LabelPickUpDate" runat="server" Text="Pick-up Date*"></asp:Label>   

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   

        </p>
    <p>

        <asp:Calendar ID="CalendarPickUpDate" runat="server" BackColor="White" 
            BorderColor="White" Font-Names="Verdana" 
            Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" 
            Width="350px" BorderWidth="1px">
            <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
            <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" 
                VerticalAlign="Bottom" />
            <OtherMonthDayStyle ForeColor="#999999" />
            <SelectedDayStyle BackColor="#333399" ForeColor="White" />
            <TitleStyle BackColor="White" Font-Bold="True" 
                Font-Size="12pt" ForeColor="#333399" BorderColor="Black" 
                BorderWidth="4px" />
            <TodayDayStyle BackColor="#CCCCCC" />
        </asp:Calendar>

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>

    <p>
        <asp:Label ID="LabelReturnDate" runat="server" Text="Return Date*"></asp:Label>   

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   

        </p>
    <p>

        <asp:Calendar ID="CalendarReturnDate" runat="server" BackColor="White" 
            BorderColor="White" Font-Names="Verdana" 
            Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" 
            Width="350px" BorderWidth="1px">
            <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
            <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" 
                VerticalAlign="Bottom" />
            <OtherMonthDayStyle ForeColor="#999999" />
            <SelectedDayStyle BackColor="#333399" ForeColor="White" />
            <TitleStyle BackColor="White" Font-Bold="True" 
                Font-Size="12pt" ForeColor="#333399" BorderColor="Black" 
                BorderWidth="4px" />
            <TodayDayStyle BackColor="#CCCCCC" />
        </asp:Calendar>

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>

    <p>
        <asp:Label ID="lblRentersAge" runat="server" Text="Renter's Age*"></asp:Label>                  
    </p>
    <p>

        <asp:DropDownList ID="DropDownListRentersAge" runat="server" Width="469px" 
            style="margin-left: 5px" Height="28px">

        </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>

    <p>&nbsp;</p>
    <asp:Label ID="lblSelectCar" runat="server" Font-Bold="True" 
        Font-Size="X-Large" Text="Select Car"></asp:Label>

    <p>
        <asp:Label ID="lblCarType" runat="server" Text="Car Type"></asp:Label>                  
    </p>
    <p>

        <asp:ListBox ID="ListBoxCarType" runat="server" Width="475px"></asp:ListBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>

    <p>
        &nbsp;</p>
    <p>

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>

     <p>&nbsp;</p>
    <asp:Label ID="lblClubMembership" runat="server" Font-Bold="True" 
        Font-Size="X-Large" Text="Club Membership"></asp:Label>

    &nbsp;(optional)<p>
        <asp:Label ID="lblFirstName" runat="server" Text="First Name"></asp:Label>                  
    </p>
    <p>

        <asp:TextBox ID="TextBoxFirstName" runat="server" Width="468px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>

    <p>
        <asp:Label ID="lblLastName" runat="server" Text="Last Name"></asp:Label>                  
    </p>
    <p>

        <asp:TextBox ID="TextBoxLastName" runat="server" Width="468px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>

    <p>
        <asp:Label ID="lblClubNumber" runat="server" Text="Club Number"></asp:Label>                  
    </p>
    <p>

        <asp:TextBox ID="TextBoxClubNumber" runat="server" Width="468px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>

    <asp:Button ID="btnStartReservation" runat="server" BackColor="#003300" 
        Font-Bold="True" Font-Size="Medium" ForeColor="White" Text="Start Reservation" 
        Width="473px" />

    </form>
    </body>
</html>
