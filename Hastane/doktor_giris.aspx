<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="doktor_giris.aspx.cs" Inherits="IleriNet_Final2.doktor_giris" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <asp:Label ID="Label1" runat="server" Text="Doktor Girişi" style="z-index: 100; left: 165px; position: absolute; top: 297px" Font-Bold="False" Font-Names="Helvetica" Font-Size="24pt" ForeColor="Red"></asp:Label>
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
            <Items>
                <asp:MenuItem Text="Yeni Kayıt" Value="Yeni Kayıt" NavigateUrl="~/hasta_kayitol.aspx"></asp:MenuItem>
            </Items>
        </asp:Menu>
    <asp:Label ID="pwdlb" runat="server" Text="" style="z-index: 104; left: 265px; position: absolute; top: 531px; color: white; font-family: 'Helvetica';"></asp:Label>
    <asp:Image ID="Image1" runat="server" Height="208px" ImageUrl="~/pics/hospital.jpg"
        Style="z-index: 103; left: 616px; position: absolute; top: 320px" Width="208px" />
    <br />
    <br />
    <asp:AdRotator ID="AdRotator1" runat="server" Width="500px" Height="200px" AdvertisementFile="~/banner_doktor.xml" CssClass="auto-style13" />

</asp:Content>
