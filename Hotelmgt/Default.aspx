<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Hotelmgt._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>London Hotel</h1>
        <p class="lead">Welcome to London Hotel, relaxable and sleepy bedrooms, friendly employees.</p>
        
    </div>

    <div class="row">
        <div class="col-md-3">
            <h2>Rooms</h2>
            <p>
                Explore details and the list of rooms.</p>
            <p>
                <a class="btn btn-info" runat="server" href="~/WebForm1">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-3">
            <h2>Guests</h2>
            <p>
                Register guests and explore guests list.</p>
            <p>
                <a class="btn btn-info" runat="server" href="~/guests">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-3">
            <h2>Reservation</h2>
            <p>
               Book your Hotel, anywhere in the World now. Quick, Easy Booking.
            </p>
            <p>
                <a class="btn btn-info" runat="server" href="~/reservation">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-3">
            <h2>Room Assignments</h2>
            <p>
                We've made it easy to view your room assignment and other information online.
            </p>
            <p>
                <a class="btn btn-info" runat="server" href="~/roomassignments">Learn more &raquo;</a>
            </p>
        </div>
    </div>

</asp:Content>
