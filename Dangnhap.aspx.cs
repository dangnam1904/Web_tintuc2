using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_tintuc2
{
    public partial class Dangnhap : System.Web.UI.Page
    {
        private const string con = @"Data Source=DESKTOP-RT3QMVS; Initial Catalog =web_tintuc; Integrated Security=True;";
        Web_tintucDataContext web = new Web_tintucDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
          
        }

        protected void btn_login_Click(object sender, EventArgs e)
        {
           string userName = txt_username.Text;
           string password = txt_password.Text;
            var load = from i in web.loaitins select i;
            var use = from i in web.Userlogins join c in web.Users on i.idUser equals c.idUser where( i.Username == userName && i.Password == password  && c.idGroup==1 ) select i;
            var use1 = from i in web.Userlogins join c in web.Users on i.idUser equals c.idUser where (i.Username == userName && i.Password == password && c.idGroup == 2) select i;
            int kt = use.Count();
            int kt1 = use1.Count();

            if(userName=="")
            {
                Response.Write("<script>alert('Vui lòng nhập tài khoản')</script>");
            }
            else if(password=="")
            {
                Response.Write("<script>alert('Vui lòng nhập mật khẩu')</script>");
            } 
            
            if (kt > 0)
            {
                Session["admin"] = userName;
            
                Response.Redirect("~/Admin/TrangChu_admin.aspx");
            }
            else if( kt1>0)
            {
                    Session["admin"] = userName;
                    Response.Redirect("TrangChu.aspx");
            }    
            else
            {
                lblThongBao.Text = "Đăng nhập thất bại. Mời thử lại !";
                txt_username.Text = "";
                txt_password.Text = "";
                txt_username.Focus();
            }
            
        }
    }
}