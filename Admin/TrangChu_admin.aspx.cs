using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_tintuc2.Admin
{
    public partial class TrangChu_admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string userName = Application["username"].ToString();
            Lb_xinchao.Text = "Xin chào  " + userName;
        }
    }
}