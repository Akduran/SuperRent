<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login_page.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>blarg</p>
   <asp:TextBox runat="server" ID="UserName" ></asp:TextBox>
    <br />
    <asp:TextBox runat="server" ID="Password"></asp:TextBox>
    <br />
    <asp:label runat="server" id="TestLabel"></asp:label>
    <br />
    
    <br />

    <asp:Button runat="server" ID="Login" Text="Login" />

       
</asp:Content>

