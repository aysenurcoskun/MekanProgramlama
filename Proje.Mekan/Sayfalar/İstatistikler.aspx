<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPaneli.Master" AutoEventWireup="true" CodeBehind="İstatistikler.aspx.cs" Inherits="Proje.Mekan.Sayfalar.İstatistikler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table class="table table-bordered">
        <tr>
            <td>Toplam Mekan Sayısı:<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>


        </tr>
        <tr>
            <td>Toplam Yorum Sayısı:<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
