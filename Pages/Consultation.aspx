<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="Consultation.aspx.cs" Inherits="Login_Eniem.Pages.Consultation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="../Content/ConsultationStyle.css" rel="stylesheet" />
</head>
<body>                              
    <form id="form1" runat="server">
                <asp:GridView ID="participants" runat="server"></asp:GridView>
        <div class="layout">
            <asp:Label runat="server" ID="Titre" CssClass="titre" Text=""  style="position:relative;top:0;">Liste des Formations :</asp:Label>
            <div class="container">
                <table>
                    <tr>
                      <th></th>
                    </tr> 
                    <tr>
                      <td class="gvTD">
                          <asp:GridView ID="gv" CssClass="gv" runat="server" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
                              <Columns>
                                  <asp:TemplateField HeaderText="Les Participants">
                                      <ItemTemplate>
                                          <asp:Button ID="afficher" runat="server" Text="Afficher" OnClick="afficher_Click" CommandName="Afficher" CommandArgument='<%# Eval("Intitulé de la formation") %>' />
                                      </ItemTemplate>
                                  </asp:TemplateField>
                              </Columns>
                              <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                              <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                              <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                              <RowStyle BackColor="White" ForeColor="#003399" />
                              <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                              <SortedAscendingCellStyle BackColor="#EDF6F6" />
                              <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                              <SortedDescendingCellStyle BackColor="#D6DFDF" />
                              <SortedDescendingHeaderStyle BackColor="#002876" />
                          </asp:GridView>
                      </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label runat="server" ID="consigne" CssClass="consigne" Text="">Veuillez saisir votre nom et prenom :</asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div class="ConsultaionForm">
                                <asp:Label runat="server" ID="Lnom" CssClass="Lnom" Text="Nom :"></asp:Label>
                                <asp:TextBox runat="server" ID="Tnom" CssClass="Tnom" Placeholder="Votre nom"></asp:TextBox>
                                <asp:Label runat="server" ID="Lprenom" CssClass="Lprenom" Text="">Prenom :</asp:Label>
                                <asp:TextBox runat="server" ID="Tprenom" CssClass="Tprenom" Placeholder="Votre Prenom"></asp:TextBox>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button runat="server" ID="BtnConsult" CssClass="btnC" Text="Consulter" OnClick="BtnConsult_Click" />
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </form>
</body>
</html>

           
               
            