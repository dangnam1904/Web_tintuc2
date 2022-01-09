<%@ Page Title="" Language="C#" MasterPageFile="~/Trangchu.Master" AutoEventWireup="true" CodeBehind="DangKi.aspx.cs" Inherits="Web_tintuc2.DangKi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="13pt" ForeColor="#0000FF" CssClass=""
        Text="Đăng ký thành viên Website"></asp:Label><br />
    <hr />
    <div style="text-align: center">
        <table style="width: 100%">
            <tr>
                <td align="right" style="width: 45%">
    <asp:Label ID="Label1" runat="server" ForeColor="Blue" Text="Tên đăng nhập"></asp:Label></td>
                <td style="width: 100px">
                </td>
                <td align="left" style="width: 50%">
                    <asp:TextBox ID="txt_username" runat="server" Width="173px"></asp:TextBox></td>
            </tr>
            <tr>
                <td align="right" style="width: 45%">
    <asp:Label ID="Label4" runat="server" ForeColor="Blue" Text="Ho vạ̀ tên" Width="87px"></asp:Label></td>
                <td style="width: 100px">
                </td>
                <td align="left" style="width: 50%">
                    <asp:TextBox ID="txt_name" runat="server"
        Width="173px"></asp:TextBox></td>
            </tr>
            <tr>
                <td align="right" style="width: 45%">
    <asp:Label ID="Label5" runat="server" ForeColor="Blue" Text="Mật khẩu"></asp:Label></td>
                <td style="width: 100px">
                </td>
                <td align="left" style="width: 50%">
    <asp:TextBox ID="txt_password" runat="server" Width="173px" TextMode="Password"></asp:TextBox></td>
            </tr>
            <tr>
                <td align="right" style="width: 45%">
    <asp:Label ID="Label2" runat="server" ForeColor="Blue" Text="E-mail "></asp:Label></td>
                <td style="width: 100px">
                </td>
                <td align="left" style="width: 50%">
    <asp:TextBox ID="txt_Email" runat="server" Width="173px"></asp:TextBox></td>
            </tr>
                      <tr>
                <td align="right" style="width: 45%">
    <asp:Label ID="Label6" runat="server" ForeColor="Blue" Text="Điện thoại"></asp:Label></td>
                <td style="width: 100px">
                </td>
                <td align="left" style="width: 50%">
    <asp:TextBox ID="txt_Phone" runat="server" Width="173px"></asp:TextBox></td>
            </tr>

                <tr>
                <td align="right" style="width: 45%">
    <asp:Label ID="Label7" runat="server" ForeColor="Blue" Text="Ngày sinh"></asp:Label></td>
                <td style="width: 100px">
                </td>
                <td align="left" style="width: 50%">
    <asp:TextBox ID="txt_brithday" runat="server" Width="173px"></asp:TextBox></td>
            </tr>
                         <tr>
                <td align="right" style="width: 45%">
    <asp:Label ID="Label9" runat="server" ForeColor="Blue" Text="Địa Chỉ"></asp:Label></td>
                <td style="width: 100px">
                </td>
                <td align="left" style="width: 50%">
    <asp:TextBox ID="txt_diachi" runat="server" Width="173px"></asp:TextBox></td>
            </tr>

                <tr>
                <td align="right" style="width: 45%">
    <asp:Label ID="Label8" runat="server" ForeColor="Blue" Text="Giới tính"></asp:Label></td>
                <td style="width: 100px">
                </td>
                <td align="left" style="width: 50%">
                    <asp:RadioButton ID="Radio_nam" runat="server" Text="Nam"  />
                   &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp;    <asp:RadioButton ID="Radio_nu" runat="server" Text="Nữ" />
</td>
            </tr>

            <tr>
                <td align="right" style="width: 45%">
                </td>
                <td style="width: 100px">
                </td>
                <td align="left" style="width: 50%">
                </td>
            </tr>
            <tr>
                <td align="right" style="width: 45%">
    <asp:Button ID="btn_dangki" runat="server" BackColor="#C0C0FF" Font-Bold="True" ForeColor="Black" Text="Đăng Ký" OnClick="btn_dangki_Click" /></td>
                <td style="width: 100px">
                </td>
                <td align="left" style="width: 50%">
                    <asp:Button ID="btn_thoat" runat="server" BackColor="#C0C0FF" Font-Bold="True"
                        Text="Thoát" OnClick="btn_thoat_Click" /></td>
            </tr>
            <tr>
                <td colspan="3",>
                   
                    &nbsp;</td>
            </tr>
            </table>
    </div>
 
</asp:Content>

