<%@ Page Title="" Language="C#" MasterPageFile="~/page.Master" AutoEventWireup="true" CodeBehind="BesoinsCF.aspx.cs" Inherits="Login_Eniem.BesoinsCF" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            margin-top: 50px;
        }
        .auto-style2 {
            text-align: center;
        }
        table{
           border-collapse: collapse;
        }
        table td{
            border: 1px solid black;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    
        <asp:Repeater ID="repeaterPersonnel" runat="server">
            <HeaderTemplate>
                <table id="table1" class="auto-style1">
                    <tr>
                        <td class="auto-style2">ID</td>
                        <td class="auto-style2">Intitulé</td>
                        <td class="auto-style2">Raisons</td>
                        <td class="auto-style2">N agents</td>
                        <td class="auto-style2">Objectifs</td>
                        <td class="auto-style2">Type</td>
                        <td class="auto-style2">Personnel concerneé</td>
                        <td class="auto-style2">Programme</td>
                        <td class="auto-style2">Durée estimé</td>
                        <td class="auto-style2">Lieu</td>
                        <td class="auto-style2">action</td>
                    </tr>
            </HeaderTemplate>
            <ItemTemplate>
                <tr>
                    <td style="text-align: center">
                        <asp:Label ID="id" runat="server" Text='<%# Eval("id")%>'></asp:Label></td>
                    <td style="text-align: center">
                        <asp:Label ID="intitule" runat="server" Text='<%# Eval("intitule")%>'></asp:Label></td>
                    <td style="text-align: center">
                        <asp:Label ID="raison" runat="server" Text='<%# Eval("raison") %>'></asp:Label></td> 
                    <td style="text-align: center">
                        <asp:Label ID="nombre" runat="server" Text='<%# Eval("nombre") %>'></asp:Label></td>
                    <td style="text-align: center">
                        <asp:Label ID="objectif" runat="server" Text='<%# Eval("objectif") %>'></asp:Label></td> 
                    <td style="text-align: center">
                        <asp:Label ID="type" runat="server" Text='<%# Eval("type")%>'></asp:Label></td>
                    <td style="text-align: center">
                        <asp:Label ID="personne" runat="server" Text='<%# Eval("personnes") %>'></asp:Label>   
                    </td>
                    <td style="text-align: center">
                        <asp:Label ID="programme" runat="server" Text='<%# Eval("programme") %>'></asp:Label></td>
                    <td style="text-align: center">
                        <asp:Label ID="duree" runat="server" Text='<%# Eval("duree") %>'></asp:Label></td> 
                    <td style="text-align: center">
                        <asp:Label ID="lieu" runat="server" Text='<%# Eval("lieu") %>'></asp:Label></td>
                    <td style="text-align: center">
                        <asp:Button ID="besoin" runat="server" Text="Voir" />
                    </td>
                </tr>
            </ItemTemplate>
            <FooterTemplate>
                </table>
            </FooterTemplate>
        </asp:Repeater>

    <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click1" />
</asp:Content>
