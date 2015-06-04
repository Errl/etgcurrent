<%@ Page Title="" Language="C#" MasterPageFile="~/Membership/Members.master" AutoEventWireup="true" CodeFile="Itinerary.aspx.cs" Inherits="Membership_Itinerary" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ItineraryId" DataSourceID="ItineraryDataSource" CellPadding="10" CellSpacing="3" Font-Size="Medium" GridLines="Horizontal" OnSelectedIndexChanging="GridView1_SelectedIndexChanging">
        <Columns>

            <asp:BoundField DataField="BookingDate" HeaderText="BookingDate" SortExpression="BookingDate" />
            <asp:BoundField DataField="OutboundDate" HeaderText="OutboundDate" SortExpression="OutboundDate" />
            <asp:BoundField DataField="ReturnDate" HeaderText="ReturnDate" SortExpression="ReturnDate" />
            <asp:BoundField DataField="Airline" HeaderText="Airline" SortExpression="Airline" />
            <asp:BoundField DataField="Confirmation" HeaderText="Confirmation" SortExpression="Confirmation" />
            <asp:CommandField SelectText="View Itinerary" ShowSelectButton="True" />


        </Columns>
           <HeaderStyle ForeColor="#6666FF" />
           </asp:GridView>
    <asp:SqlDataSource ID="ItineraryDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:LeadsConnectionString %>" SelectCommand="SELECT * FROM [PaxItinerary] WHERE ([UserId] = @UserId)" OnSelecting="ItineraryDataSource_Selecting">
        <SelectParameters>
            <asp:Parameter Name="UserId" Type="Object" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>

