<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPaneli.Master" AutoEventWireup="true" CodeBehind="Mesajlar.aspx.cs" Inherits="Proje.Mekan.Sayfalar.Mesajlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table  class="table table-bordered">
    <tr>
        <th>ID</th>
        <th>Kulllanıcı</th>
         <th>Telefon</th>
        <th>Mesaj</th>
       <%-- <th>SİL</th>
        <th>GÜNCELLE</th>--%>
    </tr>
    <asp:Repeater ID="Repeater1" runat="server">
        <ItemTemplate>
            <tr>
                <td><%# Eval("ILETISIMID") %></td>
                <td><%# Eval("ADISOYADI") %></td>
                <td><%# Eval("TELEFON") %></td>
                <td><%# Eval("MAIL") %></td>
                <td><%# Eval("MESAJ") %></td>
               <%-- <td>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "YorumSil.aspx?YORUMID="+Eval("YORUMID")%>' CssClass="btn btn-primary">Sil</asp:HyperLink></td>
                <td> <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# "YorumGüncelle.aspx?YORUMID="+Eval("YORUMID")%>' CssClass="btn btn-warning">Güncelle</asp:HyperLink></td>--%>
            </tr>
        </ItemTemplate>
    </asp:Repeater>

</table>
</asp:Content>
