<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="admin_hasta_bilgi_girisi.aspx.cs" Inherits="IleriNet_Final2.admin_hasta_bilgi_girisi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style13 {
            height: 26px;
            width: 68px;
        }
        .auto-style15 {
            width: 104px;
        }
        .auto-style17 {
            height: 26px;
            width: 124px;
        }
        .auto-style18 {
            margin-top: 0px;
        }
        .auto-style19 {
            z-index: 101;
            left: 77px;
            position: absolute;
            top: 196px;
            width: 1157px;
            height: 413px;
        }
        .auto-style20 {
            z-index: 100;
            left: 478px;
            position: absolute;
            top: 145px;
            height: 39px;
            width: 333px;
        }
        .auto-style21 {
            height: 26px;
            width: 198px;
        }
        .auto-style22 {
            width: 198px;
        }
        .auto-style23 {
            height: 26px;
            width: 104px;
        }
        .auto-style24 {
            z-index: 101;
            left: 820px;
            position: absolute;
            top: 605px;
            width: 189px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <asp:Label ID="Label1" runat="server" Text=" Doktor Hasta Bilgi Girişi" Font-Names="Helvetica" Font-Size="21pt" ForeColor="Red" CssClass="auto-style20"></asp:Label>

<table style="color: #fff; font-family: 'Helvetica';" class="auto-style19">
<tr>
    <td style="height: 26px; width: 176px;">ID</td><td class="auto-style21"><asp:TextBox ID="txtId" runat="server"></asp:TextBox>
    </td>
</tr>
    <tr>
            <td><asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator></td>

    </tr>
<tr>
    <td style="height: 26px; width: 176px;">TC</td><td class="auto-style21"><asp:TextBox ID="txtTc" runat="server"></asp:TextBox>
    </td>
    <td class="auto-style23">Ad</td><td class="auto-style17"><asp:TextBox ID="txtAd" runat="server"></asp:TextBox>
    </td>
    <td class="auto-style13">Soyad</td><td style="height: 26px"><asp:TextBox ID="txtSoyad" runat="server"></asp:TextBox>
    </td>
</tr>
<tr>
    <td><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator></td>
    <td class="auto-style22"><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator></td>
    <td class="auto-style15"><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator></td>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="RegularExpressionValidator"></asp:RegularExpressionValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="RegularExpressionValidator"></asp:RegularExpressionValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="RegularExpressionValidator"></asp:RegularExpressionValidator>

</tr>
<tr>
<td style="height: 26px; width: 176px;">Şikayet</td><td class="auto-style21"><asp:TextBox ID="txtSikayet" runat="server"></asp:TextBox>
</td>
<td class="auto-style23">Doktor</td><td class="auto-style17"><asp:TextBox ID="txtDoktor" runat="server"></asp:TextBox>
</td>
<td class="auto-style13">Klinik</td><td style="height: 26px"><asp:TextBox ID="txtKlinik" runat="server"></asp:TextBox>
</td>
</tr>
<tr>
    <td><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator></td>
    <td class="auto-style22"><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator></td>
    <td class="auto-style15"><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator></td>
      <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="RegularExpressionValidator"></asp:RegularExpressionValidator>


</tr>
<tr>
<td style="height: 26px; width: 176px;">Randevu Tarihi</td><td class="auto-style21"><asp:TextBox ID="txtTarih" runat="server"></asp:TextBox>
</td>
<td class="auto-style23">Randevu Saati</td><td class="auto-style17"><asp:TextBox ID="txtSaat" runat="server"></asp:TextBox>
</td>
</tr>
<tr>
<td><asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator></td>
<td class="auto-style22"><asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator></td>
  <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ErrorMessage="RegularExpressionValidator"></asp:RegularExpressionValidator>
<asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ErrorMessage="RegularExpressionValidator"></asp:RegularExpressionValidator>

</tr>
<tr>
<td style="height: 26px; width: 176px;">Doktor Görüşü:</td><td class="auto-style21"><asp:TextBox ID="txtDoktorGorusu" runat="server" Height="93px" Width="257px"></asp:TextBox>
</td>
<td class="auto-style23">İlaçlar:</td><td class="auto-style17"><asp:TextBox ID="txtIlac" runat="server" CssClass="auto-style18" Height="89px" Width="258px"></asp:TextBox>
</td>
</tr>
<tr>
<td><asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator></td>
<td class="auto-style22"><asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator></td>

</tr>
</table>
    <table style="z-index: 101; left: 70px; position: absolute; top: 720px; color: #fff; font-family: 'Helvetica';">
        <tr><td><asp:Label ID="lblMessage" runat="server" Text=""></asp:Label></td></tr>
<tr><td style="height: 26px">
        <asp:GridView ID="DG_DoktorHasta" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="DG_DoktorHasta_SelectedIndexChanged">
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
