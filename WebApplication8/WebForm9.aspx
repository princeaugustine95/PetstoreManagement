<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm9.aspx.cs" Inherits="WebApplication8.WebForm9" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        
ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #333;
}

li {
    float: left;
}

li a, .dropbtn {
    display: inline-block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

li a:hover, .dropdown:hover .dropbtn {
    background-color: red;
}

li.dropdown {
    display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}

.dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
    text-align: left;
}

.dropdown-content a:hover {background-color: #f1f1f1}

.dropdown:hover .dropdown-content {
    display: block;
}

        .auto-style1 {
            text-align: center;
        }
    </style>
</head>
<body style="background-size:cover; background-image: url('Image/doctor2.jpg'); background-attachment: scroll; background-color: #800000;">
    <ul>
        <li><a href="WebForm9.aspx">Home</a></li>
  <li><a href="WebForm4.aspx">Doctor</a></li>
  <li><a href="#WebForm5.aspx">Patient</a></li>
        <li><a href="WebForm12.aspx">Pharmacy</a></li>
        <li><a href="WebForm13.aspx">Drug Manufacturer</a></li>
  <li class="dropdown">
    <a href="javascript:void(0)" class="dropbtn">Prescription</a>
    <div class="dropdown-content">
      <a href="WebForm6.aspx">Prescription for pharmacy</a>
      <a href="#">Link2</a>
      
    <h1>Registration</h1>
    <form id="form1" runat="server">
        <div>
            <br />
            <br />
            <br />
            <br />
        </div>
        <p>
            &nbsp;</p>
        <p class="auto-style1">
            FirstName<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </p>
        <p class="auto-style1">
            lastName<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </p>
        <p class="auto-style1">
            DateOfBirth<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </p>
        <p class="auto-style1">
            Phone No<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        </p>
        <p class="auto-style1">
            Address<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        </p>
        <p class="auto-style1">
            <asp:Button ID="Button1" runat="server" Text="Register" />
        </p>
    </form>
    <p>
&nbsp;
    </p>
</body>
</html>
