<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm11.aspx.cs" Inherits="WebApplication8.WebForm11" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <style>
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
      
    </div>
  </li>
</ul>
    
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="drugm_id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="drugm_id" HeaderText="drugm_id" ReadOnly="True" SortExpression="drugm_id" />
                <asp:BoundField DataField="drugm_name" HeaderText="drugm_name" SortExpression="drugm_name" />
                <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                <asp:BoundField DataField="phar_id" HeaderText="phar_id" SortExpression="phar_id" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:pharmacy_store1ConnectionString %>" SelectCommand="SELECT * FROM [drug_manufacturer]"></asp:SqlDataSource>
    </form>
</body>
</html>
