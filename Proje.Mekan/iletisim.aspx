<%@ Page Title="" Language="C#" MasterPageFile="~/Kisi.Master" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="Proje.Mekan.iletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
        
        <div class="container">
            
            
            <div class="tm-main-content">
                <section class="row tm-margin-b-l">
                    <div class="col-12">
                        <h2 class="tm-blue-text tm-margin-b-p">İletişim</h2>
                        <h5>Mekanlar hakkında değerlendirmelerinizde herhangi bir sorun yaşarsanız bizimle iletişime geçebilirsiniz. Bilgileri eksiksiz doldurmanız size ulaşmamızda önemlidir. </h5>
                    </div>
                    <div class="col-md-6 col-sm-12 mb-md-0 mb-5 tm-overflow-auto">         
                        <div class="mr-lg-5">
                            <!-- contact form -->
                            <form action="#" method="post" class="tm-contact-form" runat="server">
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Ad Soyad"  required=""></asp:TextBox> 
                                    
                                </div>
                                <div class="form-group">
                                   <asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="Telefon"  required=""></asp:TextBox> 
                                </div>
                                
                                <div class="form-group">                                                        
                                    <asp:TextBox ID="TextBox3" runat="server" class="form-control" placeholder="E-mail"  required=""></asp:TextBox> 
                                </div>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox4" runat="server" class="form-control" placeholder="Mesajınız"  required="" Height="100" TextMode="MultiLine"></asp:TextBox> 
                                </div>
                                <asp:Button ID="Button1" runat="server"  class="btn btn-primary" Text="Gönder" OnClick="Button1_Click" />
                            </form>                          
                        </div>                                       
                    </div>
                   <%-- <div class="col-md-6 col-sm-12">
                        <p class="tm-margin-b-p">Morbi auctor euismod dictum. Morbi eu nibh in nulla interdum placerat. Donec pellentesque est at sem aliquam hendrerit.</p>
                        <address>
                            <span class="tm-blue-text">Mailing Address</span><br>
                            1126 Aenean ac mauris at ex,<br>
                            venenatis lobortis id in 11600 <br><br>
                            <div class="tm-blue-text">          
                                Email: <a class="tm-blue-text" href="mailto:info@company.com">info@company.com</a
                                ><br>
                                Tel: <a class="tm-blue-text" href="tel:+66100200120">010-020-0120</a><br>
                                Fax: <a class="tm-blue-text" href="tel:+66900800980">090-080-0980</a><br>    
                            </div>                            
                        </address>
                        
                    </div>--%>
                </section>


                
            </div>

              
        </div>
        
        <!-- load JS files -->
        <script src="js/jquery-1.11.3.min.js"></script>         <!-- jQuery (https://jquery.com/download/) -->
        <script src="js/popper.min.js"></script>                <!-- Popper (https://popper.js.org/) -->
        <script src="js/bootstrap.min.js"></script>             <!-- Bootstrap (https://getbootstrap.com/) -->
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
            
                map = new google.maps.Map(document.getElementById('google-map'),  mapOptions);

                google.maps.event.addDomListener(map, 'idle', function() {
                  calculateCenter();
                });
            
                google.maps.event.addDomListener(window, 'resize', function() {
                  map.setCenter(center);
                });
            }

            function calculateCenter() {
                center = map.getCenter();
            }

            function loadGoogleMap(){
                var script = document.createElement('script');
                script.type = 'text/javascript';
				// use your own API key for Google Maps
                script.src = 'https://maps.googleapis.com/maps/api/js?key=AIzaSyC_iLYB-9nzlBfwB18WEDTCMla3Cr97lsg&v=3.exp&sensor=false&' + 'callback=initialize';
                document.body.appendChild(script);
            } 
       
            $(document).ready(function(){

                // Google Map
                loadGoogleMap();  
                
                // Update the current year in copyright
                $('.tm-current-year').text(new Date().getFullYear());

            });

        </script>             


</asp:Content>
