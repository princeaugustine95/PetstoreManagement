<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm8.aspx.cs" Inherits="WebApplication8.WebForm8" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            margin-left: 424px;
        }
        .auto-style3 {
            text-align: left;
        }
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
    </style>
</head>
<body style="background-size:cover;  background-attachment: scroll;">
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
      
    </div>
  </li>
</ul>
   
    <form id="form1" runat="server">
        <div class="auto-style3">
        <div class="auto-style3">
            Gmailid<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            password
            <asp:TextBox ID="TextBox2" TextMode="Password" runat="server"></asp:TextBox>
            <br />
            To
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            Subject
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <br />
            body&nbsp;
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>

            <br />
            Attachment
            &nbsp;<asp:FileUpload ID="FileUpload1" runat="server" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

            <br />
            <br />
            <br />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="send" CssClass="auto-style2" style="height: 26px; width: 42px" />
            <br />
            <br />
            <br />
            <br />
        </div>
        </div>
    </form>
</body>
</html>
