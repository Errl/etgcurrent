<%@ Page Title="" Language="C#" MasterPageFile="~/Membership/Members.master" AutoEventWireup="true" CodeFile="ItineraryDetails.aspx.cs" Inherits="Membership_ItineraryDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div class="span8">
    <p>
        <asp:HyperLink ID="BackLink" runat="server" 
            NavigateUrl="~/Membership/Itinerary.aspx">&lt;&lt; Back to Itinerary List</asp:HyperLink>
    </p>
    <asp:DetailsView ID="DetailsView1"  runat="server" AutoGenerateRows="False" DataKeyNames="ItineraryId" DataSourceID="ItineraryDetailsSource" Height="500px" Width="80%" BorderStyle="None" CellPadding="15" GridLines="Horizontal">
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
            
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="ItineraryDetailsSource" runat="server" ConnectionString="<%$ ConnectionStrings:LeadsConnectionString %>" SelectCommand="SELECT * FROM [PaxItinerary] WHERE ([ItineraryId] = @ItineraryId)" >
        <SelectParameters>
            <asp:SessionParameter SessionField="ID" Name="ItineraryId" Type="Object" ></asp:SessionParameter>



        </SelectParameters>
    </asp:SqlDataSource>

    </div>
    <div id="sidebar" class="span3" style="padding-top:25px;">
        <h4>Passports</h4>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Passport.aspx">How can we help get your passport?</asp:HyperLink>
        <br /><br />
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Passport.aspx">Expedited passport pricing</asp:HyperLink>
        <br /><br />
        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/PassportForm.aspx">Apply for your expedited passport now!</asp:HyperLink>
        <br /><br />
        <%--<h4>Visas</h4>
        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Passport.aspx">How can we help get your passport?</asp:HyperLink>
        <br /><br />
        <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Passport.aspx">Expedited passport pricing</asp:HyperLink>--%>
        <br /><br />
        <iframe src="http://www.flightstats.com/go/weblet?guid=81a0431c2371c6db:-1d1abd63:143548c6123:3a35&weblet=status&action=display" frameborder="0" scrolling="auto"  width="300" height="400"></iframe>
    <div style="font-family: Arial, sans-serif; font-size: 7pt;">
        Flight information is provided by <a target="_blank" href="http://www.flightstats.com">FlightStats</a>, and is subject to the FlightStats <a target="_blank" href="http://www.flightstats.com/go/About/termsOfUse.do">Terms of Use</a>. 

    </div>
    </div>

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="Server">
   

</asp:Content>

