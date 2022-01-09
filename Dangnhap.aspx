<%@ Page Title="" Language="C#" MasterPageFile="~/Trangchu.Master" AutoEventWireup="true" CodeBehind="Dangnhap.aspx.cs" Inherits="Web_tintuc2.Dangnhap" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin-left: 55px;
        }
        .auto-style2 {
            margin-left: 18px;
        }
        .auto-style3 {
            margin-left: 5px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
       
        <br />
        <asp:Label ID="Label2" runat="server" Text="Tên đăng nhập" Font-Size="16pt"></asp:Label>
        <asp:TextBox ID="txt_username" runat="server" CssClass="auto-style2" Width="172px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Mật khẩu" Font-Size="16pt"></asp:Label>
        <asp:TextBox ID="txt_password" runat="server" CssClass="auto-style1" TextMode="Password" Height="16px" Width="167px"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:Button ID="btn_login" runat="server" CssClass="auto-style3" Text="Đăng Nhập" OnClick="btn_login_Click" BackColor="#FF9900" BorderColor="#CCFFCC" BorderStyle="Inset" Font-Size="14pt" />
        <br />
        <br />
        <asp:Label ID="lblThongBao" runat="server" Font-Italic="True" Font-Size="16pt" ForeColor="Red"></asp:Label>
        <br />
       
    </div>
</asp:Content>
