<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPaneli.Master" AutoEventWireup="true" CodeBehind="Hakkımızda.aspx.cs" Inherits="Proje.Mekan.Sayfalar.Hakkımızda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <table  class="table table-bordered">
    <tr>
        <th>ID</th>
        <th>Açıklama</th>
       
    </tr>
    <asp:Repeater ID="Repeater1" runat="server">
        <ItemTemplate>
            <tr>
                <td><%# Eval("ID") %></td>
                <td><%# Eval("ACIKLAMA") %></td>
                
                <td>
                <td> <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# "HakkımdaGüncelle.aspx?ID="+Eval("ID")%>' CssClass="btn btn-warning">Güncelle</asp:HyperLink></td>
            </tr>
        </ItemTemplate>
    </asp:Repeater>

</table>
</asp:Content>
