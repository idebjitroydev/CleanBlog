<%@ Page Title="Home" Language="C#" MasterPageFile="~/App/Views/FrontEnd/FrontEnd.master" AutoEventWireup="true" CodeFile="Homepage.aspx.cs" Inherits="Homepage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <!-- Page Header -->
    <header class="masthead" style="background-image: url('/Content/img/home-bg.jpg')">
        <div class="overlay"></div>
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-md-10 mx-auto">
                    <div class="site-heading">
                        <h1>Clean Blog</h1>
                        <span class="subheading">A Blog Theme by Start Bootstrap</span>
                    </div>
                </div>
            </div>
        </div>
    </header>

    <!-- Main Content -->
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-md-10 mx-auto">

                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <div class="post-preview">
                            <asp:HyperLink ID="HyperLink1" NavigateUrl='<%# Eval("ID","~/Post.aspx?ID={0}") %>' runat="server">
                                <h2 class="post-title" runat="server" id="postTitle"><%# Eval("Name") %></h2>
                                <h3 class="post-subtitle" runat="server"><%# Eval("Excerpt") %>
                                </h3>
                            </asp:HyperLink>
                            <p class="post-meta">
                                Posted by <a href="#">Start Bootstrap</a> on September 24, 2018
                            </p>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>

                <hr>

                <!-- Pager -->
                <%--<div class="clearfix">
                    <a class="btn btn-primary float-right" href="#">Older Posts &rarr;</a>
                </div>--%>
            </div>
        </div>
    </div>
</asp:Content>