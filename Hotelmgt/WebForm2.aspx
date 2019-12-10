<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="Hotelmgt.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div>
       <br />
       <br />
        <a class="btn btn-primary stretched-link" runat="server" href="~/WebForm1">Rooms</a>
 <a class="btn btn-primary" runat="server" href="~/WebForm2">Room Details</a>
        <br />
</div>
<%--
    <div>

        <br />
        <asp:Label ID="Label5" runat="server" Font-Names="Verdana" Font-Size="XX-Large" Text="Room Details"></asp:Label>
        <br />
        <br />

    </div>
<div class="form-group">

    <asp:Label ID="Label6" runat="server" Text="Room Name"></asp:Label>
    <asp:TextBox class="form-control" ID="name2txt" runat="server"></asp:TextBox>

</div>

    <div class="form-group">


        <asp:Label ID="Label7" runat="server" Text="Type"></asp:Label>
        <asp:TextBox class="form-control" ID="typetxt" runat="server"></asp:TextBox>


    </div>

    <div class="form-group">

        <asp:Label ID="Label8" runat="server" Text="Description"></asp:Label>
        <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>    
    </div>
    <asp:Button class="btn btn-success" ID="Button3" runat="server" Text="Save" />
     --%>
    
    <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="roomname" DefaultMode="Insert">
        <EditItemTemplate>
            roomname:
            <asp:Label Text='<%# Eval("roomname") %>' runat="server" ID="roomnameLabel1" /><br />
            type:
            <asp:TextBox Text='<%# Bind("type") %>' runat="server" ID="typeTextBox" /><br />
            description:
            <asp:TextBox Text='<%# Bind("description") %>' runat="server" ID="descriptionTextBox" /><br />
            <asp:LinkButton runat="server" Text="Update" CommandName="Update" ID="UpdateButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="Cancel" CommandName="Cancel" ID="UpdateCancelButton" CausesValidation="False" />
        </EditItemTemplate>
        <InsertItemTemplate>
            RoomName:
            <asp:TextBox CssClass="form-control" Text='<%# Bind("roomname") %>' runat="server" ID="roomnameTextBox" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="This field is required." ControlToValidate="roomnameTextBox" ForeColor="red" ValidationGroup="G1"></asp:RequiredFieldValidator>
            <br />
            Type:
            <asp:TextBox CssClass="form-control" Text='<%# Bind("type") %>' runat="server" ID="typeTextBox" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="This field is required." ControlToValidate="typeTextBox" ForeColor="red" ValidationGroup="G1"></asp:RequiredFieldValidator>
            <br />
            Description:
            <asp:TextBox CssClass="form-control" Text='<%# Bind("description") %>' runat="server" ID="descriptionTextBox" /><br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="This field is required." ControlToValidate="descriptionTextBox" ForeColor="red" ValidationGroup="G1"></asp:RequiredFieldValidator>
            <br />
            <asp:LinkButton ValidationGroup="G1" CssClass="btn btn-success" runat="server" Text="Insert" CommandName="Insert" ID="InsertButton" CausesValidation="True" />&nbsp;<asp:LinkButton ValidationGroup="G1" CssClass="btn btn-success" runat="server" Text="Cancel" CommandName="Cancel" ID="InsertCancelButton" CausesValidation="False" />
        </InsertItemTemplate>
        <ItemTemplate>
            roomname:
            <asp:Label Text='<%# Eval("roomname") %>' runat="server" ID="roomnameLabel" /><br />
            type:
            <asp:Label Text='<%# Bind("type") %>' runat="server" ID="typeLabel" /><br />
            description:
            <asp:Label Text='<%# Bind("description") %>' runat="server" ID="descriptionLabel" /><br />
            <asp:LinkButton runat="server" Text="Edit" CommandName="Edit" ID="EditButton" CausesValidation="False" />&nbsp;<asp:LinkButton runat="server" Text="Delete" CommandName="Delete" ID="DeleteButton" CausesValidation="False" />&nbsp;<asp:LinkButton runat="server" Text="New" CommandName="New" ID="NewButton" CausesValidation="False" />
        </ItemTemplate>
    </asp:FormView>


    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:londonhotelConnectionString %>' DeleteCommand="DELETE FROM [roomdetails] WHERE [roomname] = @roomname" InsertCommand="INSERT INTO [roomdetails] ([roomname], [type], [description]) VALUES (@roomname, @type, @description)" SelectCommand="SELECT * FROM [roomdetails]" UpdateCommand="UPDATE [roomdetails] SET [type] = @type, [description] = @description WHERE [roomname] = @roomname">
        <DeleteParameters>
            <asp:Parameter Name="roomname" Type="String"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="roomname" Type="String"></asp:Parameter>
            <asp:Parameter Name="type" Type="String"></asp:Parameter>
            <asp:Parameter Name="description" Type="String"></asp:Parameter>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="type" Type="String"></asp:Parameter>
            <asp:Parameter Name="description" Type="String"></asp:Parameter>
            <asp:Parameter Name="roomname" Type="String"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>
    
    <br />
    
    <asp:TextBox CssClass="form-control" ID="SearchBox1" runat="server"></asp:TextBox><asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="Search" />
    
    <br />
    <br />
    <asp:GridView CssClass="table table-dark" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="roomname" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal">
        <Columns>
            <asp:TemplateField ShowHeader="False">
                <EditItemTemplate>
                    <asp:LinkButton runat="server" Text="Update" CommandName="Update" CausesValidation="True" ID="LinkButton1"></asp:LinkButton>&nbsp;<asp:LinkButton runat="server" Text="Cancel" CommandName="Cancel" CausesValidation="False" ID="LinkButton2"></asp:LinkButton>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:LinkButton CssClass="btn btn-success" runat="server" Text="Edit" CommandName="Edit" CausesValidation="False" ID="LinkButton1"></asp:LinkButton>&nbsp; &nbsp;<asp:LinkButton CssClass="btn btn-success" runat="server" Text="Delete" CommandName="Delete" CausesValidation="False" ID="LinkButton2"></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:BoundField DataField="roomname" HeaderText="roomname" ReadOnly="True" SortExpression="roomname"></asp:BoundField>
            <asp:BoundField DataField="type" HeaderText="type" SortExpression="type"></asp:BoundField>
            <asp:BoundField DataField="description" HeaderText="description" SortExpression="description"></asp:BoundField>
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#333333"></FooterStyle>

        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White"></HeaderStyle>

        <PagerStyle HorizontalAlign="Center" BackColor="#336666" ForeColor="White"></PagerStyle>

        <RowStyle BackColor="White" ForeColor="#333333"></RowStyle>

        <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White"></SelectedRowStyle>

        <SortedAscendingCellStyle BackColor="#F7F7F7"></SortedAscendingCellStyle>

        <SortedAscendingHeaderStyle BackColor="#487575"></SortedAscendingHeaderStyle>

        <SortedDescendingCellStyle BackColor="#E5E5E5"></SortedDescendingCellStyle>

        <SortedDescendingHeaderStyle BackColor="#275353"></SortedDescendingHeaderStyle>
    </asp:GridView>
</asp:Content>
