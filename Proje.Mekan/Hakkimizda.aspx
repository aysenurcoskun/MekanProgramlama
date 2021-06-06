<%@ Page Title="" Language="C#" MasterPageFile="~/Kisi.Master" AutoEventWireup="true" CodeBehind="Hakkimizda.aspx.cs" Inherits="Proje.Mekan.Hakkimizda" %>

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


    </head>

    <body>
        <div class="container">
            <div class="tm-main-content">
                <section class="row tm-margin-b-1">
                    <div class="col-12">
                        <h2 class="tm-blue-text tm-margin-b-p">Hakkımızda</h2>
                    </div>
                  
                    <div class="col-md-6 col-sm-12">
                        <asp:Repeater ID="Repeater1" runat="server">
                            <ItemTemplate>
                                <p class="tm-margin-b-p"><%# Eval("ACIKLAMA") %></p>
                            </ItemTemplate>
                        </asp:Repeater>



                    </div>
                </section>

              
                
            </div>

           
        </div>

        <!-- load JS files -->
        <script src="js/jquery-1.11.3.min.js"></script>
        <!-- jQuery (https://jquery.com/download/) -->
        <script src="js/popper.min.js"></script>
        <!-- Popper (https://popper.js.org/) -->
        <script src="js/bootstrap.min.js"></script>
        <!-- Bootstrap (https://getbootstrap.com/) -->
        <script>     

            /* Google map
            ------------------------------------------------*/
            var map = '';
            var center;

            function initialize() {
                var mapOptions = {
                    zoom: 16,
                    center: new google.maps.LatLng(37.769725, -122.462154),
                    scrollwheel: false
                };

                map = new google.maps.Map(document.getElementById('google-map'), mapOptions);

                google.maps.event.addDomListener(map, 'idle', function () {
                    calculateCenter();
                });

                google.maps.event.addDomListener(window, 'resize', function () {
                    map.setCenter(center);
                });
            }

            function calculateCenter() {
                center = map.getCenter();
            }

            function loadGoogleMap() {
                var script = document.createElement('script');
                script.type = 'text/javascript';
                // use your own API key for Google Maps
                script.src = 'https://maps.googleapis.com/maps/api/js?key=AIzaSyC_iLYB-9nzlBfwB18WEDTCMla3Cr97lsg&v=3.exp&sensor=false&' + 'callback=initialize';
                document.body.appendChild(script);
            }

            $(document).ready(function () {

                // Google Map
                loadGoogleMap();

                // Update the current year in copyright
                $('.tm-current-year').text(new Date().getFullYear());

            });

        </script>

    </body>
    </html>
</asp:Content>
