<%@ Page Title="" Language="C#" MasterPageFile="~/Membership/Members.master" AutoEventWireup="true" CodeFile="AdminUsers.aspx.cs" Inherits="Administration_AdminUsers" %>

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
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="UserId" DataSourceID="AdminUsersDataSource" OnRowUpdated="GridView1_RowUpdated" OnSelectedIndexChanging="GridView1_SelectedIndexChanging" >
        <Columns>
            
            <asp:CommandField ShowEditButton="True" />
            <asp:TemplateField HeaderText="CompanyID" SortExpression="CompanyID">
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="CompanyDataSource" DataTextField="Name" SelectedValue=<%#Bind("CompanyID")%> DataValueField="CompanyID"></asp:DropDownList>
                    <asp:SqlDataSource runat="server" ID="CompanyDataSource" ConnectionString='<%$ ConnectionStrings:LeadsConnectionString %>' SelectCommand="SELECT * FROM [Company]"></asp:SqlDataSource>
                    
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("CompanyID") %>'></asp:Label>

                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="LastName" SortExpression="LastName">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Width="80px" Text='<%# Bind("LastName") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("LastName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="FirstName" SortExpression="FirstName">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Width="80px" Text='<%# Bind("FirstName") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("FirstName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Birthday" SortExpression="Birthday">
                <EditItemTemplate>
                    <asp:TextBox ID="newBirthdayTextBox" runat="server" Width="80px" Text='<%# Bind("Birthday") %>'></asp:TextBox>
                    <ajaxToolkit:CalendarExtender ID="CalendarExtender1" TargetControlID="newBirthdayTextBox" runat="server"></ajaxToolkit:CalendarExtender>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("Birthday") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Address" SortExpression="Address">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" TextMode="MultiLine" Width="120px" Text='<%# Bind("Address") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("Address") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Phone" SortExpression="Phone">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox6" runat="server" Width="80px" Text='<%# Bind("Phone") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("Phone") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Phone2" SortExpression="Phone2">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox7" runat="server" Width="80px" Text='<%# Bind("Phone2") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("Phone2") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Email" SortExpression="Email">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label8" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
           
            <asp:HyperLinkField DataNavigateUrlFields="Email" DataNavigateUrlFormatString="AdminUserInfo.aspx?Email={0}" Text="More info" />
           
            <asp:CommandField SelectText="Itineraries" ShowSelectButton="True" />
           
        </Columns>
     </asp:GridView>
     <asp:SqlDataSource ID="AdminUsersDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:LeadsConnectionString %>" SelectCommand="SELECT * FROM [UserProfiles] WHERE ([Email] = @Email)" UpdateCommand="UPDATE       UserProfiles
SET                CompanyID = @CompanyID, LastName = @LastName, FirstName = @FirstName, Birthday = @Birthday, Address = @Address, Phone = @Phone, Phone2 = @Phone2, Email = @Email
WHERE UserId = @UserId">
         <SelectParameters>
             <asp:QueryStringParameter Name="Email" QueryStringField="Email" Type="String" />
         </SelectParameters>
         <UpdateParameters>
             <asp:Parameter Name="CompanyID" Type="Int32" />
             <asp:Parameter Name="LastName" />
             <asp:Parameter Name="FirstName" />
             <asp:Parameter Name="Birthday" Type="DateTime"/>
             <asp:Parameter Name="Address" />
             <asp:Parameter Name="Phone" />
             <asp:Parameter Name="Phone2" />
             <asp:Parameter Name="Email" />
             <asp:Parameter Name="UserId" />
         </UpdateParameters>
     </asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>

