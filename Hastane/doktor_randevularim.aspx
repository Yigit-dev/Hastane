<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="doktor_randevularim.aspx.cs" Inherits="IleriNet_Final2.doktor_randevularim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

    .auto-style13 {
        width: 579px;
        z-index: 101;
        left: 77px;
        position: absolute;
        top: 196px;
        height: 195px;
    }
    .auto-style14 {
        z-index: 100;
        left: 526px;
        position: absolute;
        top: 146px;
            right: 1764px;
        }

    .auto-style15 {
        width: 1095px;
        z-index: 101;
        left: 73px;
        position: absolute;
        top: 460px;
        height: 195px;
    }
        .auto-style16 {
            width: 1095px;
            z-index: 101;
            left: 73px;
            position: absolute;
            top: 460px;
            height: 522px;
        }
    </style>
    <script>
        function randevulariYazdir() {
            var panel = document.getElementById("<%= Panel1.ClientID %>");
            var MainWindow = window.open('', '', 'height=600,width=800');
            MainWindow.document.write("<html><head><title>Randevularımı Yazdır</title>");
            MainWindow.document.write("</head><body>");
            MainWindow.document.write(panel.innerHTML);
            MainWindow.document.write("</body></html>");
            MainWindow.document.close();
            setTimeout(function (){
                MainWindow.print();
            }, 500);
            return false;
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Font-Bold="False" Font-Names="Helvetica" Font-Size="23pt" ForeColor="White" Style="color: red;" Text="Randevularım" CssClass="auto-style14"></asp:Label>

<table style="color: white; font-family: 'Helvetica';" class="auto-style13" ID="table_bilgiler">
    
    <tr>
        <td><asp:Label ID="lblId" runat="server" Text="Id:"></asp:Label><asp:TextBox ID="txtId" runat="server" Width="190px"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator></td></tr>
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
              <asp:Label ID="lblHastaMail" runat="server" Text="" Font-Size="17px"></asp:Label>

    </td>
    <td>
     <asp:Button ID="btnGuncelle" runat="server" Text="Güncelle" Width="103px" OnClick="btnGuncelle_Click"  />
    </td>
        <td>
     <asp:Button ID="btnPrint" runat="server" Text="Yazdır" Width="103px" OnClientClick="return randevulariYazdir();" OnClick="btnPrint_Click" />
    </td>
 </tr>
</table>
<table style="color: white; font-family: 'Helvetica'; top:340px;" class="auto-style15" >
<tr><td>&nbsp;</td></tr>
</table>
<asp:Panel ID="Panel1" runat="server">

<table style="color: white; font-family: 'Helvetica'; " class="auto-style16" >
        <tr><td><asp:Label ID="lblMessage" runat="server" ForeColor="Green" Text=""></asp:Label></td></tr>

    <tr><td><asp:Label ID="Label2" runat="server" Text=""></asp:Label>
        <asp:GridView ID="DG_onaylanmisRandevular" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="855px" OnRowCommand="DG_onaylanmisRandevular_RowCommand" OnSelectedIndexChanged="DG_onaylanmisRandevular_SelectedIndexChanged">
        <AlternatingRowStyle BackColor="White" />

        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
          <Columns>
            <asp:ButtonField ButtonType="Button" Text="Onayı Kaldır" CommandName="Onayi_Kaldir"/>
              <asp:ButtonField CommandName="Select" Text="Seç" />
        </Columns>
        </asp:GridView></td></tr>

    <tr><td><asp:GridView ID="DG_randevular" runat="server" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" Width="850px" OnRowCommand="DG_randevular_RowCommand" OnSelectedIndexChanged="DG_randevular_SelectedIndexChanged">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:ButtonField ButtonType="Button" Text="Onayla" CommandName="Onayla" />
            <asp:ButtonField CommandName="Select" Text="Seç" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#F7F7DE" />
        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FBFBF2" />
        <SortedAscendingHeaderStyle BackColor="#848384" />
        <SortedDescendingCellStyle BackColor="#EAEAD3" />
        <SortedDescendingHeaderStyle BackColor="#575357" />
        </asp:GridView></td></tr>

</table>
 </asp:Panel>

</asp:Content>
