<%@ Page Title="" Language="C#" MasterPageFile="~/Roles/Roles.master" AutoEventWireup="true" CodeFile="AdminItinerary.aspx.cs" Inherits="Administration_AdminItinerary" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="LoginContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:Label ID="SettingsUpdatedMessage" runat="server"
     Text="Your settings have been updated."
     EnableViewState="false"
     Visible="false"></asp:Label>
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ItineraryId" DataSourceID="ItineraryDataSource" OnSelectedIndexChanging="GridView1_SelectedIndexChanging" OnRowUpdated="GridView1_RowUpdated">
        <Columns>
           
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
            <asp:TemplateField ShowHeader="False">
                <ItemTemplate>
                    <asp:LoginView ID="LoginView2" runat="server">
                        <RoleGroups>
                            <asp:RoleGroup Roles="Administrators">
                                <ContentTemplate>
                                    <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                                </ContentTemplate>
                            </asp:RoleGroup>
                        </RoleGroups>
                    </asp:LoginView>
                    
                </ItemTemplate>
            </asp:TemplateField>
           <asp:BoundField DataField="ItineraryId" HeaderText="ItineraryId" SortExpression="ItineraryId" Visible="false" />
            <asp:BoundField DataField="BookingDate" HeaderText="BookingDate" SortExpression="BookingDate" />
            <asp:TemplateField HeaderText="OutboundDate" SortExpression="OutboundDate">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("OutboundDate") %>'></asp:TextBox>
                    <ajaxToolkit:CalendarExtender ID="CalendarExtender1" TargetControlID="TextBox1" runat="server"></ajaxToolkit:CalendarExtender>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("OutboundDate") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="ReturnDate" SortExpression="ReturnDate">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("ReturnDate") %>'></asp:TextBox>
                    <ajaxToolkit:CalendarExtender ID="CalendarExtender2" TargetControlID="TextBox2" runat="server"></ajaxToolkit:CalendarExtender>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("ReturnDate") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            <asp:BoundField DataField="AirlineTaxes" HeaderText="AirlineTaxes" SortExpression="AirlineTaxes" />
            <asp:BoundField DataField="PaxCardTaxes" HeaderText="PaxCardTaxes" SortExpression="PaxCardTaxes" />
          
            <asp:BoundField DataField="Notes" HeaderText="Notes" SortExpression="Notes" />
            
            <asp:BoundField DataField="Airline" HeaderText="Airline" SortExpression="Airline" />
            <asp:BoundField DataField="Confirmation" HeaderText="Confirmation" SortExpression="Confirmation" />
           
            <asp:CommandField SelectText="View" ShowSelectButton="True" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="ItineraryDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:LeadsConnectionString %>" SelectCommand="SELECT * FROM [PaxItinerary] WHERE ([UserId] = @UserId)" DeleteCommand="DELETE FROM PaxItinerary
WHERE ItienraryId=@ItineraryId" UpdateCommand="UPDATE       PaxItinerary
SET                BookingDate = @BookingDate, OutboundDate = @OutboundDate, ReturnDate = @ReturnDate, Price = @Price, AirlineTaxes = @AirlineTaxes, PaxCardTaxes = @PaxCardTaxes, Notes = @Notes, Airline = @Airline, 
                         Confirmation = @Confirmation
WHERE ItineraryId = @ItineraryId">
        <DeleteParameters>
            <asp:Parameter Name="ItineraryId" />
        </DeleteParameters>
        <SelectParameters>
            <asp:SessionParameter Name="UserId" SessionField="ID" Type="Object" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="BookingDate" />
            <asp:Parameter Name="OutboundDate" />
            <asp:Parameter Name="ReturnDate" />
            <asp:Parameter Name="Price" />
            <asp:Parameter Name="AirlineTaxes" />
            <asp:Parameter Name="PaxCardTaxes" />
            <asp:Parameter Name="Notes" />
            <asp:Parameter Name="Airline" />
            <asp:Parameter Name="Confirmation" />
            <asp:Parameter Name="ItineraryId" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <asp:LoginView ID="LoginView3" runat="server">
        <RoleGroups>
            <asp:RoleGroup Roles="Administrators">
                <ContentTemplate>
                    <asp:HyperLink ID="BackLink" runat="server"
                        NavigateUrl="~/Administration/AddItinerary.aspx">&lt;&lt; Add Itinerary</asp:HyperLink>
                </ContentTemplate>
            </asp:RoleGroup>
        </RoleGroups>
    </asp:LoginView>
    
</asp:Content>

