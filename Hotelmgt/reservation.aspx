<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="reservation.aspx.cs" Inherits="Hotelmgt.reservation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
        <br />
          <div class="form-group">

        <asp:Label  ID="Label2" runat="server" Text="Check In Date"></asp:Label>

        <input type="date" class="form-control" id="indate" />

    &nbsp;</div>

        <div class="form-group">

        <asp:Label  ID="Label1" runat="server" Text="Check In Date"></asp:Label>
        <input type="date" class="form-control" id="outdate" />
    </div>

        <div class="form-group">

        <asp:Label ID="Label3" runat="server" Text="Rooms"></asp:Label>
        <asp:TextBox class="form-control" ID="assigntxt" runat="server"></asp:TextBox>
          

    </div>
            <div class="form-group">

        <asp:Label ID="Label4" runat="server" Text="Number of Children"></asp:Label>
        <asp:TextBox class="form-control" ID="TextBox1" runat="server"></asp:TextBox>

    </div>
    <asp:Button class="btn btn-success" ID="Button3" runat="server" Text="Submit" />
</asp:Content>
