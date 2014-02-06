<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ent.aspx.cs" Inherits="Elka.ent" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 75px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <table class="style1">
        <tr>
            <td class="style2">
                <strong><em>CPF :</em></strong></td>
            <td>
                <asp:Label ID="lblcpf" runat="server" style="font-weight: 700; color: #003399"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <strong><em>Nome :</em></strong></td>
            <td>
                <asp:Label ID="lblnome" runat="server"  style="font-weight: 700; color: #003399"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <strong><em>Padrinho :</em></strong></td>
            <td>
                <asp:Label ID="lblpadrinho" runat="server"  style="font-weight: 700; color: #003399" ></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <strong><em>Tamanho :</em></strong></td>
            <td>
                <asp:Label ID="lbltamanho" runat="server"  style="font-weight: 700; color: #003399"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <strong><em>Celular :</em></strong></td>
            <td>
                <asp:TextBox ID="txtfone" runat="server" MaxLength="10" Width="100px"  style="font-weight: 700; color: #003399"></asp:TextBox>
                <asp:FilteredTextBoxExtender ID="txtfone_FilteredTextBoxExtender" 
                    runat="server" Enabled="True" FilterType="Numbers" TargetControlID="txtfone">
                </asp:FilteredTextBoxExtender>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <strong><em>E-mail :</em></strong></td>
            <td>
                <asp:TextBox ID="txtemail" runat="server" MaxLength="70" Width="300px"  style="font-weight: 700; color: #003399"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtemail" Display="Dynamic" 
                    ErrorMessage="Informe uma conta de email válida." ForeColor="#FF3300" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                    style="font-weight: 700"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Button ID="btnentregar" runat="server" Text="Entregar" 
                    onclick="btnentregar_Click1" OnClientClick="javascript:if(confirm('Confirma a entrega da camisa ?')) return true; return false;"/>
            </td>
            <td>
                <asp:Button ID="btncancelar" runat="server" Text="Cancelar" 
                    onclick="btncancelar_Click1" />
            </td>
        </tr>
    </table>
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
</asp:Content>
