<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPaneli.Master" AutoEventWireup="true" CodeBehind="Mekanlar.aspx.cs" Inherits="Proje.Mekan.Sayfalar.Mekanlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<table  class="table table-bordered">
    <tr>
        <th>ID</th>
        <th>RESIM</th>
        <th>BAŞLIK</th>
        <th>BILGI</th>
        <th>SEHIR</th>
        <th>SİL</th>
        <th>GÜNCELLE</th>
    </tr>
    <asp:Repeater ID="Repeater1" runat="server">
        <ItemTemplate>
            <tr>
                <td><%# Eval("MEKANID") %></td>
                <td><%# Eval("MEKANRESIM") %></td>
                <td><%# Eval("MEKANBASLIK") %></td>
                <td><%# Eval("MEKANBILGI") %></td>
                <td><%# Eval("MEKANSEHIR") %></td>
                <td>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "MekanSil.aspx?MEKANID="+Eval("MEKANID")%>' CssClass="btn btn-primary">Sil</asp:HyperLink></td>
                <td> <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# "MekanGüncelle.aspx?MEKANID="+Eval("MEKANID")%>' CssClass="btn btn-warning">Güncelle</asp:HyperLink></td>
            </tr>
        </ItemTemplate>
    </asp:Repeater>

</table>
<a href="YeniMekan.aspx" class="btn btn-primary">Yeni Mekan</a>

</asp:Content>
