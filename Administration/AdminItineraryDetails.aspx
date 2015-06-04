<%@ Page Title="" Language="C#" MasterPageFile="~/Roles/Roles.master" AutoEventWireup="true" ValidateRequest="false" CodeFile="AdminItineraryDetails.aspx.cs" Inherits="Administration_AdminItineraryDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="LoginContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DetailsView ID="DetailsView1"  runat="server" AutoGenerateRows="False"  DataSourceID="AdminItinDetailsDataSource" Height="500px" Width="80%" BorderStyle="None" CellPadding="15" GridLines="Horizontal" HorizontalAlign="Center">
        <Fields>
            
            <asp:TemplateField HeaderText="Itinerary" ShowHeader="false" SortExpression="Itinerary">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Itinerary") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Itinerary") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Itinerary") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            
            <asp:TemplateField ShowHeader="False">
                <EditItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:LoginView ID="LoginView1" runat="server">
                        <RoleGroups>
                            <asp:RoleGroup Roles="Administrators">
                                <ContentTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                                </ContentTemplate>
                            </asp:RoleGroup>
                        </RoleGroups>
                    </asp:LoginView>
                    
                </ItemTemplate>
            </asp:TemplateField>
            
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="AdminItinDetailsDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:LeadsConnectionString %>" SelectCommand="SELECT [Itinerary] FROM [PaxItinerary] WHERE ([ItineraryId] = @ItineraryId)" UpdateCommand="UPDATE       PaxItinerary
SET                Itinerary = @Itinerary
WHERE ItineraryId = @ItineraryId">
        <SelectParameters>
            <asp:SessionParameter Name="ItineraryId" SessionField="ID" Type="Object" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Itinerary" />
            <asp:Parameter Name="ItineraryId" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>

