<%@ Page Title="" Language="C#" MasterPageFile="~/Membership/Members.master" AutoEventWireup="true" CodeFile="AdditionalUserInfo.aspx.cs" Inherits="Membership_AdditionalUserInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:Label ID="SettingsUpdatedMessage" runat="server"
     Text="Your settings have been updated."
     EnableViewState="false"
     Visible="false"></asp:Label>
    <asp:GridView ID="GridView1" runat="server" ShowHeader="False" AutoGenerateColumns="False" DataKeyNames="UserId" DataSourceID="UserProfileDataSource" OnRowUpdated="GridView1_RowUpdated" GridLines="None" CellPadding="15" CellSpacing="4" Font-Size="Medium">
        <Columns>
           
            <asp:HyperLinkField NavigateUrl="~/ChangePassword.aspx" Text="change pwd" />
           
            <asp:CommandField ShowEditButton="True" />
           
            <asp:TemplateField HeaderText="Last Name" SortExpression="Last Name">
                <EditItemTemplate>
                    <asp:TextBox ID="LastNameTextBox" runat="server" Width="80px" Text='<%# Bind("LastName") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("LastName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="First Name" SortExpression="First Name">
                <EditItemTemplate>
                    <asp:TextBox ID="FirstName" runat="server" Width="80px" Text='<%# Bind("FirstName") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("FirstName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Birthday" SortExpression="Birthday">
                <EditItemTemplate>
                    <asp:TextBox ID="Birthday" runat="server" Width="70px" Text='<%# Bind("Birthday") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("Birthday") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Address" SortExpression="Address">
                <EditItemTemplate>
                    <asp:TextBox ID="Address" runat="server" Height="80px" TextMode="MultiLine" Text='<%# Bind("Address") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("Address") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Phone" SortExpression="Phone">
                <EditItemTemplate>
                    <asp:TextBox ID="Phone" runat="server"  Width="90px" Text='<%# Bind("Phone") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("Phone") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Email" SortExpression="Email">
                <EditItemTemplate>
                    <asp:TextBox ID="Email" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            
            <asp:HyperLinkField NavigateUrl="~/membership/Itinerary.aspx" Text="Itineraries" />
            
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="UserProfileDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:LeadsConnectionString %>" OnSelecting="UserProfileDataSource_Selecting1" SelectCommand="SELECT * FROM [UserProfiles] WHERE ([UserId] = @UserId)" UpdateCommand="UPDATE       UserProfiles SET 
 LastName = @LastName,
 FirstName = @FirstName,
 Birthday = @Birthday,
 Address = @Address,
 Phone = @Phone,

 Email = @Email,
Agent = @Agent 
WHERE        (UserId = @UserId)
">
        <SelectParameters>
            <asp:Parameter Name="UserId" Type="Object" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="LastName" />
            <asp:Parameter Name="FirstName" />
            <asp:Parameter Name="Birthday" />
            <asp:Parameter Name="Address" />
            <asp:Parameter Name="Phone" />
            <asp:Parameter Name="Email" />
            <asp:Parameter Name="Agent" />
            <asp:Parameter Name="UserId" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>

