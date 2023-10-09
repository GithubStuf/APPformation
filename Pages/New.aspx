<%@ Page Title="" Language="C#" MasterPageFile="~/page.Master" AutoEventWireup="true" CodeBehind="New.aspx.cs" Inherits="Login_Eniem.New" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="/Styles/New.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">

    <div class="container">
       <table>
               <tr>
                   <td>
                         <asp:Label ID="Label1" runat="server" Text="Budget de formation"></asp:Label>
                   </td>
                   <td>
                        <asp:TextBox ID="bj" CssClass="bj" runat="server" Width="80%"></asp:TextBox>
                   </td>
               </tr>
               <tr>
                   <td>
                        <asp:Label ID="Label2" runat="server" Text="Nombre d'employés à former"></asp:Label>
                   </td>
                   <td>
                        <asp:TextBox ID="nb" CssClass="nb" runat="server" Width="80%"></asp:TextBox>
                   </td>
               </tr>
               <tr>
                   <td class="tdB" colspan="2">
                        <asp:Button ID="Button1" CssClass="create-button" runat="server" Text="Creer" OnClick="Button1_Click" />
                   </td>
               </tr>
           </table>
   </div>


</asp:Content>
