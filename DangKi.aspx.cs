using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Web_tintuc2
{
    public partial class DangKi : System.Web.UI.Page
    {
        private const string connectString = @"Data Source=DESKTOP-RT3QMVS; Initial Catalog =web_tintuc; Integrated Security=True;";
    
       Web_tintucDataContext web = new Web_tintucDataContext(connectString);
       
        protected void Page_Load(object sender, EventArgs e)
        {
          
        }

        protected void btn_thoat_Click(object sender, EventArgs e)
        {
            Response.Redirect("Trangchu.aspx");
            
        }

        protected void btn_dangki_Click(object sender, EventArgs e)
        {
            
            string username = txt_username.Text;
            string phone = txt_Phone.Text;
            string password = txt_password.Text;
            string name = txt_name.Text;
            string ngaysinh = txt_brithday.Text;

            string diachi = txt_diachi.Text;
            string email = txt_Email.Text;    
            DateTime aDateTime = DateTime.Now;
           string ngaydangki = aDateTime.ToString("yyyy-MM-dd HH:mm:ss"); // fomat kiểu ngày thánh trong sql server
            string active = "Actived";
            int IdGruop = 2;
            string gioitinh1 = "Nam";
            String gioitinh2 = "Nữ";
            if(txt_username.Text=="")
            {
                Response.Write("<script>alert('Vui lòng nhập tên đăng nhập');</script>");
                return;
            }    
            else if(txt_password.Text=="")
            {
                Response.Write("<script>alert('Vui lòng nhập mật khẩu');</script>");
                return;
            }    
            else if(txt_name.Text=="")
            {
                Response.Write("<script>alert('Vui lòng nhập tên');</script>");
                return;
            }    
            var check = from item in web.Userlogins where item.Username == username select item;
            if( check.Count()>0)
            {
             
                Response.Write("<script>alert('Tên đăng nhập đã tồn tại');</script>");
                return;
            } 

         else if (Radio_nam.Checked == true)
            {
                User user = new User();
                user.HoTen = username;
                user.Diachi = diachi;
                user.Email = email;
                user.Dienthoai = phone;
                user.Gioitinh = gioitinh1;
                user.Ngaysinh = ngaysinh;
                user.idGroup = IdGruop;
                user.NgayDangKi = aDateTime;
                user.Active = active;
                web.Users.InsertOnSubmit(user);
                web.SubmitChanges();

                var maxObject = web.Users.Max(item => item.idUser);
                Userlogin userlogin = new Userlogin();
                userlogin.Username = username;
                userlogin.Password = password;
                userlogin.idUser = maxObject;
                web.Userlogins.InsertOnSubmit(userlogin);
                web.SubmitChanges();
                Response.Write("<script>alert('Đăng kí thành công');</script>");
            }
            else if (Radio_nu.Checked == true)
            {
                User user = new User();
                user.HoTen = username;
                user.Diachi = diachi;
                user.Email = email;
                user.Dienthoai = phone;
                user.Gioitinh = gioitinh2;
                user.Ngaysinh = ngaysinh;
                user.idGroup = IdGruop;
                user.NgayDangKi = aDateTime;
                user.Active = active;
                web.Users.InsertOnSubmit(user);
                web.SubmitChanges();

                var maxObject = web.Users.Max(item => item.idUser);
                Userlogin userlogin = new Userlogin();
                userlogin.Username = username;
                userlogin.Password = password;
                userlogin.idUser = maxObject;
                web.Userlogins.InsertOnSubmit(userlogin);
                web.SubmitChanges();
                Response.Write("<script>alert('Đăng kí thành công');</script>");

            }
        }
    }
}