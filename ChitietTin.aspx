<%@ Page Title="" Language="C#" MasterPageFile="~/Trangchu.Master" AutoEventWireup="true" CodeBehind="ChitietTin.aspx.cs" Inherits="Web_tintuc2.ChitietTin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="dataList_ctTin" runat="server">
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td>
                       
                    </td>
                    <td>
                        <div>
                            <h6 class="h6_date"> <%# Eval("Ngay") %></h6>
                            <p class="p_tomtat"><%# Eval("TomTat") %></p>
                            <p class="p_tomtat"><%# Eval("NoiDung1") %></p>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder4" runat="server">
</asp:Content>
