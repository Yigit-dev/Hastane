<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="hasta_doktor_bilgi.aspx.cs" Inherits="IleriNet_Final2.hasta_doktor_bilgi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style>
        .auto-style20 {
            z-index: 100;
            left: 478px;
            position: absolute;
            top: 167px;
            height: 39px;
            width: 433px;
        }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <asp:Label ID="Label1" runat="server" Text="Doktor Görüşü ve Bilgilendirmesi" Font-Names="Helvetica" Font-Size="21pt" ForeColor="Red" CssClass="auto-style20"></asp:Label>

 <table style="z-index: 101; left: 70px; position: absolute; top: 300px; color: #fff; font-family: 'Helvetica';">
<tr><td style="height: 26px">
        <asp:GridView ID="DG_HastaDoktor" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:ButtonField CommandName="Select" Text="Seç" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
    </td>
</table>
</asp:Content>
