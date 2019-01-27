<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm7.aspx.cs" Inherits="WebApplication8.WebForm7" %>

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
<body style="background-size:cover;  background-attachment: scroll;">
    
<ul>
    <li><a href="WebForm9.aspx">Home</a></li>
  <li><a href="WebForm4.aspx">Doctor</a></li>
  <li><a href="WebForm5.aspx">Patient</a></li>
    <li><a href="WebForm12.aspx">Pharmacy</a></li>
    <li><a href="WebForm13.aspx">Drug Manufacturer</a></li>
  <li class="dropdown">
    <a href="javascript:void(0)" class="dropbtn">Dropdown</a>
    <div class="dropdown-content">
      <a href="WebForm6.aspx">Prescription for Pharmacy</a>
      <a href="#">Link 2</a>
      
    </div>
  </li>
</ul>
    

<h3>&nbsp;<form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="PID,physc_id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                <asp:BoundField DataField="Date1" DataFormatString="{0:dd/MM/yyyy}" HeaderText="Date1" SortExpression="Date1" />
                <asp:BoundField DataField="PID" HeaderText="PID" ReadOnly="True" SortExpression="PID" />
                <asp:BoundField DataField="physc_id" HeaderText="physc_id" ReadOnly="True" SortExpression="physc_id" />
                <asp:BoundField DataField="drug_name" HeaderText="drug_name" SortExpression="drug_name" />
                <asp:BoundField DataField="phar_id" HeaderText="phar_id" SortExpression="phar_id" />
                <asp:BoundField DataField="drugm_id" HeaderText="drugm_id" SortExpression="drugm_id" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:pharmacy_store1ConnectionString %>" SelectCommand="SELECT * FROM [prescription]"></asp:SqlDataSource>
        <br />
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Generate Report" />
        </p>
        <p>
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Send Email" />
        </p>
    </form>
</body>
</html>
