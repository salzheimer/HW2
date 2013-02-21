<%@ Page Language="VB" AutoEventWireup="false" CodeFile="index.aspx.vb" Inherits="index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Net Pay Calculator</title>
    <link href="style.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div  class="content">
        <div id="wage">
            <div class="label">
                <asp:Label ID="lblHourlyWage" runat="server" Text="Enter Wage"></asp:Label>
            </div>
            <div class="entry">
                <asp:TextBox ID="txtWage" runat="server"></asp:TextBox>
            </div>
        </div>
        <div id="hours">
            <div class="label">
                <asp:Label ID="lblHours" runat="server" Text="Enter Hours Worked"></asp:Label>
            </div>
            <div class="entry">
                <asp:TextBox ID="txtHoursWorked" runat="server" AutoPostBack="true"></asp:TextBox>
            </div>
        </div>
        <div id="grossPay">
            <asp:Label ID="lblGrossPay" runat="server"></asp:Label>
        </div>
        <div id="beforeTaxDeduc">
            <div class="label">
                <asp:Label ID="lblBeforeTaxDeductions" runat="server" Text="Enter Pre Tax Deductions"></asp:Label>
            </div>
            <div class="entry">
                <asp:TextBox ID="txtPreTaxDeduction" runat="server" AutoPostBack="true"></asp:TextBox>
            </div>
        </div>
            <div id="taxablePay">
            <asp:Label ID="lblTaxablePay" runat="server"></asp:Label>
        </div>
            <div id="taxRate">
            <asp:Label ID="lblTaxRate" runat="server"></asp:Label>
        </div>
        <div id="afterTaxDeduc">
            <div class="label">
                <asp:Label ID="lblAfterTaxDeductions" runat="server" Text="Enter After Tax Deductions"></asp:Label>
            </div>
            <div class="entry">
                <asp:TextBox ID="txtAfterTaxDeduction" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="netPay" ">
            <asp:Label ID="lblNetPay" runat="server"></asp:Label>
        </div>
        <div id="buttons">
            <div class="btn">
                <asp:Button ID="btnCalculateNetPay" runat="server" Text="Calculate Net Pay" />
            </div>
            <div class="btn">
                <asp:Button ID="btnClear" runat="server" Text="Clear" />
            </div>
        </div>
    </div>
    </form>
</body>
</html>
