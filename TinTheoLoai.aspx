<%@ Page Title="" Language="C#" MasterPageFile="~/Trangchu.Master" AutoEventWireup="true" CodeBehind="TinTheoLoai.aspx.cs" Inherits="Web_tintuc2.TinTheoLoai" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .div_all{
            margin-left: 12px;
            text-align: left;
            margin-top:2px;
        }
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 148px;
        }
        .auto-style3 {
            height: 52px;
        }
        .div_img{
            object-fit:contain;
            position:relative;
            top: -20px;
            margin-left:20px;
        }
        .h6_date{
            margin:2px;
            padding:2px;
            font-size: 16px;
            
        }
        .p_tomtat{
            font-size: 16px;
        }
        .label_title{
            font-size:24px;
            font-weight: 600;
        }
        .asp_img{
            margin-top:0px;
            
        }
        .hr{
            width:100%;
            height:2px;
            color:yellowgreen;
            background-color:yellowgreen;
            margin-left:20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="dataList_tin" runat="server" Width="1011px">
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" rowspan="2">
                      
                            <div class="div_img">
                                 <asp:Image ID="Image5" CssClass="asp_img" runat="server" ImageUrl='<%# Eval("urlHinh") %>' Width="250px"  Height="200px"/>
                    </td>
                            </div>
                              
                    <td>&nbsp;</td>
                    <td>
                         <div class="div_all">
                            <asp:Label ID="Label2" CssClass="label_title" runat="server" Text='<%# Eval("TieuDe") %>'></asp:Label>
                             <asp:HyperLink ID="HyperLink6" runat="server">HyperLink</asp:HyperLink>
                            <h6 class="h6_date"> <%# Eval("Ngay") %></h6>
                            <p class="p_tomtat"><%# Eval("TomTat") %></p>
                            <p class="p_tomtat"><%# Eval("NoiDung1") %></p>
                         </div>
                       </div> 
                        
                    </td>
                      <caption>
                          <hr class="hr" />
                    </caption>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style3"></td>
                </tr>
            </table>
            
        </ItemTemplate>
</asp:DataList>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    </asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder4" runat="server">
</asp:Content>
