using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_tintuc2
{
    public partial class Trangchu : System.Web.UI.MasterPage
    {
        private const string connectString = @"Data Source=DESKTOP-RT3QMVS; Initial Catalog =web_tintuc; Integrated Security=True;";

        Web_tintucDataContext web = new Web_tintucDataContext(connectString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                loadMenu();
            }
            lb_sesion.Text = "Xin chào:  "+Session["admin"]+" ";
        }
        public void loadMenu()

        { 
            var load = from i in web.loaitins select i;
            DataList3.DataSource = load;
            DataList3.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Remove("admin");
            Response.Redirect("TrangChu.aspx");
        }
    }
}