<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPaneli.Master" AutoEventWireup="true" CodeBehind="Yorumlar.aspx.cs" Inherits="Proje.Mekan.Sayfalar.Yorumlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table  class="table table-bordered">
    <tr>
        <th>ID</th>
        <th>Kulllanıcı</th>
        <th>Mekan</th>
        <th>SİL</th>
    </tr>
    <asp:Repeater ID="Repeater1" runat="server">
        <ItemTemplate>
            <tr>
                <td><%# Eval("YORUMID") %></td>
                <td><%# Eval("ADSOYAD") %></td>
                <td><%# Eval("MEKANBASLIK") %></td>
                <td>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "YorumSil.aspx?YORUMID="+Eval("YORUMID")%>' CssClass="btn btn-primary">Sil</asp:HyperLink></td>
               
            </tr>
        </ItemTemplate>
    </asp:Repeater>

</table>
</asp:Content>
