<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPaneli.Master" AutoEventWireup="true" CodeBehind="HakkımdaGüncelle.aspx.cs" Inherits="Proje.Mekan.Sayfalar.HakkımdaGüncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server" class="form-group">



        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" PlaceHolder="Açıklama"></asp:TextBox><br />
        <asp:Button ID="Button1" runat="server" Text="Güncelle" CssClass="btn btn-danger" OnClick="Button1_Click" />
    </form>







</asp:Content>
