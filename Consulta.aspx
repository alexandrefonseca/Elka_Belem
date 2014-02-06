<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Consulta.aspx.cs" Inherits="Elka.Consulta" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            color: #3399FF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <fieldset><legend class="style1">

    Pesquisar</legend>
    <asp:TextBox ID="txtpesquisar" runat="server" Font-Bold="True" 
        Font-Names="Verdana" Font-Size="Small" Width="300px"></asp:TextBox>
    <asp:Button ID="btnpesq" runat="server" BackColor="#3399FF" Font-Bold="True" 
        Font-Names="Verdana" Font-Size="Small" ForeColor="White" Text="Pesquisar" 
        Width="100px" onclick="btnpesq_Click" />
    <asp:Label ID="lblmsg" runat="server"></asp:Label>
    </fieldset>
    <asp:Panel ID="Panelpesq" runat="server" Visible="false">
        <asp:GridView ID="GridDados" runat="server" CellPadding="4" ForeColor="#333333">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
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
    </asp:Panel>
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
</asp:Content>
