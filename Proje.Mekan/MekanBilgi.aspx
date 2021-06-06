<%@ Page Title="" Language="C#" MasterPageFile="~/Kisi.Master" AutoEventWireup="true" CodeBehind="MekanBilgi.aspx.cs" Inherits="Proje.Mekan.MekanBilgi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html>
    <html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!--

Template 2092 Shelf

http://www.tooplate.com/view/2092-shelf

-->
        <title>SHELF - Your Online Bookstore</title>

        <!-- load stylesheets -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400">
        <!-- Google web font "Open Sans" -->
        <link rel="stylesheet" href="2092_shelf/font-awesome-4.7.0/css/font-awesome.min.css">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="2092_shelf/css/bootstrap.min.css">
        <!-- Bootstrap style -->
        <link rel="stylesheet" href="2092_shelf/css/tooplate-style.css">
        <!-- Templatemo style -->

        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
          <![endif]-->
    </head>

    <body>

        <div class="container">

            <div class="tm-main-content no-pad-b">

                <section class="row tm-item-preview">

                    <div class="col-md-6 col-sm-12 mb-md-0 mb-5">
                        <asp:ListView ID="ListView1" runat="server">
                            <ItemTemplate>
                                <div class="col-lg-3 col-md-4 col-sm-6 gal-img">
                                    <div class="tm-gallery-item-overlay">
                                        <a href="MekanBilgi.aspx">

                                            <asp:Image ImageUrl='<%# Eval("MEKANRESIM") %>' runat="server" Style="height: 400px; width: 250px; margin-bottom: 20px;" /></a>
                                    </div>
                                </div>



                                </div>
                    <div class="col-md-6 col-sm-12">


                        <p class="tm-blue-text tm-margin-b-s">
                            <h5><a><%# Eval("MEKANBASLIK") %></a></h5>
                        </p>
                        <p class="tm-blue-text tm-margin-b-s">
                            <h6><a><%# Eval("MEKANBILGI") %></a></h6>
                        </p>


                        <p class="tm-blue-text tm-margin-b">
                            Rating:
                            <img src="2092_shelf/img/star.png" alt="Star image">
                            <img src="2092_shelf/img/star.png" alt="Star image">
                            <img src="2092_shelf/img/star.png" alt="Star image">
                            <img src="2092_shelf/img/star.png" alt="Star image">
                        </p>

                    </div>
                                <asp:Repeater ID="Repeater1" runat="server">
                                    <ItemTemplate>
                                        <div class="col-md-6 col-sm-12">
                                            <div class="row">
                                                <div class="desc">

                                                    <p><%#Eval("ADSOYAD")%></p>
                                                    <p><%#Eval("YORUMBILGI")%></p>


                                                </div>
                                                <div class="clearfix"></div>
                                            </div>
                                        </div>

                                    </ItemTemplate>
                                </asp:Repeater>


                                <ul class="comment-list">
                                    <li></li>
                                </ul>



                                <div class="content-form">
                                    <h3>Bir Yorum Yazın</h3>
                                    <form runat="server">
                                        <asp:TextBox ID="TextBox1" runat="server" placeholder="Kullanıcı Adınız" required=""></asp:TextBox>
                                        <asp:TextBox ID="TextBox2" runat="server" placeholder="Mail Adresiniz"></asp:TextBox>
                                        <asp:TextBox ID="TextBox3" runat="server" placeholder="Yorumunuz" TextMode="MultiLine" Height="100"></asp:TextBox>
                                        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
                                    </form>
                                </div>
                            </ItemTemplate>
                        </asp:ListView>
                    </div>
                </section>


            </div>


        </div>

        <!-- load JS files -->
        <script src="2092_shelf/js/jquery-1.11.3.min.js"></script>
        <!-- jQuery (https://jquery.com/download/) -->
        <script src="2092_shelf/js/popper.min.js"></script>
        <!-- Popper (https://popper.js.org/) -->
        <script src="2092_shelf/js/bootstrap.min.js"></script>
        <!-- Bootstrap (https://getbootstrap.com/) -->
        <script>     

            $(document).ready(function () {

                // Update the current year in copyright
                $('.tm-current-year').text(new Date().getFullYear());

            });

        </script>

    </body>
    </html>
</asp:Content>
