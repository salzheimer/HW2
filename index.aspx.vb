
Partial Class index
    Inherits System.Web.UI.Page

    Private Const TAX_RATE As Decimal = 0.18

    Dim netPayBeforeDeductions As Decimal

    Function CalculatePay() As Decimal
        Dim result As Decimal = 0
        If ((txtWage.Text <> "") And (txtHoursWorked.Text <> "")) Then
            result = txtHoursWorked.Text * txtHoursWorked.Text

        End If
        Return result

    End Function

    Protected Sub btnCalculateNetPay_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnCalculateNetPay.Click
        'calculate gross pay
        Dim grossPay As Decimal = CalculatePay()
        lblGrossPay.Text = "Gross Pay= " + grossPay.ToString("c")
        If (grossPay <> 0) Then

            'set variables for deductions
            Dim preTaxDeduction As Decimal
            preTaxDeduction = txtPreTaxDeduction.Text

            lblTaxablePay.Text = "Taxable income " & FormatCurrency(grossPay - preTaxDeduction)

            lblTaxRate.Text = "Tax rate " & FormatPercent(TAX_RATE, 2)
            Dim postTaxDeductions As Decimal = txtAfterTaxDeduction.Text

            Dim taxes As Decimal
            taxes = grossPay * TAX_RATE

            Dim payAfterTaxes As Decimal = (grossPay - preTaxDeduction) - taxes


            lblNetPay.Text = "Your Net pay is " & FormatCurrency(payAfterTaxes - postTaxDeductions).ToString()
        End If
    End Sub

    Protected Sub btnClear_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnClear.Click
        lblNetPay.Text = ""
        txtAfterTaxDeduction.Text = ""
        txtHoursWorked.Text = ""
        txtPreTaxDeduction.Text = ""
        txtWage.Text = ""
    End Sub
End Class
