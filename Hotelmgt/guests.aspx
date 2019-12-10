<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="guests.aspx.cs" Inherits="Hotelmgt.guests" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <p>
        <br />
        <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" Text="Guests Registration Form"></asp:Label>
    </p>

    <asp:FormView ID="FormView1" runat="server" DataKeyNames="guestid" DataSourceID="SqlDataSource1" DefaultMode="Insert">
        <EditItemTemplate>
            GuestID:
            <asp:Label Text='<%# Eval("guestid") %>' runat="server" ID="guestidLabel1" />
            
            Name:
            <asp:TextBox Text='<%# Bind("name") %>' runat="server" ID="nameTextBox" />
            
            E-mail:
            <asp:TextBox Text='<%# Bind("email") %>' runat="server" ID="emailTextBox" />
            
            Phone:
            <asp:TextBox Text='<%# Bind("phone") %>' runat="server" ID="phoneTextBox" />
            
            Street Address:
            <asp:TextBox Text='<%# Bind("streetaddress") %>' runat="server" ID="streetaddressTextBox" />
            
            State:
            <asp:TextBox Text='<%# Bind("state") %>' runat="server" ID="stateTextBox" />
            
            Postalcode:
            <asp:TextBox Text='<%# Bind("postalcode") %>' runat="server" ID="postalcodeTextBox" />
            
            Country:
            <asp:TextBox Text='<%# Bind("country") %>' runat="server" ID="countryTextBox" />
            
            <asp:LinkButton runat="server"  Text="Update" CommandName="Update" ID="UpdateButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="Cancel" ValidationGroup="G1" CommandName="Cancel" ID="UpdateCancelButton" CausesValidation="False" />
        </EditItemTemplate>
        <InsertItemTemplate>
            GuestID:
            <asp:TextBox CssClass="form-control" Text='<%# Bind("guestid") %>' runat="server" ID="guestidTextBox" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="This field is required." ControlToValidate="guestidTextBox" ForeColor="red" ValidationGroup="G1"></asp:RequiredFieldValidator>
            <br />
            Name:
            <asp:TextBox CssClass="form-control" Text='<%# Bind("name") %>' runat="server" ID="nameTextBox" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="This field is required." ControlToValidate="nameTextBox" ForeColor="red" ValidationGroup="G1"></asp:RequiredFieldValidator>
            <br />
            E-mail:
            <asp:TextBox CssClass="form-control" Text='<%# Bind("email") %>' runat="server" ID="emailTextBox" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="This field is required." ControlToValidate="emailTextBox" ForeColor="red" ValidationGroup="G1"></asp:RequiredFieldValidator>
            <br />
            Phone:
            <asp:TextBox CssClass="form-control" Text='<%# Bind("phone") %>' runat="server" ID="phoneTextBox" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="This field is required." ControlToValidate="phoneTextBox" ForeColor="red" ValidationGroup="G1"></asp:RequiredFieldValidator>
            <br />
            Street Address:
            <asp:TextBox CssClass="form-control" Text='<%# Bind("streetaddress") %>' runat="server" ID="streetaddressTextBox" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="This field is required." ControlToValidate="streetaddressTextBox" ForeColor="red" ValidationGroup="G1"></asp:RequiredFieldValidator>
            <br />
            State:
            <asp:TextBox CssClass="form-control" Text='<%# Bind("state") %>' runat="server" ID="stateTextBox" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="This field is required." ControlToValidate="stateTextBox" ForeColor="red" ValidationGroup="G1"></asp:RequiredFieldValidator>
            <br />
            Postalcode:
            <asp:TextBox CssClass="form-control" Text='<%# Bind("postalcode") %>' runat="server" ID="postalcodeTextBox" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="This field is required." ControlToValidate="postalcodeTextBox" ForeColor="red" ValidationGroup="G1"></asp:RequiredFieldValidator>
            <br />
            Country:
            <asp:TextBox CssClass="form-control" Text='<%# Bind("country") %>' runat="server" ID="countryTextBox" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="This field is required." ControlToValidate="countryTextBox" ForeColor="red" ValidationGroup="G1"></asp:RequiredFieldValidator>
            <br />
            <asp:LinkButton ValidationGroup="G1" class="btn btn-success" runat="server" Text="Insert" CommandName="Insert" ID="InsertButton" CausesValidation="True" />&nbsp;<asp:LinkButton class="btn btn-success" runat="server" Text="Cancel" CommandName="Cancel" ID="InsertCancelButton" CausesValidation="False" />
        </InsertItemTemplate>
        <ItemTemplate>
            guestid:
            <asp:Label Text='<%# Eval("guestid") %>' runat="server" ID="guestidLabel" /><br />
            name:
            <asp:Label Text='<%# Bind("name") %>' runat="server" ID="nameLabel" /><br />
            email:
            <asp:Label Text='<%# Bind("email") %>' runat="server" ID="emailLabel" /><br />
            phone:
            <asp:Label Text='<%# Bind("phone") %>' runat="server" ID="phoneLabel" /><br />
            streetaddress:
            <asp:Label Text='<%# Bind("streetaddress") %>' runat="server" ID="streetaddressLabel" /><br />
            state:
            <asp:Label Text='<%# Bind("state") %>' runat="server" ID="stateLabel" /><br />
            postalcode:
            <asp:Label Text='<%# Bind("postalcode") %>' runat="server" ID="postalcodeLabel" /><br />
            country:
            <asp:Label Text='<%# Bind("country") %>' runat="server" ID="countryLabel" /><br />
            <asp:LinkButton runat="server" Text="Edit" CommandName="Edit" ID="EditButton" CausesValidation="False" />&nbsp;<asp:LinkButton runat="server" Text="Delete" CommandName="Delete" ID="DeleteButton" CausesValidation="False" />&nbsp;<asp:LinkButton runat="server" Text="New" CommandName="New" ID="NewButton" CausesValidation="False" />
        </ItemTemplate>
    </asp:FormView>


    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:londonhotelConnectionString %>' DeleteCommand="DELETE FROM [guests] WHERE [guestid] = @guestid" InsertCommand="INSERT INTO [guests] ([guestid], [name], [email], [phone], [streetaddress], [state], [postalcode], [country]) VALUES (@guestid, @name, @email, @phone, @streetaddress, @state, @postalcode, @country)" SelectCommand="SELECT * FROM [guests] WHERE ([name] LIKE '%' + @name + '%')" UpdateCommand="UPDATE [guests] SET [name] = @name, [email] = @email, [phone] = @phone, [streetaddress] = @streetaddress, [state] = @state, [postalcode] = @postalcode, [country] = @country WHERE [guestid] = @guestid">
        <DeleteParameters>
            <asp:Parameter Name="guestid" Type="Int32"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="guestid" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="name" Type="String"></asp:Parameter>
            <asp:Parameter Name="email" Type="String"></asp:Parameter>
            <asp:Parameter Name="phone" Type="String"></asp:Parameter>
            <asp:Parameter Name="streetaddress" Type="String"></asp:Parameter>
            <asp:Parameter Name="state" Type="String"></asp:Parameter>
            <asp:Parameter Name="postalcode" Type="String"></asp:Parameter>
            <asp:Parameter Name="country" Type="String"></asp:Parameter>
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="SearchBox1" PropertyName="Text" DefaultValue="%%" Name="name" Type="String"></asp:ControlParameter>
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="name" Type="String"></asp:Parameter>
            <asp:Parameter Name="email" Type="String"></asp:Parameter>
            <asp:Parameter Name="phone" Type="String"></asp:Parameter>
            <asp:Parameter Name="streetaddress" Type="String"></asp:Parameter>
            <asp:Parameter Name="state" Type="String"></asp:Parameter>
            <asp:Parameter Name="postalcode" Type="String"></asp:Parameter>
            <asp:Parameter Name="country" Type="String"></asp:Parameter>
            <asp:Parameter Name="guestid" Type="Int32"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    
    <asp:TextBox CssClass="form-control" ID="SearchBox1" runat="server"></asp:TextBox>
    <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="Search" />
    
    <br />    
    <br />  
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="guestid" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" CellPadding="4" GridLines="None" ForeColor="#333333">
        <AlternatingRowStyle BackColor="White"></AlternatingRowStyle>
        <Columns>
            <asp:TemplateField ShowHeader="False">
                <EditItemTemplate>
                    <asp:LinkButton runat="server" Text="Update" CommandName="Update" CausesValidation="True" ID="LinkButton1"></asp:LinkButton>&nbsp;<asp:LinkButton runat="server" Text="Cancel" CommandName="Cancel" CausesValidation="False" ID="LinkButton2"></asp:LinkButton>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:LinkButton runat="server" Text="Edit" CommandName="Edit" CausesValidation="False" ID="LinkButton1"></asp:LinkButton>&nbsp;<asp:LinkButton  runat="server" Text="Delete" CommandName="Delete" CausesValidation="False" ID="LinkButton2"></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:BoundField DataField="guestid" HeaderText="guestid" ReadOnly="True" SortExpression="guestid"></asp:BoundField>
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name"></asp:BoundField>
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email"></asp:BoundField>
            <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone"></asp:BoundField>
            <asp:BoundField DataField="streetaddress" HeaderText="streetaddress" SortExpression="streetaddress"></asp:BoundField>
            <asp:BoundField DataField="state" HeaderText="state" SortExpression="state"></asp:BoundField>
            <asp:BoundField DataField="postalcode" HeaderText="postalcode" SortExpression="postalcode"></asp:BoundField>
            <asp:BoundField DataField="country" HeaderText="country" SortExpression="country"></asp:BoundField>
        </Columns>
        <FooterStyle BackColor="#990000" ForeColor="White" Font-Bold="True"></FooterStyle>

        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White"></HeaderStyle>

        <PagerStyle HorizontalAlign="Center" BackColor="#FFCC66" ForeColor="#333333"></PagerStyle>

        <RowStyle BackColor="#FFFBD6" ForeColor="#333333"></RowStyle>

        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy"></SelectedRowStyle>

        <SortedAscendingCellStyle BackColor="#FDF5AC"></SortedAscendingCellStyle>

        <SortedAscendingHeaderStyle BackColor="#4D0000"></SortedAscendingHeaderStyle>

        <SortedDescendingCellStyle BackColor="#FCF6C0"></SortedDescendingCellStyle>

        <SortedDescendingHeaderStyle BackColor="#820000"></SortedDescendingHeaderStyle>
    </asp:GridView>
</asp:Content>
