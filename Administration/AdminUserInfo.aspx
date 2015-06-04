<%@ Page Title="" Language="C#" MasterPageFile="~/Membership/Members.master" AutoEventWireup="true" CodeFile="AdminUserInfo.aspx.cs" Inherits="Administration_AdminUserInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    
    <asp:Label ID="SettingsUpdatedMessage" runat="server"
     Text="Your settings have been updated."
     EnableViewState="false"
     Visible="false"></asp:Label>
    <p>
        <asp:HyperLink ID="BackLink" runat="server" 
            NavigateUrl="~/Administration/AdminManageUsers.aspx">&lt;&lt; Back to Administration home</asp:HyperLink>
    </p>
    <asp:GridView ID="MoreUserInfo" runat="server" AutoGenerateColumns="False" DataKeyNames="UserId" DataSourceID="SqlDataSource1" CellPadding="10" OnRowUpdated="MoreUserInfo_RowUpdated" CellSpacing="3" OnSelectedIndexChanging="MoreUserInfo_SelectedIndexChanging">
        <Columns>
           
            <asp:CommandField ShowEditButton="True" />
           
            <asp:TemplateField HeaderText="CreditCard" SortExpression="CreditCard">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Width="200px" Text='<%# Bind("CreditCard") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Width="200px" Text='<%# Bind("CreditCard") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Expiration" SortExpression="Expiration">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Width="35px" Text='<%# Bind("Expiration") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Width="35px" Text='<%# Bind("Expiration") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="SEC" SortExpression="SEC">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Width="35px" Text='<%# Bind("SEC") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Width="35px" Text='<%# Bind("SEC") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Passenger2" SortExpression="Passenger2">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Width="80px" Text='<%# Bind("Passenger2") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server"  Width="80px" Text='<%# Bind("Passenger2") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Passenger3" SortExpression="Passenger3">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Width="80px" Text='<%# Bind("Passenger3") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Width="80px" Text='<%# Bind("Passenger3") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Notes" SortExpression="Notes">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox6" runat="server" Width="120px" TextMode="MultiLine" Text='<%# Bind("Notes") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Width="120px" TextMode="MultiLine"  Text='<%# Bind("Notes") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="DateCreated" SortExpression="DateCreated">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox7" runat="server" Width="75px" Text='<%# Bind("DateCreated") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("DateCreated") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Agent" SortExpression="Agent">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox8" runat="server" Width="75px" Text='<%# Bind("Agent") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label8" runat="server" Text='<%# Bind("Agent") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField SelectText="Itineraries" ShowSelectButton="True" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LeadsConnectionString %>" SelectCommand="SELECT * FROM [UserProfiles] WHERE ([Email] = @Email)" UpdateCommand="UPDATE       UserProfiles
SET                CreditCard = @CreditCard, Expiration = @Expiration, SEC = @SEC, Passenger2 = @Passenger2, Passenger3 = @Passenger3, Notes = @Notes, DateCreated = @DateCreated, Agent = @Agent
WHERE UserId=@UserId">
        <SelectParameters>
            <asp:QueryStringParameter Name="Email" QueryStringField="Email" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="CreditCard" />
            <asp:Parameter Name="Expiration" />
            <asp:Parameter Name="SEC" />
            <asp:Parameter Name="Passenger2" />
            <asp:Parameter Name="Passenger3" />
            <asp:Parameter Name="Notes" />
            <asp:Parameter Name="DateCreated" />
            <asp:Parameter Name="Agent" />
            <asp:Parameter Name="UserId" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>

