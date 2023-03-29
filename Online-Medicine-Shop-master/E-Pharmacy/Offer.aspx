﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Offer.aspx.cs" Inherits="OnlinePharmacy.Offer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }

        .auto-style2 {
            width: 100%;
        }

        .auto-style16 {
            width: 413px;
            text-align: right;
            height: 26px;
        }

        .auto-style17 {
            width: 185px;
            height: 26px;
        }

        .auto-style18 {
            height: 26px;
        }

        .auto-style19 {
            width: 413px;
            text-align: right;
            height: 4px;
        }

        .auto-style20 {
            width: 185px;
            height: 4px;
        }

        .auto-style21 {
            height: 4px;
        }

        .auto-style22 {
            width: 413px;
            text-align: right;
        }

        .auto-style6 {
            width: 185px;
        }

        .auto-style23 {
            width: 413px;
            text-align: right;
            height: 23px;
        }

        .auto-style7 {
            height: 23px;
            width: 185px;
        }

        .auto-style5 {
            height: 23px;
        }

        .auto-style11 {
            width: 413px;
            text-align: right;
            height: 29px;
        }

        .auto-style12 {
            text-align: center;
            width: 185px;
            height: 29px;
        }

        .auto-style13 {
            height: 29px;
        }
        .auto-style24 {
            text-align: left;
        }
    </style>
</head>
<body style="background-image: url('Image/bg (7).jpg')">
    <form id="form1" runat="server">
        <div>
            <h1 class="auto-style1">ONLINE MEDICINE SHOP</h1>
            <h2 class="auto-style1">OFFER DETAILS</h2>
            <p class="auto-style24">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Panel" />
            </p>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CustomerConnectionString %>" SelectCommand="SELECT Medicine.Id, Medicine.Name, Medicine.Price, Offer.OfferId, Offer.Offer, Offer.EndingDate FROM Medicine INNER JOIN Offer ON Medicine.Id = Offer.MedicineId" DeleteCommand="DELETE FROM [Offer] WHERE [OfferId]=@offerid"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="Id,OfferId" DataSourceID="SqlDataSource1" GridLines="Horizontal" AllowPaging="True" AutoGenerateDeleteButton="True">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                <asp:BoundField DataField="OfferId" HeaderText="OfferId" ReadOnly="True" SortExpression="OfferId" />
                <asp:BoundField DataField="Offer" HeaderText="Offer" SortExpression="Offer" />
                <asp:BoundField DataField="EndingDate" HeaderText="EndingDate" SortExpression="EndingDate" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#487575" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#275353" />
        </asp:GridView>
        <h2 class="auto-style1">ADD OFFER</h2>
        <table class="auto-style2" align="center">
            <tr>
                <td class="auto-style16">Medicine Id :</td>
                <td class="auto-style17">
                    <asp:TextBox ID="TextBox1" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td class="auto-style18"></td>
            </tr>
            <tr>
                <td class="auto-style19">Offer&nbsp; :</td>
                <td class="auto-style20">
                    <asp:TextBox ID="TextBox2" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td class="auto-style21"></td>
            </tr>
            <tr>
                <td class="auto-style22">Ending Date :</td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox3" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style23"></td>
                <td class="auto-style7"></td>
                <td class="auto-style5"></td>
            </tr>
            <tr>
                <td class="auto-style11"></td>
                <td class="auto-style12">
                    <asp:Button ID="ButtonAdd" runat="server" OnClick="ButtonAdd_Click" Text="ADD" Height="26px" />
                </td>
                <td class="auto-style13"></td>
            </tr>
        </table>
    </form>
</body>
</html>