<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="hasta_randevu_al.aspx.cs" Inherits="IleriNet_Final2.hasta_randevu_al" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
        .auto-style14 {
        width: 579px;
        z-index: 102;
        left: 60px;
        position: absolute;
        top: 271px;
        height: 195px;
    }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Font-Bold="False" Font-Names="Helvetica" Font-Size="24pt"
        ForeColor="White" Style="color: red;"
        Text="Randevu Sayfası" CssClass="auto-style6"></asp:Label>
    <asp:Label ID="Label2" runat="server" Font-Bold="False" Font-Names="Helvetica" Font-Size="21pt"
        ForeColor="White" Style="color: #e67e22;"
        Text="Hasta Bilgileri" CssClass="auto-style3"></asp:Label>
    <asp:Label ID="Label3" runat="server" Font-Bold="False" Font-Names="Helvetica" Font-Size="21pt"
        ForeColor="White" Style="color: #e67e22;"
        Text="Randevu Tarihi" CssClass="auto-style5"></asp:Label>

    
<table style="color: white; font-family: 'Helvetica';" class="auto-style14">

<tr>
    <td style="width: 682px; height: 20px">Hasta Kimlik No</td>
    <td style="width: 94px; height: 20px">
    <asp:TextBox ID="txtKimlik" runat="server" Width="180px"></asp:TextBox>
    </td>
    <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="RegularExpressionValidator"></asp:RegularExpressionValidator>

    </td>
</tr>
<tr>
    <td style="width: 682px; height: 20px">Hasta Adı</td>
    <td style="width: 94px; height: 20px">
    <asp:TextBox ID="txtHastaAdi" runat="server" Width="179px"></asp:TextBox>
    </td>
     <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="RegularExpressionValidator"></asp:RegularExpressionValidator>

    </td>
</tr>
<tr>
    <td style="width: 682px; height: 20px">Hasta Soyadı</td>
    <td style="width: 94px; height: 20px">
    <asp:TextBox ID="txtSoyad" runat="server" Width="179px"></asp:TextBox>
    </td>
     <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
     <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="RegularExpressionValidator"></asp:RegularExpressionValidator>

    </td>
</tr>
    <tr>
    <td style="width: 682px; height: 20px">Doğum Tarihi</td>
    <td style="width: 94px; height: 20px">
    <asp:TextBox ID="txtDogumTarihi" runat="server" Width="179px"></asp:TextBox>
    </td>
     <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
         <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="RangeValidator"></asp:RangeValidator>
    </td>
        
</tr>
<tr>
   <td style="width: 682px; height: 20px">Telefon</td>
    <td style="width: 94px; height: 20px">
    <asp:TextBox ID="txtTelefon" runat="server" Width="179px"></asp:TextBox>
    </td>
    <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
             <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="RegularExpressionValidator"></asp:RegularExpressionValidator>

    </td>
</tr>
<tr>
    <td style="width: 682px; height: 20px">Mail</td>
    <td style="width: 94px; height: 20px">
    <asp:TextBox ID="txtMail" runat="server" Width="179px"></asp:TextBox>
    </td>
     <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
              <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ErrorMessage="RegularExpressionValidator"></asp:RegularExpressionValidator>

    </td>

</tr>
<tr>
    <td style="width: 682px; height: 20px">Şikayet</td>
    <td style="width: 94px; height: 20px">
    <asp:TextBox ID="txtSikayet" runat="server" Width="181px"></asp:TextBox>
    </td>
    <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
             <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ErrorMessage="RegularExpressionValidator"></asp:RegularExpressionValidator>

    </td>
</tr>
<tr>
    <td style="width: 682px; height: 20px">Kan Grubu</td>
    <td style="width: 94px; height: 20px">
    <asp:TextBox ID="txtKanGrubu" runat="server" Width="180px"></asp:TextBox>
    </td>
    <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ErrorMessage="RegularExpressionValidator"></asp:RegularExpressionValidator>

    </td>
</tr>
<tr>
    <td style="width: 682px; height: 25px">Klinik</td>
    <td style="width: 94px; height: 25px">
        <asp:DropDownList ID="DDL_Klinik" runat="server" Height="25px" OnSelectedIndexChanged="DDL_Klinik_SelectedIndexChanged" Width="184px">
        </asp:DropDownList>
    </td>
     <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
    </td>
</tr>
<tr>
    <td style="width: 682px; height: 25px">Doktor</td>
    <td style="width: 94px; height: 25px">
        <asp:DropDownList ID="DDL_Doktor" runat="server" Height="25px" Width="187px">
        </asp:DropDownList>
    </td>
    <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
    </td>
</tr>
</table>
<table style="color: white; font-family: 'Helvetica';" class="auto-style8">

<tr>
    <td class="auto-style1"><asp:Calendar ID="Calendar1" runat="server" Height="77px" Width="256px" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
    </td>
</tr>
<tr>
    <td class="auto-style9">Takvim</td>
    <td class="auto-style10">
    <asp:TextBox ID="txtTakvim" runat="server" Width="179px"></asp:TextBox>
    </td>
    <td class="auto-style11">
       <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
    </td>
</tr>
<tr>
    <td class="auto-style2">Saat</td>
    <td style="width: 94px; height: 25px">
        <asp:DropDownList ID="DDL_Saat" runat="server" Height="25px" Width="179px">
            <asp:ListItem>9.00</asp:ListItem>
            <asp:ListItem>9.30</asp:ListItem>
            <asp:ListItem>10.00</asp:ListItem>
            <asp:ListItem>10.45</asp:ListItem>
            <asp:ListItem>13.00</asp:ListItem>
            <asp:ListItem>13.30</asp:ListItem>
            <asp:ListItem>14.00</asp:ListItem>
            <asp:ListItem>14.45</asp:ListItem>
            <asp:ListItem>15.30</asp:ListItem>
            <asp:ListItem>16.30</asp:ListItem>
        </asp:DropDownList>
    </td>
     <td>
       <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
    </td>
    <td>
     <asp:Label ID="Label4" runat="server" Font-Bold="False" Font-Names="Helvetica" Font-Size="15pt"
        ForeColor="White" Style="color: green;"
        Text="" CssClass="auto-style12"></asp:Label>
    </td>
</tr>
</table>
<table style="z-index: 102; left: 900px; position: absolute; top: 670px">
    <tr>
        <td style="width: 83px; height: 26px">
            <asp:Button ID="btnRandevuAl" runat="server" Text="Randevu Al" Width="85px" OnClick="btnRandevuAl_Click" />
        </td>
        <td style="width: 67px; height: 26px">
           <asp:Button ID="btnReset" runat="server" Text="Temizle" Width="85px" OnClick="btnReset_Click" />
        </td>
            <td style="width: 67px; height: 26px">
                <a href="hasta_randevularim.aspx"><asp:Button ID="Button1" runat="server" Text="Randevularım" OnClick="Button1_Click"  /></a>
        </td>

    </tr>
</table>

</asp:Content>
