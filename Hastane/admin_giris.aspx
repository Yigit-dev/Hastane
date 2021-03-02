<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="admin_giris.aspx.cs" Inherits="IleriNet_Final2.admin_giris" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            <asp:Label ID="Label1" runat="server" Text="Admin Girişi" style="z-index: 100; left: 165px; position: absolute; top: 297px" Font-Bold="False" Font-Names="Helvetica" Font-Size="24pt" ForeColor="Red"></asp:Label>
        <table style="z-index: 100; left: 164px; position: absolute; top: 369px; font-family: 'Helvetica';">
            <tr>
                <td style="width: 100px; height: 21px">
                    <span style="color: white">Kimlik:</span></td>
                <td style="width: 100px; height: 21px">
                    <asp:TextBox ID="txtKimlik" runat="server" Width="150px"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <span style="color: white">Şifre:</span></td>
                <td style="width: 100px">
                    <asp:TextBox ID="txtSifre" runat="server" TextMode="Password" Width="149px"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 100px; height: 21px">
                </td>
                <td style="width: 100px; height: 21px">
                    <asp:Button ID="Button1" runat="server" Text="Giriş" Width="89px" OnClick="Button1_Click" /></td>
            </tr>
        </table>
        <asp:Menu ID="Menu1" runat="server" Font-Underline="True" ForeColor="white" Orientation="Horizontal"
            Style="z-index: 101; left: 138px; position: absolute; top: 501px; font-family: 'Helvetica';">
        </asp:Menu>
    <asp:Label ID="pwdlb" runat="server" Text="" style="z-index: 104; left: 265px; position: absolute; top: 531px; color: white; font-family: 'Helvetica';"></asp:Label>
</asp:Content>
