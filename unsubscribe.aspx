<%@ Page Language="C#" AutoEventWireup="true" CodeFile="unsubscribe.aspx.cs" Inherits="unsubscribe" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
     <link rel="stylesheet" href="css/main.css" type="text/css" id="maincss" />
    <link rel="stylesheet" href="css/colors/blue.css" type="text/css" id="Link1" />
    <style>
       
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align:center; width:40%; margin: 0 auto; margin-top:50px">
    <div style="background-color:lightgray;">
        <h2>Unsubscribe</h2>
        Remove yourself from all future mailings.
        Please enter your email address below.<br /><br />
        <div class="row" style="margin: auto; float:right; background-color:lightgray; width:100%">
            <div style="width:70%; margin: 0 auto">
            <div class="span2" >
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="newEmail" ErrorMessage="Please enter Email Address" ForeColor="Red" Display="Dynamic" CssClass="validation"></asp:RequiredFieldValidator>
            <asp:TextBox ID="newEmail"  runat="server"></asp:TextBox>
             </div>
            <div class="span2">
            <asp:Button ID="Button1" runat="server" class="btn btn-primary" type="button" Text="Unsubscribe" OnClick="Button1_Click" ></asp:Button>
        </div>               
                </div>
        </div>
         <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
       </div>  

    </div>
   
    </form>
</body>
</html>
