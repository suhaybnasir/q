<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Hotelmgt.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    


        

        <h3>Room Registration</h3> 

<br/>
 
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="roomid" DataSourceID="SqlDataSource1" DefaultMode="Insert">
        <EditItemTemplate>
            RoomID:
            <asp:Label Text='<%# Eval("roomid") %>' runat="server" ID="roomidLabel1" /><br />
            Room nNme:
            <asp:TextBox Text='<%# Bind("roomname") %>' runat="server" ID="roomnameTextBox" /><br />
            Room Number:
            <asp:TextBox Text='<%# Bind("roomnumber") %>' runat="server" ID="roomnumberTextBox" /><br />
            Bed:
            <asp:TextBox Text='<%# Bind("bed") %>' runat="server" ID="bedTextBox" /><br />
            <asp:LinkButton runat="server" Text="Update" CommandName="Update" ID="UpdateButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="Cancel" CommandName="Cancel" ID="UpdateCancelButton" CausesValidation="False" />
        </EditItemTemplate>
        <InsertItemTemplate>
            RoomID:
            <asp:TextBox  CssClass="form-control" Text='<%# Bind("roomid") %>' runat="server" ID="roomidTextBox" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="This field is required." ControlToValidate="roomidTextBox" ForeColor="red" ValidationGroup="G1"></asp:RequiredFieldValidator>
            <br />
            Room Name:
            <asp:TextBox CssClass="form-control" Text='<%# Bind("roomname") %>' runat="server" ID="roomnameTextBox" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="This field is required." ControlToValidate="roomnameTextBox" ForeColor="red" ValidationGroup="G1"></asp:RequiredFieldValidator>
            <br />
            Room Number:
            <asp:TextBox CssClass="form-control" Text='<%# Bind("roomnumber") %>' runat="server" ID="roomnumberTextBox" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="This field is required." ControlToValidate="roomnumberTextBox" ForeColor="red" ValidationGroup="G1"></asp:RequiredFieldValidator>
            <br />
            Bed:
            <asp:TextBox CssClass="form-control" Text='<%# Bind("bed") %>' runat="server" ID="bedTextBox" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="This field is required." ControlToValidate="bedTextBox" ForeColor="red" ValidationGroup="G1"></asp:RequiredFieldValidator>
            <br />
            <asp:LinkButton ValidationGroup="G1" CssClass="btn btn-success" runat="server" Text="Insert" CommandName="Insert" ID="InsertButton" CausesValidation="True" />&nbsp;<asp:LinkButton ValidationGroup="G1" CssClass="btn btn-success" runat="server" Text="Cancel" CommandName="Cancel" ID="InsertCancelButton" CausesValidation="False" />
        </InsertItemTemplate>
        <ItemTemplate>
            roomid:
            <asp:Label Text='<%# Eval("roomid") %>' runat="server" ID="roomidLabel" /><br />
            roomname:
            <asp:Label Text='<%# Bind("roomname") %>' runat="server" ID="roomnameLabel" /><br />
            roomnumber:
            <asp:Label Text='<%# Bind("roomnumber") %>' runat="server" ID="roomnumberLabel" /><br />
            bed:
            <asp:Label Text='<%# Bind("bed") %>' runat="server" ID="bedLabel" /><br />

            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />

        </ItemTemplate>
    </asp:FormView>

    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:londonhotelConnectionString %>' SelectCommand="SELECT * FROM [rooms]" DeleteCommand="DELETE FROM [rooms] WHERE [roomid] = @roomid" InsertCommand="INSERT INTO [rooms] ([roomid], [roomname], [roomnumber], [bed]) VALUES (@roomid, @roomname, @roomnumber, @bed)" UpdateCommand="UPDATE [rooms] SET [roomname] = @roomname, [roomnumber] = @roomnumber, [bed] = @bed WHERE [roomid] = @roomid">
        <DeleteParameters>
            <asp:Parameter Name="roomid" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="roomid" Type="String" />
            <asp:Parameter Name="roomname" Type="String" />
            <asp:Parameter Name="roomnumber" Type="Int32" />
            <asp:Parameter Name="bed" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="roomname" Type="String" />
            <asp:Parameter Name="roomnumber" Type="Int32" />
            <asp:Parameter Name="bed" Type="String" />
            <asp:Parameter Name="roomid" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
   
    
        

    <br />
    
    
    <asp:TextBox CssClass="form-control" ID="SearchBox1" runat="server"></asp:TextBox>
    <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="Search" />
    
    <br />
    <br />

    <asp:GridView  ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="roomid" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" CellPadding="4" GridLines="None" ForeColor="#333333">
        <AlternatingRowStyle BackColor="White"></AlternatingRowStyle>
        <Columns>
            <asp:CommandField ShowEditButton="True" ShowDeleteButton="True"></asp:CommandField>
            <asp:BoundField DataField="roomid" HeaderText="roomid" ReadOnly="True" SortExpression="roomid"></asp:BoundField>
            <asp:BoundField DataField="roomname" HeaderText="roomname" SortExpression="roomname"></asp:BoundField>
            <asp:BoundField DataField="roomnumber" HeaderText="roomnumber" SortExpression="roomnumber"></asp:BoundField>
            <asp:BoundField DataField="bed" HeaderText="bed" SortExpression="bed"></asp:BoundField>
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
