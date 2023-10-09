<%@ Page Title="" Language="C#" MasterPageFile="~/PageMaitreAdmin.Master" AutoEventWireup="true" CodeBehind="Employees.aspx.cs" Inherits="Login_Eniem.Pages.Employees" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Content/EmployeesStyle.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div runat="server" id="container" class="container">
        <div class="content">
                <div>
                    <img src="../Images/loupe.png"/ style="width:30px;height:30px">
                    <asp:TextBox ID="recherche" CssClass="recherche" runat="server"></asp:TextBox>
                    <asp:DropDownList ID="Choix" CssClass="choix" runat="server">
                        <asp:ListItem Text="Rechercher par"></asp:ListItem>
                        <asp:ListItem Value="1">Nom</asp:ListItem>
                        <asp:ListItem Value="2">Fonction</asp:ListItem>
                        <asp:ListItem Value="3">Date de Naissance</asp:ListItem>
                        <asp:ListItem Value="4">Date recrutement</asp:ListItem>
                        <asp:ListItem Value="5">Diplome</asp:ListItem>
                        <asp:ListItem Value="6">GSP</asp:ListItem>
                        <asp:ListItem Value="7">Structure</asp:ListItem>
                    </asp:DropDownList>
                    <asp:Button ID="Button1" CssClass="btnRech" runat="server" Text="Rechercher" OnClick="Button1_Click" ValidationGroup="SearchValidation" />
                    <asp:RequiredFieldValidator ID="rech" runat="server" ErrorMessage="Champ Vide!" ControlToValidate="recherche" ForeColor="Red" ValidationGroup="SearchValidation"></asp:RequiredFieldValidator>
                    <asp:Button ID="clear" runat="server" Text="clear" OnClick="clear_Click" />
                </div>
            <div class="liste">
                <asp:Repeater ID="LaListe" runat="server">
                    <HeaderTemplate>
                        <table id="table1" class="EmpTab" border="1">
                            <tr>
                                <th>
                                    <asp:Label ID="np" runat="server" Text="Label" Font-Bold="True" margin="0">Nom & Prénom</asp:Label>

                                </th>
                                <th>
                                    <asp:Label ID="f" runat="server" Text="Label" Font-Bold="True">Fonction</asp:Label>

                                </th>
                                <th>
                                    <asp:Label ID="dn" runat="server" Text="Label" Font-Bold="True">Date de Naissance</asp:Label>
                                </th>
                                <th>
                                    <asp:Label ID="dr" runat="server" Text="Label" Font-Bold="True">Date recrutement</asp:Label>
                                </th>
                                <th>
                                    <asp:Label ID="d" runat="server" Text="Label" Font-Bold="True">Diplome</asp:Label>
                                </th>
                                   <th >
                                       <asp:Label ID="g" runat="server" Text="Label" Font-Bold="True" >Groupe socio-professionnelle</asp:Label>
                                   </th>
                                   <th >
                                       <asp:Label ID="s" runat="server" Text="Label" Font-Bold="True" >Nom de la Structure</asp:Label>
                                   </th>
                                   <th >
                                       <asp:Label ID="action" runat="server" Font-Bold="True">actions</asp:Label>
                                   </th>
                            </tr>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr>
                            <td>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("Nom")%>'></asp:Label>
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("Prenom")%>'></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("Fonction")%>'></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("DateN")%>'></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("DateR")%>'></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label6" runat="server" Text='<%# Eval("Diplome")%>'></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label7" runat="server" Text='<%# Eval("GSP")%>'></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label8" runat="server" Text='<%# Eval("Structure")%>'></asp:Label>
                            </td>
                            <td class="actions">
                                <asp:Label ID="Idemp" runat="server" Text='<%# Eval("IdEmp")%>' Visible="false"></asp:Label>
                                <asp:Button ID="adduser" CssClass="adduser" runat="server" Text="Creer un compte" OnClick="adduser_Click" />
                                <asp:Button ID="mod" CssClass="mod" runat="server" Text="Modifier" OnClick="mod_Click" />
                                <asp:Button ID="sup" CssClass="sup" runat="server" Text="Suprimer" OnClick="sup_Click" />
                            </td>
                        </tr>
                    </ItemTemplate>
                    <FooterTemplate>
                        </table>
                    </FooterTemplate>
                </asp:Repeater>
            </div>
            <div class="btn">
                <asp:Button ID="add" CssClass="BtnAdd" runat="server" Text="Ajouter un Employe" OnClick="add_Click" />
            </div>
        </div>
    </div>
    <div runat="server" id="PopUpContainer" class="AddPopUp" visible="false">
        <div runat="server" id="addPopUp" class="popup" visible="false">
            <table class="addtab">
                <tr>
                    <td style="text-align: center;">
                        <asp:Label ID="nom" CssClass="nom" runat="server" Text="Nom :"></asp:Label></td>
                    <td style="text-align: center;">
                        <asp:TextBox ID="EnterNom" CssClass="prenom" runat="server" Width="95%" Height="80%"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center;">
                        <asp:Label ID="prenom" runat="server" Text="Prenom :"></asp:Label></td>
                    <td style="text-align: center;">
                        <asp:TextBox ID="EnterPrenom" runat="server" Width="95%" Height="80%"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center;">
                        <asp:Label ID="fonction" runat="server" Text="Fonction :"></asp:Label></td>
                    <td style="text-align: center;">
                        <asp:TextBox ID="EnterFonction" runat="server" Width="95%" Height="80%"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center;">
                        <asp:Label ID="dateN" runat="server" Text="Date de Naissance :"></asp:Label></td>
                    <td style="text-align: center;">
                        <asp:TextBox ID="EnterDateN" runat="server" TextMode="date" Width="95%" Height="80%"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center;">
                        <asp:Label ID="dateR" runat="server" Text="Date de Recrutement :"></asp:Label></td>
                    <td style="text-align: center;">
                        <asp:TextBox ID="EnterDateR" runat="server" TextMode="date" Width="95%" Height="80%"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center;">
                        <asp:Label ID="diplome" runat="server" Text="Diplome :"></asp:Label></td>
                    <td style="text-align: center;">
                        <asp:TextBox ID="EnterDiplome" runat="server" Width="95%" Height="80%"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center;">
                        <asp:Label ID="gsp" runat="server" Text="Groupe socio-professionnelle :"></asp:Label></td>
                    <td style="text-align: center;">
                        <asp:DropDownList Width="95%" Height="80%" ID="ChooseGsp" runat="server" DataSourceID="GSPlist" DataTextField="GSP" DataValueField="GSP">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="GSPlist" runat="server" ConnectionString="<%$ ConnectionStrings:BD_ENIEM %>" SelectCommand="SELECT DISTINCT GSP FROM Employes"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center;">
                        <asp:Label ID="structure" runat="server" Text="Nom Structure :"></asp:Label></td>
                    <td style="text-align: center;">
                        <asp:DropDownList Width="95%" Height="80%" ID="ChooseStructure" runat="server" DataSourceID="STRUCTURElist" DataTextField="Nom_Structure" DataValueField="ID_Structure">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="STRUCTURElist" runat="server" ConnectionString="<%$ ConnectionStrings:BD_ENIEM %>" SelectCommand="SELECT [ID_Structure], [Nom_Structure] FROM [Structures]"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="btnTD" style="text-align:center;">
                        <asp:Button ID="ajouter" CssClass="PopUpBtn" runat="server" Text="Ajouter" OnClick="ajouter_Click" Height="100%" />
                        <asp:Button ID="Addannuler" CssClass="annulerBtn" runat="server" Text="Annuler" OnClick="Addannuler_Click" Height="100%" />
                    </td>
                </tr>
            </table>
        </div>
        <div runat="server" id="modPopUp" class="popup" visible="false">
            <table class="modtab">
                <tr>
                    <td>
                        <asp:Label ID="Label8" runat="server" Text="Nom :" ></asp:Label></td>
                    <td>
                        <asp:TextBox ID="TextBox1" CssClass="tb1" runat="server" Width="95%" Height="80%"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label9" runat="server" Text="Prenom :"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="TextBox2" CssClass="tb2" runat="server" Width="95%" Height="80%"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label10" runat="server" Text="Fonction :" ></asp:Label></td>
                    <td>
                        <asp:TextBox ID="TextBox3" CssClass="tb3" runat="server" Width="95%" Height="80%"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label11" runat="server" Text="Date de Naissance :"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="TextBox4" CssClass="tb4" runat="server" TextMode="DateTime" Width="95%" Height="80%"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label12" runat="server" Text="Date de Recrutement :"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="TextBox5" CssClass="tb5" runat="server" TextMode="DateTime" Width="95%" Height="80%"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label13" runat="server" Text="Diplome :"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="TextBox6" CssClass="tb6" runat="server" Width="95%" Height="80%"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label14" runat="server" Text="Groupe socio-professionnelle :" ></asp:Label></td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" CssClass="ddl1" runat="server" Width="95%" Height="80%" DataSourceID="GSPlist" DataTextField="GSP" DataValueField="GSP">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label15" runat="server" Text="Structure :" ></asp:Label></td>
                    <td>
                        <asp:DropDownList ID="DropDownList2" CssClass="ddl1" runat="server" Width="95%" Height="80%" DataSourceID="STRUCTURElist" DataTextField="Nom_Structure" DataValueField="ID_Structure">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="btnTD">
                        <asp:Button ID="Modifier" CssClass="PopUpBtn" runat="server" Text="Modifier" OnClick="Modifier_Click" />
                        <asp:Button ID="Modannuler" CssClass="annulerBtn" runat="server" Text="Annuler" OnClick="Modannuler_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>
