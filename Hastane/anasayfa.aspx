<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="anasayfa.aspx.cs" Inherits="IleriNet_Final2.anasayfa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     &nbsp;&nbsp;
    <asp:Image ID="Image1" runat="server" Height="128px" ImageUrl="~/pics/3.jpg" Style="z-index: 101;
        left: 272px; position: absolute; top: 224px" Width="448px" />
    <asp:Menu ID="Menu2" runat="server"
        Font-Names="Modern" ForeColor="Red" Style="z-index: 104; left: 88px; position: absolute;
        top: 224px" Width="184px" Height="256px">
        <Items>
            <asp:MenuItem Text="|   Hasta Girişi" Value="New Item" NavigateUrl="~/hasta_giris.aspx">
            </asp:MenuItem>
            <asp:MenuItem Text="|   Hasta Kayıt Ol" Value="New Item" NavigateUrl="~/hasta_kayitol.aspx">
            </asp:MenuItem>
           <asp:MenuItem Text="|   Doktor Girişi" Value="New Item" NavigateUrl="~/doktor_giris.aspx">
            </asp:MenuItem>
            <asp:MenuItem Text="|   Doktor Kayıt Ol" Value="New Item" NavigateUrl="~/doktor_kayitol.aspx">
            </asp:MenuItem>
            <asp:MenuItem Text="|   Sekreter Girişi" Value="New Item" NavigateUrl="~/sekreter_giris.aspx">
            </asp:MenuItem>
            <asp:MenuItem Text="|   Sekreter Kayıt Ol" Value="New Item" NavigateUrl="~/sekreter_kayitol.aspx">
            </asp:MenuItem>
             <asp:MenuItem Text="|   Admin Girişi" Value="New Item" NavigateUrl="~/admin_giris.aspx">
            </asp:MenuItem>
        </Items>
    </asp:Menu>
</asp:Content>
