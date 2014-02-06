<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="pesquisar.aspx.cs" Inherits="Elka.pesquisar" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <asp:CheckBox ID="cckcpf" runat="server" AutoPostBack="True" 
    oncheckedchanged="cckcpf_CheckedChanged" Text="Buscar pelo CPF" 
        Font-Bold="True" Font-Italic="True" ForeColor="#3399FF" />
<br />
<br />
    <asp:TextBox ID="txtnome" runat="server" Width="300px" Font-Bold="True" 
    Font-Names="Verdana"></asp:TextBox>
    <asp:AutoCompleteExtender ID="txtnome_AutoCompleteExtender" runat="server" 
        CompletionInterval="500" DelimiterCharacters="" Enabled="True" 
        MinimumPrefixLength="4" ServiceMethod="Retornanome" ServicePath="~/WSnome.asmx" 
        TargetControlID="txtnome">
    </asp:AutoCompleteExtender>
    <asp:TextBox ID="txtcpf" runat="server" MaxLength="14" Visible="false" 
    Font-Bold="True" Font-Names="Verdana" Width="130px"></asp:TextBox>
    <asp:AutoCompleteExtender ID="txtcpf_AutoCompleteExtender" runat="server" 
        CompletionInterval="500" DelimiterCharacters="" Enabled="True" 
        ServiceMethod="Retornacpf" ServicePath="~/WSCPF.asmx" TargetControlID="txtcpf">
    </asp:AutoCompleteExtender>
    <asp:FilteredTextBoxExtender ID="txtcpf_FilteredTextBoxExtender" runat="server" 
        Enabled="True" FilterType="Numbers" TargetControlID="txtcpf">
    </asp:FilteredTextBoxExtender>
    <asp:Button ID="Button1" runat="server" BackColor="#3399FF" 
    Font-Bold="True" ForeColor="White" onclick="Button1_Click" Text="OK" 
    Width="60px" />
    <br />
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
</asp:Content>
