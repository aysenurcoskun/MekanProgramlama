<%@ Page Title="" Language="C#" MasterPageFile="~/Kisi.Master" AutoEventWireup="true" CodeBehind="deneme.aspx.cs" Inherits="Proje.Mekan.deneme" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-xs-12">

        <div class="box">

            <div class="tm-main-content no-pad-b">

                <section class="row tm-item-preview">
                    <div class="col-md-6 col-sm-12 mb-md-0 mb-5">
                        <asp:Image ID="resim1" runat="server" Style="height: 500px; width: 85%; margin-bottom: 20px;" />
                    </div>
                    <div class="col-md-6 col-sm-12">
                        <h3 class="box-title">
                            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></h3>

                        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                        <p class="tm-blue-text tm-margin-b">
                            Rating:
                            <img src="2092_shelf/img/star.png" alt="Star image">
                            <img src="2092_shelf/img/star.png" alt="Star image">
                            <img src="2092_shelf/img/star.png" alt="Star image">
                            <img src="2092_shelf/img/star.png" alt="Star image">
                        </p>

                    </div>
                </section>
            </div>


            <asp:Repeater ID="Repeater2" runat="server">
                <ItemTemplate>

                    
                    <div class="col-md-6 col-sm-12">

                        <div class="row border tm-margin-b">
                              <img src="2092_shelf/img/indir.png"  style="height:10%; width:20%;" class="img-responsive" alt="">
                            <div class="desc">

                                <p style="font-weight: bolder"><%# Eval("ADSOYAD") %></p> <p><%# Eval("YORUMBILGI") %></p>


                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
            <div class="col-md-6 ">
                <h3>Bir Yorum Yazın</h3>
                <form runat="server">
                    <asp:TextBox ID="TextBox1" class="form-control" runat="server" placeholder="Kullanıcı Adınız" required=""></asp:TextBox><br />
                    <asp:TextBox ID="TextBox2" class="form-control" runat="server" placeholder="Mail Adresiniz"></asp:TextBox><br />
                    <asp:TextBox ID="TextBox3" class="form-control" runat="server" placeholder="Yorumunuz" TextMode="MultiLine" Height="100"></asp:TextBox><br />
                    <asp:Button ID="Button1" class="col col-md-3 btn  btn-success" runat="server" Text="Yorum Yap" OnClick="Button1_Click1" />
                </form>
            </div>




        </div>
    </div>
</asp:Content>
