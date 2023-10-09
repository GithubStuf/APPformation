<%@ Page Title="" Language="C#" MasterPageFile="~/page.Master" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="Plans.aspx.cs" Inherits="Login_Eniem.Plans" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Content/PlanStyle.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <div class="container">
        <div>

            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Voir le plan Global" />
            <asp:Button ID="Button2" runat="server" Text="Generer les fiches techniques" OnClick="Button2_Click" />

        </div>
        <asp:Repeater runat="server" ID="repeater">
            <HeaderTemplate>
                <table>
                    <tr>
                        <th class="auto-style7" rowspan="2">N°</th>
                        <th class="auto-style7" rowspan="2">Processus</th>
                        <th class="auto-style7" rowspan="2">Designation</th>
                        <th class="auto-style7" rowspan="2">Les participants</th>
                        <th class="auto-style7" colspan="3">Nombre agents par GSP</th>
                        <th class="auto-style7" rowspan="2">Total agent</th>
                        <th class="auto-style7" rowspan="2">Durée previsionnel en J</th>
                        <th class="auto-style7" rowspan="2">Date prévue</th>
                        <th class="auto-style7" rowspan="2">Budget</th>
                        <th class="auto-style7" rowspan="2">Coût P/H</th>
                    </tr>
                    <tr>
                        <td class="auto-style6">C</td>
                        <td class="auto-style6">M</td>
                        <td class="auto-style6">E</td>
                    </tr>
            </HeaderTemplate>
            <ItemTemplate>
                <tr>
                    <td class="auto-style7">
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("FormationInfo.N_Action_F") %>'></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("FormationInfo.Nom_Structure") %>'></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("FormationInfo.Intitule_F") %>'></asp:Label>
                    </td>
                    <td>
                        <asp:Button ID="afficher" runat="server" Text="Afficher" OnClick="afficher_Click" CommandArgument='<%# Eval("FormationInfo.N_Action_F") %>'/>
                    </td>
                    <td class="auto-style7">
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("CadreCount") %>'></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("MaitriseCount") %>'></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("ExecutionCount") %>'></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("FormationInfo.Nombre_Agn") %>'></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:Label ID="Label8" runat="server" Text='<%# Eval("FormationInfo.Duree_Prev") %>'></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:Label ID="Label9" runat="server" Text='<%# Bind("FormationInfo.Date_Prev", "{0:d}") %>'></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:Label ID="Label10" runat="server" Text='<%# Eval("FormationInfo.Budget") %>'></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:Label ID="Label11" runat="server" Text='<%# Eval("FormationInfo.Cout_H") %>'></asp:Label>
                    </td>
                </tr>
            </ItemTemplate>
            <FooterTemplate>
                </table>


            </FooterTemplate>
        </asp:Repeater>
    </div>
    <div runat="server" id="particip" class="par" style="position:absolute;top:10%; width:100%;height:100%;display:flex;justify-content:center;align-items:center;" visible="false">
        <asp:GridView ID="participants" runat="server" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
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
    </div>
</asp:Content>
        
           
           
           

