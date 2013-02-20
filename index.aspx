<%@ Page Language="VB" AutoEventWireup="false" CodeFile="index.aspx.vb" Inherits="index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Net Pay Calculator</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div>
            <asp:Label ID="lblHourlyWage" runat="server" Text="Enter Wage"></asp:Label>
        </div>
        <div>
            <asp:TextBox ID="txtWage" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="lblHours" runat="server" Text="Enter Hours Worked"></asp:Label>
        </div>
        <div>
            <asp:TextBox ID="txtHoursWorked" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="lblBeforeTaxDeductions" runat="server" Text="Enter Pre Tax Deductions"></asp:Label>
        </div>
        <div>
            <asp:TextBox ID="txtPreTaxDeduction" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="lblAfterTaxDeductions" runat="server" Text="Enter After Tax Deductions"></asp:Label>
        </div>
        <div>
            <asp:TextBox ID="txtAfterTaxDeduction" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="lblNetPay" runat="server"></asp:Label>
        </div>
        <div>
        <div>
        <asp:Button ID="btnCalculateNetPay" runat="server" Text="Calculate Net Pay"/>
        </div>
        <div>
        <asp:Button ID="btnClear" runat="server"  Text="Clear"/>
        </div>
        </div>
    </div>
    </form>
</body>
</html>
