<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="sekreter_randevular.aspx.cs" Inherits="IleriNet_Final2.sekreter_randevular" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <style type="text/css">

    .auto-style13 {
        width: 579px;
        z-index: 101;
        left: 77px;
        position: absolute;
        top: 126px;
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
        top: 260px;
        height: 593px;
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
    <td>       
       <asp:Label ID="lblSaat1" runat="server" Text="Saat:"></asp:Label>
            <asp:DropDownList ID="DDL_Doktor" runat="server" Height="21px" Width="165px" OnSelectedIndexChanged="DDL_Doktor_SelectedIndexChanged">
            </asp:DropDownList>
    </td>
</table>
<table style="color: white; font-family: 'Helvetica'; top:340px;" class="auto-style15" >
<tr><td>&nbsp;</td></tr>
</table>
<asp:Panel ID="Panel1" runat="server">

<table style="color: white; font-family: 'Helvetica'; " class="auto-style16" >
        <tr><td>
            <asp:Button ID="btnPrint" runat="server" OnClick="btnPrint_Click" OnClientClick="return randevulariYazdir();" Text="Yazdır" Width="103px" />
            </td>
            <tr>
                <td>
                    <asp:Label ID="lblMessage" runat="server" ForeColor="Green" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="DG_randevular" runat="server" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" Width="850px">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:ButtonField ButtonType="Button" CommandName="Onayla" Text="Onayla" />
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
                    </asp:GridView>
                </td>
            </tr>
         </tr>
</table>
 </asp:Panel>
</asp:Content>
