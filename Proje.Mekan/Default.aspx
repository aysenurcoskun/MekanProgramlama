<%@ Page Title="" Language="C#" MasterPageFile="~/Kisi.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Proje.Mekan.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <section class="tm-margin-b-l">
                        <h3>Şehirler</h3>
                        <asp:Repeater ID="Repeater1" runat="server">
                            <ItemTemplate>
                               <a  href="Sehir.aspx?SEHIRID=<%# Eval("SEHIRID") %>"><%# Eval("SEHIRAD") %>

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
							        <h5><a href="deneme.aspx?MEKANID=<%# Eval("MEKANID") %>" ><%# Eval("MEKANBASLIK") %></a></h5>
							 
						        </div>
                             </ItemTemplate>
                        </asp:ListView> 
			                </div>
                           </div>
                    
                    
                  
                </section>

               

</asp:Content>
