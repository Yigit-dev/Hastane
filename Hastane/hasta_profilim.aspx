<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="hasta_profilim.aspx.cs" Inherits="IleriNet_Final2.hasta_profilim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <asp:Label ID="Label1" runat="server" Text=" Profilim" style="z-index: 100; left: 175px; position: absolute; top: 174px; height: 39px; width: 222px;" Font-Names="Helvetica" Font-Size="25pt" ForeColor="Red"></asp:Label>
    <table style="z-index: 101; left: 100px; position: absolute; top: 225px; color: #fff; font-family: 'Helvetica';">
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
            <tr><td style="height: 26px; width: 176px;">Cinsiyet</td><td style="height: 26px">
                <asp:RadioButton ID="rdbKadin" runat="server" Text="Kadın" />
                <asp:RadioButton ID="rdbErkek" runat="server" Text="Erkek" />
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
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ErrorMessage="RegularExpressionValidator"></asp:RegularExpressionValidator>


        </td></tr>
            <tr><td style="height: 26px; width: 176px;">Mail</td><td style="height: 26px"><asp:TextBox ID="txtMail" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator14" runat="server" ErrorMessage="RegularExpressionValidator"></asp:RegularExpressionValidator>

        </td></tr>
    </table>
    <table style="z-index: 101; left: 899px; position: absolute; top: 620px; font-weight: bold; color: #ffffff; font-family: 'Helvetica';">
    <tr><td style="width: 88px">
        <asp:Button ID="guncelleBtn" runat="server" Text="Güncelle" Width="94px" OnClick="guncelleBtn_Click" /></td>
        <td style="width: 93px">
        <asp:Button ID="Resbtn" runat="server" Text="Temizle" Width="94px" OnClick="Resbtn_Click" /></td>
        <td style="width: 93px">
        <asp:Button ID="silBtn" runat="server" Text="Kaydımı Sil" Width="94px" OnClick="silBtn_Click"  /></td></tr>
    </table>
        <table style="z-index: 101; left: 899px; position: absolute; top: 720px; font-weight: bold; color: #ffffff; font-family: 'Helvetica';">
    <tr>
        <td style="width: 88px">
            <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
        </td>


    </tr>
    </table>
</asp:Content>
