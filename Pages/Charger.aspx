<%@ Page Title="" Language="C#" MasterPageFile="~/page.Master" AutoEventWireup="true" CodeBehind="Charger.aspx.cs" Inherits="Login_Eniem.Charger" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Content/ChargerStyle.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <div runat="server" id="container" class="container" visible="true">
         <div class="infos">
                 <asp:Label ID="Counter" runat="server" Text="" CssClass="Count"></asp:Label>
                  <div class="div1">
                     <asp:Label runat="server" Text="Intitulé : <br/>" CssClass="headers" Width="100%"></asp:Label>
                     <asp:Label ID="intituleLabel" runat="server" Text='<%# Bind("Intitule_F") %>' CssClass="labels"></asp:Label>
                  </div>
             <div class="div2">
                 <asp:Label runat="server" Text="Raison : <br/>" CssClass="headers"></asp:Label>
                 <asp:Label ID="raisonLabel" runat="server" Text='<%# Bind("Raison_F") %>' CssClass="labels"></asp:Label>
             </div>
             <div class="div3">
                 <asp:Label runat="server" Text="Nombre d'agent : <br/>" CssClass="headers"></asp:Label>
                 <asp:Label ID="nombreLabel" runat="server" Text='<%# Bind("Nombre_Agn") %>' CssClass="labels"></asp:Label>
             </div>
             <div class="div4">
                 <asp:Label runat="server" Text="Objectif de la formation : <br/>" CssClass="headers"></asp:Label>
                 <asp:Label ID="objectifLabel" runat="server" Text='<%# Bind("Objectif_F") %>' CssClass="labels"></asp:Label>
             </div>
             <div class="div5">
                 <asp:Label runat="server" Text="Type de formation : <br/>" CssClass="headers"></asp:Label>
                 <asp:Label ID="typeLabel" runat="server" Text='<%# Bind("Type_F") %>' CssClass="labels"></asp:Label>
             </div>
             <div class="div6">
                 <asp:Label runat="server" Text="Programme a devlopper : <br/>" CssClass="headers"></asp:Label>
                 <textarea id="programmeLabel" runat="server" value='<%# Bind("Programme_F_Prop") %>' class="Proglabel" rows="3" cols="90" contenteditable="false" draggable="false" readonly="readonly"></textarea>
             </div>
             <div class="div7">
                 <asp:Label runat="server" Text="Durée Estimée : <br/>" CssClass="headers"></asp:Label>
                 <asp:Label ID="dureeLabel" runat="server" Text='<%# Bind("Duree_E") %>' CssClass="labels"></asp:Label>
             </div>
             <div class="div8">
                 <asp:Label runat="server" Text="Lieu de déroulement : <br/>" CssClass="headers"></asp:Label>
                 <asp:Label ID="lieuLabel" runat="server" Text='<%# Bind("Lieu_D") %>' CssClass="labels"></asp:Label>
             </div>
                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:BD_ENIEM %>'
                                    SelectCommand="SELECT [Nom_Structure], [Quota_Actions] FROM [Structures]"></asp:SqlDataSource>
                 <div class="buttons">
                     <asp:Button ID="Suivant" runat="server" OnClick="Suivant_Click" Text="Suivant" CssClass="button" />
                     <asp:Button ID="Precedent" runat="server" OnClick="Precedent_Click" Text="Precedent" CssClass="button" />
                 </div>

         </div>
         <div class="form">
             <table style="width:100%;height:100%;">
                 <thead>
                     <tr>
                         <td colspan="2" style="text-align:right;"><asp:Label ID="Count" runat="server" Style="text-align: right; width:100%;"></asp:Label></td>
                     </tr>
                 </thead>
                 <tr>
                     <td>
                         <asp:Label ID="dureeP" runat="server" Text="Durée Prévisionnelle" class="label"></asp:Label>
                     </td>
                     <td>
                         <asp:TextBox ID="EnterDureeP" runat="server" class="textbox" TextMode="Number" Width="70%"></asp:TextBox>
                         <asp:DropDownList ID="Choose" runat="server" class="textbox" Width="25%">
                             <asp:ListItem>Heures</asp:ListItem>
                             <asp:ListItem>Jours</asp:ListItem>
                             <asp:ListItem>Mois</asp:ListItem>
                             <asp:ListItem>Années</asp:ListItem>
                         </asp:DropDownList>
                         <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="EnterDureeP" Type="Integer"
                             MinimumValue="1" MaximumValue="100" ErrorMessage="Veuillez saisir une valeur superieur a 0"
                             Display="Dynamic" ForeColor="Red">
                         </asp:RangeValidator>
                     </td>
                 </tr>
                 <tr>
                     <td>
                         <asp:Label ID="dateP" runat="server" Text="Date Prévue" class="label"></asp:Label>
                     </td>
                     <td>
                         <asp:TextBox ID="EnterDateP" runat="server" class="textbox" TextMode="Date"></asp:TextBox>
                     </td>
                 </tr>
                 <tr>
                     <td>
                         <asp:Label ID="budget" runat="server" Text="Budget en (DA)" class="label"></asp:Label>
                     </td>
                     <td>
                         <asp:TextBox ID="EnterBudget" runat="server" class="textbox" TextMode="Number"></asp:TextBox>
                     </td>
                 </tr>
                 <tr>
                     <td colspan="2">
                         <asp:Label ID="vide" runat="server" class="label"></asp:Label>
                     </td>
                 </tr>
                 <tr>
                     <td colspan="2">
                         <div class="buttons" style="display: flex; justify-content: right; align-items: end;height:100%;">
                             <asp:Button ID="valider" CssClass="button" runat="server" Text="Valider" OnClick="valider_Click"/>
                             <asp:Button ID="restore" CssClass="button" runat="server" Text="Annuler" OnClick="restore_Click"/>
                         </div>
                     </td>
                 </tr>
             </table>


         </div>
    </div>

    <div runat="server" id="container2" class="container2" visible="false">
        <section id="BesoinForm" class="BesoinForm" runat="server" visible="true">
            <table>
                <tr style="height:fit-content">
                    <th colspan="2" style="height: fit-content;border-bottom: 1px solid darkblue;">
                        <h1 style="margin: 0; padding: 0; font-family: 'Times New Roman', Times, serif; font-size: 25px; font-weight: bolder;">Courrier et Expression des Besoins en formation :</h1>
                    </th >
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label1" CssClass="Label1" runat="server" Text="structures concernées et Quotas: "></asp:Label>
                    </td>
                    <td>
                        <asp:Button ID="selectStructures" CssClass="BtnSlt" runat="server" Text="Sélectionnez" OnClick="selectStructures_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" CssClass="Label2" runat="server" Text="Date au plus tard"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="TextBox2" CssClass="TextBox2" TextMode="Date"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" CssClass="Label3" runat="server" Text="Chef Département"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="TextBox3" CssClass="TextBox3"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label4" CssClass="Label4" runat="server" Text="Doc N°"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="TextBox4" CssClass="TextBox4"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label5" CssClass="Label5" runat="server" Text="Etablie le"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="TextBox5" TextMode="Date" CssClass="TextBox5"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="besoin" runat="server" Text="Générer" OnClick="besoin_Click" CssClass="BtnBsn" />
                    </td>
                </tr>
            </table>
            </section>
        <section id="PopUpStructure" class="PopUpContainer2" runat="server" visible="false">
            <asp:GridView runat="server" ID="structures" CssClass="structures" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="100%" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
                <Columns>
                    <asp:BoundField DataField="Nom_Structure" HeaderText="Nom_Structure" SortExpression="Nom_Structure" />
                    <asp:TemplateField HeaderText="Quota_Actions" SortExpression="Quota_Actions">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Quota_Actions") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Quota_Actions", "{0:D}") %>'></asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="#ed1b24" ForeColor="#003399" />
                <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                <PagerStyle BackColor="#ed1b24" ForeColor="#003399" HorizontalAlign="Left" />
                <RowStyle BackColor="White" ForeColor="#003399" />
                <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                <SortedAscendingCellStyle BackColor="#EDF6F6" />
                <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                <SortedDescendingCellStyle BackColor="#D6DFDF" />
                <SortedDescendingHeaderStyle BackColor="#002876" />
            </asp:GridView>
            <asp:Button ID="ValiderSelect" runat="server" Text="Valider la selection" OnClick="ValiderSelect_Click" />
        </section>
    </div>
</asp:Content>

