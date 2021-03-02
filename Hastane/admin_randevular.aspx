<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="admin_randevular.aspx.cs" Inherits="IleriNet_Final2.admin_randevular" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
       <style type="text/css">

           .auto-style17 {
               z-index: 100;
               left: 552px;
               position: absolute;
               top: 152px;
           }
           .auto-style18 {
               width: 579px;
               z-index: 101;
               left: 81px;
               position: absolute;
               top: 226px;
               height: 155px;
           }
           .auto-style19 {
               width: 575px;
               z-index: 101;
               left: 662px;
               position: absolute;
               top: 235px;
               height: 255px;
           }
           .auto-style20 {
               z-index: 102;
               left: 865px;
               position: absolute;
               top: 526px;
           }
           .auto-style21 {
             z-index: 102;
               left: 81px;
               position: absolute;
               top: 750px;
               width: 380px;
           }
           .auto-style22 {
               z-index: 102;
               left: -576px;
               position: absolute;
               top: 288px;
           }
           .auto-style23 {
               height: 25px;
               width: 547px;
           }
           .auto-style24 {
               width: 547px;
               height: 29px;
           }
           .auto-style25 {
               width: 116px;
           }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Font-Bold="False" Font-Names="Helvetica" Font-Size="24pt"
        ForeColor="White" Style="color: red;"
        Text="Randevular" CssClass="auto-style17"></asp:Label>
<table style="color: white; font-family: 'Helvetica'; " class="auto-style18">

<tr>
    <td style="width: 682px; height: 20px"><asp:Label ID="lblId" runat="server" Font-Bold="False" Font-Names="Helvetica" Font-Size="15px"
        ForeColor="White"
        Text="" CssClass="auto-style17"></asp:Label>
    </td>

    <td style="width: 682px; height: 20px">Hasta Adı</td>
    <td style="width: 94px; height: 20px">
    <asp:TextBox ID="txtHastaAdi" runat="server" Width="179px"></asp:TextBox>
    </td>
     <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
             <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="RegularExpressionValidator"></asp:RegularExpressionValidator>

    </td>
</tr>
<tr>
    <td style="width: 682px; height: 20px">Hasta Soyadı</td>
    <td style="width: 94px; height: 20px">
    <asp:TextBox ID="txtSoyad" runat="server" Width="179px"></asp:TextBox>
    </td>
     <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
         <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="RegularExpressionValidator"></asp:RegularExpressionValidator>

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
      <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="RegularExpressionValidator"></asp:RegularExpressionValidator>

    </td>
</tr>
<tr>
    <td style="width: 682px; height: 20px">Mail</td>
    <td style="width: 94px; height: 20px">
    <asp:TextBox ID="txtMail" runat="server" Width="179px"></asp:TextBox>
    </td>
     <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
               <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="RegularExpressionValidator"></asp:RegularExpressionValidator>

    </td>

</tr>
<tr>
    <td style="width: 682px; height: 20px">Şikayet</td>
    <td style="width: 94px; height: 20px">
    <asp:TextBox ID="txtSikayet" runat="server" Width="181px"></asp:TextBox>
    </td>
    <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                       <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ErrorMessage="RegularExpressionValidator"></asp:RegularExpressionValidator>

    </td>
</tr>
<tr>
    <td style="width: 682px; height: 20px">Kan Grubu</td>
    <td style="width: 94px; height: 20px">
    <asp:TextBox ID="txtKanGrubu" runat="server" Width="180px"></asp:TextBox>
    </td>
    <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                               <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ErrorMessage="RegularExpressionValidator"></asp:RegularExpressionValidator>

    </td>
</tr>

</table>
<table style="color: white; font-family: 'Helvetica';" class="auto-style19">

<tr>
    <td class="auto-style1"><asp:Calendar ID="Calendar1" runat="server" Height="77px" Width="256px" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
    </td>
    <td class="auto-style23">Klinik</td>
    <td style="width: 94px; height: 25px">
        <asp:DropDownList ID="DDL_Klinik" runat="server" Height="25px" OnSelectedIndexChanged="DDL_Klinik_SelectedIndexChanged" Width="184px">
        </asp:DropDownList>
    </td>
     <td class="auto-style25">
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
    </td>

    <td style="width: 682px; height: 25px">Doktor</td>
    <td style="width: 94px; height: 25px">
        <asp:DropDownList ID="DDL_Doktor" runat="server" Height="25px" Width="187px">
        </asp:DropDownList>
    </td>
    <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
    </td>

</tr>
<tr>
    <td class="auto-style9">Takvim</td>
    <td class="auto-style24">
    <asp:TextBox ID="txtTakvim" runat="server" Width="132px"></asp:TextBox>
    </td>
    <td class="auto-style11">
       <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
    </td>
</tr>
<tr>
    <td class="auto-style2">Saat</td>
    <td class="auto-style23">
        <asp:DropDownList ID="DDL_Saat" runat="server" Height="20px" Width="103px">
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
    <td class="auto-style25">
     <asp:Label ID="lblMessage" runat="server" Font-Bold="False" Font-Names="Helvetica" Font-Size="15px"
        ForeColor="White" Style="color: green;"
        Text="" CssClass="auto-style22"></asp:Label>
    </td>
</tr>
</table>
<table class="auto-style20">
    <tr>
        <td style="width: 83px; height: 26px">
            <asp:Button ID="btnGuncelle" runat="server" Text="Güncelle" Width="85px" OnClick="btnGuncelle_Click"/>
        </td>
          <td style="width: 67px; height: 26px">
             <asp:Button ID="btnSil" runat="server" Text="Sil" Width="85px" OnClick="btnSil_Click"/>        
        </td>

    </tr>
</table>
    <table class="auto-style21">
        <tr>
            <td>        <asp:GridView ID="DG_Randevular" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GD_Randevular_SelectedIndexChanged">
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
