<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="hasta_randevularim.aspx.cs" Inherits="IleriNet_Final2.hasta_randevularim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style13 {
            width: 579px;
            z-index: 101;
            left: 73px;
            position: absolute;
            top: 200px;
            height: 195px;
        }
        .auto-style14 {
            z-index: 100;
            left: 530px;
            position: absolute;
            top: 147px;
        }

        .auto-style15 {
            width: 1095px;
            z-index: 101;
            left: 73px;
            position: absolute;
            top: 460px;
            height: 195px;
        }

        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<asp:Label ID="Label1" runat="server" Font-Bold="False" Font-Names="Helvetica" Font-Size="23pt" ForeColor="White" Style="color: red;" Text="Randevularım" CssClass="auto-style14"></asp:Label>

<table style="color: white; font-family: 'Helvetica';" class="auto-style13">
    <tr><td><asp:Label ID="lblId" runat="server" Text="Id:"></asp:Label><asp:TextBox ID="txtId" runat="server" Width="190px"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator></td></tr>
    <tr><td><asp:Calendar ID="Takvim" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="163px" Width="335px" OnSelectionChanged="Takvim_SelectionChanged">
        <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
        <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
        <OtherMonthDayStyle ForeColor="#999999" />
        <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
        <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
        <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
        <WeekendDayStyle BackColor="#CCCCFF" />
        </asp:Calendar></td>  
        <td><asp:Label ID="lblTarih" runat="server" Text="Tarih:"></asp:Label><asp:TextBox ID="txtTarih" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator></td>
  
   <td>
        <asp:Label ID="lblSaat1" runat="server" Text="Saat:"></asp:Label>
            <asp:DropDownList ID="DDL_Saat" runat="server" Height="21px" Width="165px">
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
       <asp:Label ID="Label3" runat="server" Text="."></asp:Label>
    </td>
        <td>
         <asp:Button ID="btnGuncelle" runat="server" Text="Güncelle" Width="103px" OnClick="btnGuncelle_Click" />
        <asp:Button ID="btnSil" runat="server" Text="Sil" Width="101px" Height="23px" OnClick="btnSil_Click" />
        </td>
        </tr>
</table>
<table style="color: white; font-family: 'Helvetica'; top:340px;" class="auto-style15" >
<tr><td><asp:Label ID="Label2" runat="server" Text=""></asp:Label></td></tr>
</table>
<table style="color: white; font-family: 'Helvetica'; " class="auto-style15" >
    <tr><td><asp:GridView ID="DG_onaylanmisRandevular" runat="server"></asp:GridView></td></tr>
    <tr><td><asp:GridView ID="DG_randevular" runat="server"></asp:GridView></td></tr>
    <tr><td><asp:Label ID="lblMessage" runat="server" ForeColor="Green" Text=""></asp:Label></td></tr>
</table>

</asp:Content>
