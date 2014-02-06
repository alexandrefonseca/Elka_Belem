<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="elkaent.aspx.cs" Inherits="Elka.elkaent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<fieldset><legend>Buscar</legend>
    <asp:TextBox ID="txtbuscar" runat="server" Width="300px"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" BackColor="#3399FF" Font-Bold="True" 
        ForeColor="White" onclick="Button1_Click" Text="Buscar" />
    <asp:Label ID="lblmsg" runat="server"></asp:Label>
    </fieldset>
    <asp:Panel ID="Panel1" runat="server" Visible="false">
    <fieldset><legend> Lista </legend>
        <asp:GridView ID="GridDados" runat="server" CellPadding="4" DataKeyNames="COD" 
            ForeColor="#333333" 
            onselectedindexchanged="GridDados_SelectedIndexChanged" 
            AutoGenerateColumns="False">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="COD" HeaderText="CÓDIGO" />
                <asp:BoundField DataField="CPF" HeaderText="CPF" />
                <asp:BoundField DataField="NOME" HeaderText="NOME" />
                <asp:BoundField DataField="PADRINHO" HeaderText="PADRINHO">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="TAMANHO" HeaderText="TAMANHO">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:TemplateField ShowHeader="False">
                    <ItemTemplate>
                        <asp:Button ID="Button1" runat="server" CausesValidation="False" 
                            CommandName="Select" 
                            OnClientClick="javascript:if(confirm('Confirma a entrega da camisa ?')) return true; return false;" 
                            Text="Entregar" BackColor="#0066FF" Font-Bold="True" Font-Names="Verdana" 
                            Font-Size="Small" ForeColor="White" />
                    </ItemTemplate>
                </asp:TemplateField>
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
    </fieldset>
    </asp:Panel>
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
</asp:Content>
