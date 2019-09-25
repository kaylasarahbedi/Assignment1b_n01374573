<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="n01374574assignment1b.aspx.cs" Inherits="n01374573_assignment1a.WebForm2" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Hotel Toronto Theft Incident Report</title>
    <link rel="stylesheet" type="text/css" href="Content/Site.css" />
</head>
<body>
    <form id="form2" runat="server">     
<section>
    <h1>Hotel Toronto Incident Report</h1>
        <p> Thank you for choosing <strong>Hotel Toronto</strong> for your stay.We are deeply sorry for the incident that has happened during your stay. Please fill out the following to help <strong>Hotel Toronto</strong> understand the situation.</p>
</section>
    
    <section>
        <h2>What is your first name?</h2>
                <asp:TextBox runat="server" ID="customer_fname"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="customer_fname" ErrorMessage="Please enter your first name!"> </asp:RequiredFieldValidator>
    </section>
    <section>
        <h2>What is your last name?</h2>
                 <asp:TextBox runat="server" ID="customer_lname" ></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="customer_lname" ErrorMessage="Please enter your last name!"> </asp:RequiredFieldValidator>
    </section>
    <section>
        <%/*Retrieved this code from https://www.codeproject.com/tips/472728/regularexpressionvalidator-in-asp-net
           * Author: Sonali Agarwal
           * Date: 8 Oct 2012
           * Reason: This code had good reviews/comments and worked for me after my first attempt */%>
       <h2>What is your email?</h2>
        <asp:TextBox ID="customer_email" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="email_validator"
              runat="server" ErrorMessage="Please Enter Valid Email ID"
              ControlToValidate="Customer_Email"
              ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
                  </asp:RegularExpressionValidator>
    </section>
    <section>
    <h2>Which location did the incident occur?</h2>
        <asp:DropDownList runat="server" ID="incident_location">
        <asp:ListItem Text="North" Value="north"></asp:ListItem>
        <asp:ListItem Text="Central" Value="central"></asp:ListItem>
        <asp:ListItem Text="South" Value="south"></asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator runat="server" ControlToValidate="incident_location" ErrorMessage="Please select an option!"> </asp:RequiredFieldValidator>
    </section>
    <section>
       <h2>Who has been notified of the incident?</h2>
        <asp:RadiobuttonList runat="server" ID="incident_notification">
        <asp:ListItem Text="Employee" Value="Employee"></asp:ListItem>
        <asp:ListItem Text="Police" Value="Police"></asp:ListItem>
        <asp:ListItem Text="Other" Value="Other"></asp:ListItem>
        </asp:RadiobuttonList> 
        <asp:RequiredFieldValidator runat="server" ControlToValidate="incident_notification" ErrorMessage="Please select an option!"> </asp:RequiredFieldValidator>
     </section>
     <section>
        <h2>How many items were stolen?:</h2>
        <asp:TextBox runat="server" ID="incident_itemsstolen"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ControlToValidate="incident_itemsstolen"></asp:RequiredFieldValidator>
        <asp:RangeValidator runat="server"
           ControlToValidate="incident_itemsstolen"
             MinimumValue="1"
             MaximumValue="5"
             ErrorMessage="You can only claim up to 5 items!">
        </asp:RangeValidator>
     </section>
       <section id="summary_incidentreport" runat="server">
    </section>
        <section>
            <input type="submit" value="submit" />
        </section>
    </form>
</body>
</html>
