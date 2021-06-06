<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPaneli.Master" AutoEventWireup="true" CodeBehind="MekanGüncelle.aspx.cs" Inherits="Proje.Mekan.Sayfalar.MekanGüncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server" class="form-group">
    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" PlaceHolder="Mekan Resim"></asp:TextBox><br /> 
    <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" PlaceHolder="Mekan Başlık"></asp:TextBox><br />
     <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" PlaceHolder="Mekan Bilgi" Height="100" TextMode="MultiLine"></asp:TextBox><br />
    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" DataTextField="SEHIRAD" DataValueField="SEHIRID"></asp:DropDownList><br />
    <asp:Button ID="Button1" runat="server" Text="Ekle" CssClass="btn btn-success" OnClick="Button1_Click"  />

</form>
</asp:Content>
