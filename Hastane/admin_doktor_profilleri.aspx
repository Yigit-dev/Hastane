<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="admin_doktor_profilleri.aspx.cs" Inherits="IleriNet_Final2.admin_doktor_profilleri" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <style type="text/css">
        .auto-style13 {
            z-index: 101;
            left: 1004px;
            position: absolute;
            top: 539px;
        }
        .auto-style14 {
            z-index: 101;
            left: 902px;
            position: absolute;
            top: 631px;
            width: 24px;
            height: 7px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <asp:Label ID="Label1" runat="server" Text=" Hasta Profilleri" style="z-index: 100; left: 175px; position: absolute; top: 174px; height: 39px; width: 222px;" Font-Names="Helvetica" Font-Size="25pt" ForeColor="Red"></asp:Label>
    <table style="z-index: 101; left: 100px; position: absolute; top: 225px; color: #fff; font-family: 'Helvetica';">
        <tr><td style="height: 26px; width: 176px;">
            <asp:Label ID="lblId" runat="server" Text=""></asp:Label></td><td style="height: 26px">
    </td></tr>
    </td></tr>
    <tr><td style="height: 26px; width: 176px;">Ad</td><td style="height: 26px"><asp:TextBox ID="txtIsim" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="RegularExpressionValidator"></asp:RegularExpressionValidator>
        </td></tr>
            <tr><td style="height: 26px; width: 176px;">Soyad</td><td style="height: 26px"><asp:TextBox ID="txtSoyad" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="RegularExpressionValidator"></asp:RegularExpressionValidator>

        </td></tr>
            <tr><td style="height: 26px; width: 176px;">Kimlik</td><td style="height: 26px"><asp:TextBox ID="txtKimlik" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="RegularExpressionValidator"></asp:RegularExpressionValidator>

        </td></tr>
            <tr><td style="height: 26px; width: 176px;">Şifre</td><td style="height: 26px"><asp:TextBox ID="txtSifre" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="RegularExpressionValidator"></asp:RegularExpressionValidator>

        </td></tr>
            <tr><td style="height: 26px; width: 176px;">Şifre Tekrar</td><td style="height: 26px"><asp:TextBox ID="txtSifreKontrol" runat="server"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="CompareValidator"></asp:CompareValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>

        </td></tr>
        <tr><td style="height: 26px; width: 176px;">Doğum Tarihi</td><td style="height: 26px"><asp:TextBox ID="txtDogumTarihi" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="RangeValidator"></asp:RangeValidator>

        </td></tr>
            <tr><td style="height: 26px; width: 176px;">Doğum Yeri</td><td style="height: 26px"><asp:TextBox ID="txtDogumYeri" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ErrorMessage="RegularExpressionValidator"></asp:RegularExpressionValidator>

        </td></tr>
            <tr><td style="height: 26px; width: 176px;">Seri No</td><td style="height: 26px"><asp:TextBox ID="txtSeriNo" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ErrorMessage="RegularExpressionValidator"></asp:RegularExpressionValidator>

        </td></tr>
            <tr><td style="height: 26px; width: 176px;">Son Geçerlilik</td><td style="height: 26px"><asp:TextBox ID="txtSonGecerlilik" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                            <asp:RangeValidator ID="RangeValidator2" runat="server" ErrorMessage="RangeValidator"></asp:RangeValidator>

        </td></tr>
            <tr><td style="height: 26px; width: 176px;">Kan Grubu</td><td style="height: 26px"><asp:TextBox ID="txtKanGrubu" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ErrorMessage="RegularExpressionValidator"></asp:RegularExpressionValidator>

        </td></tr>
         <tr><td style="height: 26px; width: 176px;">Anne Adı</td><td style="height: 26px"><asp:TextBox ID="txtAnneAdi" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                                     <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" ErrorMessage="RegularExpressionValidator"></asp:RegularExpressionValidator>

        </td></tr>
            <tr><td style="height: 26px; width: 176px;">Baba Adı</td><td style="height: 26px"><asp:TextBox ID="txtBabaAdi" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator10" runat="server" ErrorMessage="RegularExpressionValidator"></asp:RegularExpressionValidator>

        </td></tr>
            <tr><td style="height: 26px; width: 176px;">SGK</td><td style="height: 26px"><asp:TextBox ID="txtSgk" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator11" runat="server" ErrorMessage="RegularExpressionValidator"></asp:RegularExpressionValidator>

        </td></tr>
    </table>
        <table style="z-index: 101; left: 734px; position: absolute; top: 225px; color: #fff; font-family: 'Helvetica';">
    <tr><td style="height: 26px; width: 176px;">Adres</td><td style="height: 26px"><asp:TextBox ID="txtAdres" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
         <asp:RegularExpressionValidator ID="RegularExpressionValidator12" runat="server" ErrorMessage="RegularExpressionValidator"></asp:RegularExpressionValidator>

        </td></tr>
            <tr><td style="height: 26px; width: 176px;">Telefon</td><td style="height: 26px"><asp:TextBox ID="txtTelefon" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator13" runat="server" ErrorMessage="RegularExpressionValidator"></asp:RegularExpressionValidator>

        </td></tr>
            <tr><td style="height: 26px; width: 176px;">Mail</td><td style="height: 26px"><asp:TextBox ID="txtMail" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
         <asp:RegularExpressionValidator ID="RegularExpressionValidator14" runat="server" ErrorMessage="RegularExpressionValidator"></asp:RegularExpressionValidator>

        </td></tr>
    </table>
    <table style="font-weight: bold; color: #ffffff; font-family: 'Helvetica';" class="auto-style13">
    <tr><td style="width: 88px">
        <asp:Button ID="guncelleBtn" runat="server" Text="Güncelle" Width="94px" OnClick="guncelleBtn_Click" /></td>
        <td style="width: 93px">
        <asp:Button ID="Resbtn" runat="server" Text="Temizle" Width="94px" OnClick="Resbtn_Click" /></td>
        <td style="width: 93px">
        <asp:Button ID="silBtn" runat="server" Text="Kaydı Sil" Width="108px" OnClick="silBtn_Click" Height="24px"  /></td></tr>
    </table>
        <table style="font-weight: bold; color: #ffffff; font-family: 'Helvetica';" class="auto-style14">
    <tr>
        <td style="width: 88px">
            <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
        </td>


    </tr>
    </table>
<table style="z-index: 101; left: 100px; position: absolute; top:725px; color: #fff; font-family: 'Helvetica';">
    <tr>
        <td><asp:GridView ID="DG_Profiller" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="DG_Profiller_SelectedIndexChanged">
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
    </tr>
</table>
</asp:Content>
