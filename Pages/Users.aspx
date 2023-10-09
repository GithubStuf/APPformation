<%@ Page Title="" Language="C#" MasterPageFile="~/PageMaitreAdmin.Master" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="Login_Eniem.Pages.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Content/UsersStyle.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
          <div runat="server" id="container" class="container" visible="true">
              <div runat="server" class="content">
                  <div>
                      <img src="../Images/loupe.png"/ style="width:30px;height:30px">
                      <asp:TextBox ID="recherche" CssClass="recherche" runat="server">
                      </asp:TextBox>
                      <asp:DropDownList ID="choix" CssClass="choix" runat="server" DataTextField="Rechercher par">
                          <asp:ListItem Value="1">Nom</asp:ListItem>
                          <asp:ListItem Value="2">Role</asp:ListItem>
                      </asp:DropDownList>
                      <asp:Button ID="Button1" CssClass="btnRech" runat="server" Text="Rechercher" OnClick="Button1_Click" ValidationGroup="SearchValidation" />
                      <asp:RequiredFieldValidator ID="rech" runat="server" ErrorMessage="Champ Vide!" ControlToValidate="recherche" ForeColor="Red" ValidationGroup="SearchValidation"></asp:RequiredFieldValidator>

                  </div>
                  <div class="liste">
                    <asp:Repeater ID="LaListe" runat="server">
                      <HeaderTemplate>
                          <table id="table1" class="userTab" border="1">
                              <tr>
                                  <th>
                                      <asp:Label ID="np" runat="server" Text="Label" Font-Bold="True">Nom & Prénom</asp:Label>

                                  </th>
                                  <th>
                                      <asp:Label ID="r" runat="server" Text="Label" Font-Bold="True">Role</asp:Label>

                                  </th>
                                  <th>
                                      <asp:Label ID="p" runat="server" Text="Label" Font-Bold="True">Pseudo</asp:Label>
                                  </th>
                                  <th>
                                      <asp:Label ID="mdp" runat="server" Text="Label" Font-Bold="True">Mot de passe</asp:Label>
                                  </th>
                                  <th>
                                      <asp:Label ID="a" runat="server" Text="Label" Font-Bold="True">Action</asp:Label>
                                  </th>
                              </tr>
                      </HeaderTemplate>
                      <ItemTemplate>
                          <tr>
                              <td>
                                  <asp:Label ID="Label1" runat="server" Text='<%# Eval("Nom")%>'></asp:Label>
                                  <asp:Label ID="Label5" runat="server" Text='<%# Eval("Prenom")%>'></asp:Label>
                              </td>
                              <td>
                                  <asp:Label ID="Label2" runat="server" Text='<%# Eval("Role")%>'></asp:Label>
                              </td>
                              <td>
                                  <asp:Label ID="Label3" runat="server" Text='<%# Eval("Pseudo")%>'></asp:Label>
                              </td>
                              <td>
                                  <asp:Label ID="Label4" runat="server" Text='<%# Eval("Password")%>'></asp:Label>
                              </td>
                              <td>
                                  <asp:Label ID="TheId" runat="server" Text='<%# Eval("Id")%>' Visible="false"></asp:Label>
                                  <asp:Button ID="mod" CssClass="mod" runat="server" Text="Modifier" OnClick="mod_Click"/>
                              </td>
                          </tr>
                      </ItemTemplate>
                      <FooterTemplate>
                          </table>
                      </FooterTemplate>
                    </asp:Repeater> 
                  </div>
              </div>
          </div>
    <div runat="server" id="PopUpContainer" class="PopUpContainer" visible="false">
        <div runat="server" id="addPopUp" class="popup" visible="false">
            <table class="addtab">
                <tr>
                    <td>
                        <asp:Label ID="role" runat="server" Text="Role :"></asp:Label></td>
                    <td>
                        <asp:DropDownList ID="ChooseRole" runat="server" DataSourceID="Types" DataTextField="Intitule_Type" DataValueField="ID_Type" Width="95%" Height="80%">
                            <asp:ListItem Value="00">Administrateur</asp:ListItem>
                            <asp:ListItem Value="01">Charger de formation</asp:ListItem>
                            <asp:ListItem Value="02">Responsable de structure</asp:ListItem>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="Types" runat="server" ConnectionString="<%$ ConnectionStrings:BD_ENIEM %>" SelectCommand="SELECT * FROM [Type_User]"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="pseudo" runat="server" Text="Pseudo :"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="EnterPseudo" runat="server" Width="95%" Height="60%"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Champ Vide!"
                            ControlToValidate="EnterPseudo" ForeColor="Red" ValidationGroup="AddValidation"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="password" runat="server" Text="Mot De Passe :"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="EnterPass" runat="server" TextMode="Password" Width="95%" Height="60%"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Champ Vide!"
                            ControlToValidate="EnterPass" ForeColor="Red" ValidationGroup="AddValidation"></asp:RequiredFieldValidator>
                    </td>
                </tr>   
                <tr>
                    <td colspan="2" class="btnTD">
                        <asp:Button ID="ajouter" CssClass="PopUpBtn" runat="server" Text="Ajouter" OnClick="ajouter_Click" Height="100%" ValidationGroup="AddValidation" />
                        <asp:Button ID="Addannuler" CssClass="annulerBtn" runat="server" Text="Annuler" OnClick="Addannuler_Click" Height="100%" />
                    </td>
                </tr>
            </table>
        </div>
        <div runat="server" id="modPopUp" class="popup" visible="false">
            <table class="modtab">
                <tr>
                    <td>
                        <asp:Label ID="Label8" runat="server" Text="Role :"></asp:Label></td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="Types" DataTextField="Intitule_Type" DataValueField="ID_Type" Width="82%" Height="60%"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Champ Vide!" ControlToValidate="TextBox3" ForeColor="Red" ValidationGroup="ModValidation"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label9" runat="server" Text="Pseudo :"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" Width="80%" Height="60%"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Champ Vide!" ControlToValidate="TextBox3" ForeColor="Red" ValidationGroup="ModValidation"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label10" runat="server" Text="Mot De Passe :"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server" TextMode="Password" Width="80%" Height="60%" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Champ Vide!" ControlToValidate="TextBox4" ForeColor="Red" ValidationGroup="ModValidation"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="btnTD">
                        <asp:Button ID="Modifier" CssClass="PopUpBtn" runat="server" Text="Modifier" OnClick="Modifier_Click" Height="100%" ValidationGroup="ModValidation" />
                        <asp:Button ID="Modannuler" CssClass="annulerBtn" runat="server" Text="Annuler" OnClick="Modannuler_Click" Height="100%" />
                    </td>
                </tr>
            </table>

        </div>
    </div>
</asp:Content>

