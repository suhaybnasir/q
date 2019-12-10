<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="roomassignments.aspx.cs" Inherits="Hotelmgt.roomassignments" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

       <p>
        <br />
        <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" Text="Room Assignments"></asp:Label>
    </p>
    
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="assignmentid" DataSourceID="SqlDataSource1" DefaultMode="Insert">
        <EditItemTemplate>
            checkindate:
            <asp:TextBox Text='<%# Bind("checkindate") %>' runat="server" ID="checkindateTextBox" /><br />
            roomid:
            <asp:TextBox Text='<%# Bind("roomid") %>' runat="server" ID="roomidTextBox" /><br />
            guestid:
            <asp:TextBox Text='<%# Bind("guestid") %>' runat="server" ID="guestidTextBox" /><br />
            dayofweek:
            <asp:TextBox Text='<%# Bind("dayofweek") %>' runat="server" ID="dayofweekTextBox" /><br />
            assignmentid:
            <asp:Label Text='<%# Eval("assignmentid") %>' runat="server" ID="assignmentidLabel1" /><br />
            <asp:LinkButton runat="server" Text="Update" CommandName="Update" ID="UpdateButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="Cancel" CommandName="Cancel" ID="UpdateCancelButton" CausesValidation="False" />
        </EditItemTemplate>
        <InsertItemTemplate>
            CheckInDate:
            <asp:TextBox CssClass="form-control" Text='<%# Bind("checkindate") %>' runat="server" ID="checkindateTextBox" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="This field is required." ControlToValidate="checkindateTextBox" ForeColor="red" ValidationGroup="G1"></asp:RequiredFieldValidator>
            <br />
            RoomID:
            <asp:TextBox CssClass="form-control" Text='<%# Bind("roomid") %>' runat="server" ID="roomidTextBox" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="This field is required." ControlToValidate="roomidTextBox" ForeColor="red" ValidationGroup="G1"></asp:RequiredFieldValidator>
            <br />
            GuestID:
            <asp:TextBox CssClass="form-control" Text='<%# Bind("guestid") %>' runat="server" ID="guestidTextBox" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="This field is required." ControlToValidate="guestidTextBox" ForeColor="red" ValidationGroup="G1"></asp:RequiredFieldValidator>
            <br />
            DayOfWeek:
            <asp:TextBox CssClass="form-control" Text='<%# Bind("dayofweek") %>' runat="server" ID="dayofweekTextBox" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="This field is required." ControlToValidate="dayofweekTextBox" ForeColor="red" ValidationGroup="G1"></asp:RequiredFieldValidator>
            <br />
            AssignmentID:
            <asp:TextBox CssClass="form-control" Text='<%# Bind("assignmentid") %>' runat="server" ID="assignmentidTextBox" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="This field is required." ControlToValidate="assignmentidTextBox" ForeColor="red" ValidationGroup="G1"></asp:RequiredFieldValidator>
            <br />
            <asp:LinkButton CssClass="btn btn-success" ValidationGroup="G1" runat="server" Text="Insert" CommandName="Insert" ID="InsertButton" CausesValidation="True" />&nbsp;<asp:LinkButton ValidationGroup="G1" CssClass="btn btn-success" runat="server" Text="Cancel" CommandName="Cancel" ID="InsertCancelButton" CausesValidation="False" />
        </InsertItemTemplate>
        <ItemTemplate>
            checkindate:
            <asp:Label Text='<%# Bind("checkindate") %>' runat="server" ID="checkindateLabel" /><br />
            roomid:
            <asp:Label Text='<%# Bind("roomid") %>' runat="server" ID="roomidLabel" /><br />
            guestid:
            <asp:Label Text='<%# Bind("guestid") %>' runat="server" ID="guestidLabel" /><br />
            dayofweek:
            <asp:Label Text='<%# Bind("dayofweek") %>' runat="server" ID="dayofweekLabel" /><br />
            assignmentid:
            <asp:Label Text='<%# Eval("assignmentid") %>' runat="server" ID="assignmentidLabel" /><br />
            <asp:LinkButton runat="server" Text="Edit" CommandName="Edit" ID="EditButton" CausesValidation="False" />&nbsp;<asp:LinkButton runat="server" Text="Delete" CommandName="Delete" ID="DeleteButton" CausesValidation="False" />&nbsp;<asp:LinkButton runat="server" Text="New" CommandName="New" ID="NewButton" CausesValidation="False" />
        </ItemTemplate>
    </asp:FormView>

    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:londonhotelConnectionString %>' DeleteCommand="DELETE FROM [roomassignments] WHERE [assignmentid] = @assignmentid" InsertCommand="INSERT INTO [roomassignments] ([checkindate], [roomid], [guestid], [dayofweek], [assignmentid]) VALUES (@checkindate, @roomid, @guestid, @dayofweek, @assignmentid)" SelectCommand="SELECT * FROM [roomassignments]" UpdateCommand="UPDATE [roomassignments] SET [checkindate] = @checkindate, [roomid] = @roomid, [guestid] = @guestid, [dayofweek] = @dayofweek WHERE [assignmentid] = @assignmentid">
        <DeleteParameters>
            <asp:Parameter Name="assignmentid" Type="Int32"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter DbType="Date" Name="checkindate"></asp:Parameter>
            <asp:Parameter Name="roomid" Type="String"></asp:Parameter>
            <asp:Parameter Name="guestid" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="dayofweek" Type="String"></asp:Parameter>
            <asp:Parameter Name="assignmentid" Type="Int32"></asp:Parameter>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter DbType="Date" Name="checkindate"></asp:Parameter>
            <asp:Parameter Name="roomid" Type="String"></asp:Parameter>
            <asp:Parameter Name="guestid" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="dayofweek" Type="String"></asp:Parameter>
            <asp:Parameter Name="assignmentid" Type="Int32"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    
    <asp:TextBox CssClass="form-control" ID="SearchBox1" runat="server"></asp:TextBox>
    <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="Search" />
    
    <br />
    <br />
    <asp:GridView  ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="assignmentid" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" CellPadding="4" GridLines="None" ForeColor="#333333">
        <AlternatingRowStyle BackColor="White"></AlternatingRowStyle>
        <Columns>
            <asp:TemplateField ShowHeader="False">
                <EditItemTemplate>
                    <asp:LinkButton runat="server" Text="Update" CommandName="Update" CausesValidation="True" ID="LinkButton1"></asp:LinkButton>&nbsp;<asp:LinkButton runat="server" Text="Cancel" CommandName="Cancel" CausesValidation="False" ID="LinkButton2"></asp:LinkButton>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:LinkButton runat="server" Text="Edit" CommandName="Edit" CausesValidation="False" ID="LinkButton1"></asp:LinkButton>&nbsp;<asp:LinkButton runat="server"  Text="Delete" CommandName="Delete" CausesValidation="False" ID="LinkButton2"></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:BoundField DataField="checkindate" HeaderText="checkindate" SortExpression="checkindate"></asp:BoundField>
            <asp:BoundField DataField="roomid" HeaderText="roomid" SortExpression="roomid"></asp:BoundField>
            <asp:BoundField DataField="guestid" HeaderText="guestid" SortExpression="guestid"></asp:BoundField>
            <asp:BoundField DataField="dayofweek" HeaderText="dayofweek" SortExpression="dayofweek"></asp:BoundField>
            <asp:BoundField DataField="assignmentid" HeaderText="assignmentid" ReadOnly="True" SortExpression="assignmentid"></asp:BoundField>
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
