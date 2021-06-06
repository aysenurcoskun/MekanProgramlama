<%@ Page Title="" Language="C#" MasterPageFile="~/Kisi.Master" AutoEventWireup="true" CodeBehind="Sehir.aspx.cs" Inherits="Proje.Mekan.Sehir" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
 <section class="tm-margin-b-l">
                    
                        <h3>Şehirler</h3>
                        <asp:Repeater ID="Repeater1" runat="server">
                            <ItemTemplate>
                               <a href="Sehir.aspx?SEHIRID=<%# Eval("SEHIRID") %>"><%# Eval("SEHIRAD") %>

                            </ItemTemplate>
                        </asp:Repeater>
                   
                  
                       <div class="tm-gallery">
                           
                        <div class="row">
               
                            
				            <asp:ListView ID="listViewMekanlar" runat="server">
                              <ItemTemplate>
						        <div class="col-lg-3 col-md-4 col-sm-6 gal-img" style="margin:0 4%;">
                                    <div class="tm-gallery-item-overlay">
						            <a href="MekanBilgi.aspx">
                                     
                                    <asp:Image ImageUrl='<%# Eval("MEKANRESIM") %>' runat="server" style="height:400px; width:250px"/></a>
                                    </div>
							        <h5><a href="deneme.aspx?MEKANID=<%# Eval("MEKANID") %>"><%# Eval("MEKANBASLIK") %></a></h5>
							 
						        </div>
                             </ItemTemplate>
                        </asp:ListView> 
			                </div>
                           </div>
                    
                    
                    <nav class="tm-gallery-nav">
                        <ul class="nav justify-content-center">
                            <li class="nav-item"><a class="nav-link active" href="#">1</a></li>
                            <li class="nav-item"><a class="nav-link" href="#">2</a></li>
                            <li class="nav-item"><a class="nav-link" href="#">3</a></li>
                            <li class="nav-item"><a class="nav-link" href="#">4</a></li>                    
                        </ul>
                    </nav>
                </section>

                <section class="media tm-highlight tm-highlight-w-icon">

                    <div class="tm-highlight-icon">
                        <i class="fa tm-fa-6x fa-meetup"></i>    
                    </div>                    

                                      
                </section>
</asp:Content>
