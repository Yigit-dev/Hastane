﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="sekreter_anasayfa.aspx.cs" Inherits="IleriNet_Final2.sekreter_anasayfa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/pics/1.jpg" Style="z-index: 100;
        left: 88px; position: absolute; top: 192px" Width="504px" />
    <asp:Image ID="Image2" runat="server" Height="120px" ImageUrl="~/pics/13.jpg" Style="z-index: 101;
        left: 352px; position: absolute; top: 304px" Width="560px" />
    <asp:Label ID="Label1" runat="server" Font-Names="Helvetica" Font-Size="22pt" ForeColor="Red"
        Style="z-index: 102; left: 624px; position: absolute; top: 232px" Text="Underling........"></asp:Label>
    <asp:Menu ID="Menu1" runat="server" Font-Names="Helvetica" Font-Size="14pt" ForeColor="Red"
        Height="80px" Style="z-index: 104; left: 96px; position: absolute; top: 336px"
        Width="136px">
        <Items>
            <asp:MenuItem NavigateUrl="~/sekreter_randevular.aspx" Text="&gt;   Randevular" Value="&gt;   Randevular">
            </asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/anasayfa.aspx" Text="&gt;   Anasayfa" Value="&gt;   Anasayfa"></asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/anasayfa.aspx" Text="&gt;   Çıkış" Value="&gt;   Çıkış"></asp:MenuItem>
        </Items>
    </asp:Menu>
</asp:Content>
