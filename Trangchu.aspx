<%@ Page Title="" Language="C#" MasterPageFile="~/Trangchu.Master" AutoEventWireup="true" CodeBehind="Trangchu.aspx.cs" Inherits="Web_tintuc2.Trangchu1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div>
        <style>
             h1{
                    text-align:left;
                    margin-left:12px;
                    margin-bottom: 0px;
                  }
        </style>
            <h1>Giải Trí</h1>
            <hr style="width:100%; height:4px; background-color:mediumorchid"/>
    <asp:DataList ID="DataList1" runat="server" DataSourceID="LinqData_tin_Giaitri" Width="98%">
        <ItemTemplate>
              <style>
               
                h2{
                    margin-left:12px;
                    text-align:left;
                }
                p{
                    font-size:16px;
                    text-align:justify;
                    margin:12px;
                }
                .img{
                    float: left;
                    margin-left:10px;
                    width:240px;
                    height:160px;
                }
                .div_nd{
                    margin-left:260px;
                }
                .div_chitiet{
                    color: maroon;
                    float:right;
                }
             
            </style>
           
            <h2><asp:Label ID="TieuDeLabel" runat="server" Text='<%# Eval("TieuDe") %>' /></h2> 
           <p> <asp:Label ID="NgayLabel" runat="server" Text='<%# Eval("Ngay") %>' /></p>
         
           <asp:Image CssClass="img"  runat="server" ImageUrl='<%# Eval("UrlHinh") %>' />
            <div class="div_nd">
            <p><asp:Label ID="TomTatLabel" runat="server" Text='<%# Eval("TomTat") %>' /></p>
            <br />

           <p><asp:Label ID="NoiDung1Label" runat="server" Text='<%# Eval("NoiDung1") %>' /></p> 
            <br />
            </div>
            <div class="div_chitiet">
                 <asp:Image runat="server" Height="16px" ImageUrl="~/App_Themes/Chi_tiet.gif"  /> <a class="a_chitiet" href="Giaitri_chitiet.aspx">Chi tiết</a>
            </div>
           
            <hr style="width:100%; height:4px" />
        </ItemTemplate>
    </asp:DataList>
    <asp:LinqDataSource ID="LinqData_tin_Giaitri" runat="server" ContextTypeName="Web_tintuc2.Web_tintucDataContext" EntityTypeName="" Select="new (TieuDe, TomTat, NoiDung1, Ngay, urlHinh)" TableName="Tins" Where="idLT == @idLT">
        <WhereParameters>
            <asp:Parameter DefaultValue="1" Name="idLT" Type="Int32" />
        </WhereParameters>
    </asp:LinqDataSource>
      
    </div>   
</asp:Content>



<asp:Content ID="Content4" runat="server" contentplaceholderid="ContentPlaceHolder3">
     <div>
         <h1>Công Nghệ</h1>
            <hr style="width:100%; height:4px; background-color:mediumorchid"/>
          <asp:DataList ID="DataList2" runat="server" DataSourceID="LinqDataSource1" Width="98%">
              <ItemTemplate>

                  <style>
               
                h2{
                    margin-left:12px;
                    text-align:left;
                }
                p{
                    font-size:16px;
                    text-align:justify;
                    margin:12px;
                }
                .img{
                    float: left;
                    margin-left:10px;
                    width:240px;
                    height:160px;
                }
                .div_nd{
                    margin-left:260px;
                }
                .div_chitiet{
                    color: maroon;
                    float:right;
                }
             
            </style>
           
            <h2><asp:Label ID="TieuDeLabel" runat="server" Text='<%# Eval("TieuDe") %>' /></h2> 
           <p> <asp:Label ID="NgayLabel" runat="server" Text='<%# Eval("Ngay") %>' /></p>
         
           <asp:Image CssClass="img"  runat="server" ImageUrl='<%# Eval("UrlHinh") %>' />
            <div class="div_nd">
            <p><asp:Label ID="TomTatLabel" runat="server" Text='<%# Eval("TomTat") %>' /></p>
            <br />

           <p><asp:Label ID="NoiDung1Label" runat="server" Text='<%# Eval("NoiDung1") %>' /></p> 
            <br />
            </div>
            <div class="div_chitiet">
                 <asp:Image runat="server" Height="16px" ImageUrl="~/App_Themes/Chi_tiet.gif"  /> <a class="a_chitiet" href="Giaitri_chitiet.aspx">Chi tiết</a>
            </div>
           
            <hr style="width:100%; height:4px" />
     
              </ItemTemplate>
    </asp:DataList>
    <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="Web_tintuc2.Web_tintucDataContext" EntityTypeName="" Select="new (TieuDe, TomTat, NoiDung1, Ngay, urlHinh)" TableName="Tins" Where="idLT == @idLT">
        <WhereParameters>
            <asp:Parameter DefaultValue="2" Name="idLT" Type="Int32" />
        </WhereParameters>
    </asp:LinqDataSource>
    </div>
</asp:Content>
