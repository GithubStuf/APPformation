<%@ Page Title="" Language="C#" MasterPageFile="~/PageMaitreRS.Master" AutoEventWireup="true" CodeBehind="Responsable.aspx.cs" Inherits="Login_Eniem.Pages.Responsable" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Content/ResponsableStyle.css" rel="stylesheet" />   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div runat="server" id="container" class="container" visible="true">
        <div runat="server" id="content" class="content">
            <table class="resTab">
                <tr>
                    <th colspan="2" style="text-align: center;">
                        <asp:Label CssClass="H1" runat="server"> Creation du besoin :</asp:Label>
                    </th>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="Label1" runat="server" Text="Intitulé : " ForeColor="Black" Style="margin-left: 10px; font-weight: bolder"></asp:Label><asp:RequiredFieldValidator ID="Req1" runat="server" ErrorMessage="Champ vide!"
                            ControlToValidate="Intitule" ValidationGroup="Validation" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="Intitule" runat="server" Width="100%"></asp:TextBox>

                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="Label2" runat="server" Text="Raisons : " ForeColor="Black" Style="margin-left: 10px; font-weight: bolder"></asp:Label><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Champ vide!"
                            ControlToValidate="Raisons" ValidationGroup="Validation" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="Raisons" runat="server" Width="100%"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="Label3" runat="server" Text="Objectifs : " ForeColor="Black" Style="margin-left: 10px; font-weight: bolder"></asp:Label><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Champ vide!"
                            ControlToValidate="Objectifs" ValidationGroup="Validation" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="Objectifs" runat="server" Width="100%" Height="90px" Columns="40" Rows="40" TextMode="MultiLine" EnableTheming="True"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="Label4" runat="server" Text="Type : " ForeColor="Black" Style="margin-left: 10px; font-weight: bolder"></asp:Label><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Champ vide!"
                            ControlToValidate="Type" ValidationGroup="Validation" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:DropDownList ID="Type" runat="server">
                            <asp:ListItem>Séminaire</asp:ListItem>
                            <asp:ListItem>Formation spécifique</asp:ListItem>
                            <asp:ListItem>Formation spécialisée (Diplômante)</asp:ListItem>
                            <asp:ListItem>Perfectionnement professionnel (mise à niveau)</asp:ListItem>
                            <asp:ListItem>Formation sur le tas</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="Label5" runat="server" Text="Personnel a former : " ForeColor="Black" Style="margin-left: 10px; font-weight: bolder"></asp:Label>
                        <div style="justify-content: space-between;">
                            <asp:Button ID="aFormer" CssClass="Bpersonne" runat="server" Text="Selectionner le personnel a former" OnClick="aFormer_Click" />
                            <asp:Button ID="BtnVoir" CssClass="BtnVoir" runat="server" Text="Voir" Visible="false" OnClick="BtnVoir_Click" />

                            <div runat="server" id="divlist" cssclass="listContainer" visible="false"
                                style="position: absolute; top: 10%; width: 50%; max-height: 60%;overflow-y: scroll; height: 60%; background-color: gray; color: white;">
                                <asp:GridView ID="GV" runat="server" AutoGenerateColumns="False" Width="100%" Height="100%">
                                    <Columns>
                                        <asp:BoundField DataField="nomPrenom" HeaderText="Nom et Prenom" HeaderStyle-HorizontalAlign="Left" />
                                        <asp:BoundField DataField="fonction" HeaderText="Fonction" HeaderStyle-HorizontalAlign="Left" />
                                        <asp:BoundField DataField="gsp" HeaderText="GSP" HeaderStyle-HorizontalAlign="Left" />
                                    </Columns>
                                </asp:GridView>


                            </div>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="Label6" runat="server" Text="Programme : " ForeColor="Black" Style="margin-left: 10px; font-weight: bolder"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Champ vide!"
                            ControlToValidate="pro" ValidationGroup="Validation" ForeColor="Red"></asp:RequiredFieldValidator>
                        <div style="justify-content: space-around;" class="auto-style4">
                            <asp:Button ID="btnShowPopup" CssClass="Bshow" runat="server" Text="Définire le programme" OnClick="btnShowPopup_Click" />
                        </div>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="Label7" runat="server" Text="Durée Estimer : " ForeColor="Black" Style="margin-left: 10px; font-weight: bolder"></asp:Label><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Champ vide!"
                            ControlToValidate="Durée" ValidationGroup="Validation" ForeColor="Red"></asp:RequiredFieldValidator>
                        <div class="dropdown-container">
                            <asp:TextBox ID="Durée" CssClass="TextBox4" runat="server"></asp:TextBox>
                            <asp:DropDownList ID="DropDownList3" CssClass="DropDownList3" runat="server">
                                <asp:ListItem>Jour</asp:ListItem>
                                <asp:ListItem>Mois</asp:ListItem>
                                <asp:ListItem>Année</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label8" runat="server" Text="Lieu : " ForeColor="Black" Style="margin-left: 10px; font-weight: bolder"></asp:Label>
                        <asp:RadioButtonList ID="Lieu" runat="server" AutoPostBack="True" CellPadding="10"
                            RepeatLayout="flow" RepeatDirection="Horizontal" ForeColor="Black">
                            <asp:ListItem>Interne</asp:ListItem>
                            <asp:ListItem>Externe</asp:ListItem>
                        </asp:RadioButtonList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Veuillez Choisir!"
                            ControlToValidate="Lieu" ValidationGroup="Validation" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td colspan="2">
                        <asp:Button ID="Creation" CssClass="Bcreation" runat="server" Text="Créer" OnClick="Creation_Click" ValidationGroup="Validation" />
                    </td>
                </tr>
            </table>
        </div>
    </div>
    
    <div runat="server" id="pupCon" class="popupContainer" visible="false">
        <div runat="server" id="SelectEmp" class="SelectEmp" visible="false">
            <asp:Repeater ID="repeaterPersonnel" runat="server" >
                <HeaderTemplate>
                    <table border="1" id="table1">
                        <tr>
                            <th style="text-align: center">
                                <h1>Nom & Prenom</h1>
                            </th>
                            <th style="text-align: center">
                                <h1>Fonction</h1>

                            </th>
                            <th style="text-align: center">
                                <h1>GSP</h1>

                            </th>
                            <th style="text-align: center">
                                <h1>Selectionner</h1>

                            </th>
                        </tr>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td style="text-align: center">
                            <asp:Label ID="nomPrenomLabel" runat="server" Text='<%# Eval("Nom") + " " + Eval("Prenom") %>'></asp:Label></td>
                        <td style="text-align: center">
                            <asp:Label ID="fonctionLabel" runat="server" Text='<%# Eval("Fonction") %>'></asp:Label></td>
                        <td style="text-align: center">
                            <asp:Label ID="gspLabel" runat="server" Text='<%# Eval("Gsp") %>'></asp:Label></td>
                        <td style="text-align: center">
                            <asp:Label ID="idemp" runat="server" Visible="false" Text='<%# Eval("ID_EMP") %>'></asp:Label>
                            <asp:CheckBox ID="CB" runat="server" />
                        </td>
                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                    </table>
                </FooterTemplate>
            </asp:Repeater>
            <asp:Button runat="server" ID="add" CssClass="close" Text="Valider" OnClick="add_Click"></asp:Button>
        </div>

        <div runat="server" id="SelectProg" class="programme" visible="false">
            <asp:Label runat="server" ID="text" CssClass="ProgTitre" Visible="true">Programme a developper :</asp:Label>
            <asp:TextBox Visible="true" CssClass="ProgText" ID="pro" runat="server" Columns="20" Rows="40" TextMode="MultiLine"></asp:TextBox>
            <asp:Button runat="server" Visible="true" ID="closeButton" CssClass="Save" Text="Save" OnClick="closeButton_Click"></asp:Button>
        </div>
    </div>

    <div runat="server" id="message" class="message" visible="false">
        <asp:Label runat="server" ID="MSG" CssClass="PopUpMsg" Text="Le besoin en formation a été créé avec succès."></asp:Label>
    </div>
</asp:Content>

