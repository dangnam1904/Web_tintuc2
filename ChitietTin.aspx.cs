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
    public partial class ChitietTin : System.Web.UI.Page
    {
        private const string connectString = @"Data Source=DESKTOP-RT3QMVS; Initial Catalog =web_tintuc; Integrated Security=True;";
        //SqlConnection ketnoi = new SqlConnection();
        //SqlCommand lenh = new SqlCommand();
        //SqlDataAdapter da = new SqlDataAdapter();
        Web_tintucDataContext web = new Web_tintucDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            //ketnoi.ConnectionString = connectString;
            //ketnoi.Open();
            if(!IsPostBack)
            {
                loadCt_tin();
            }
           
        }
        public void loadCt_tin()
        {
            var a = from i in web.Tins where i.idTin == 1 select i;
            //lenh.CommandText = " Select *from Tin where idTin=1";
            //lenh.Parameters.Clear();
            //DataTable dt = new DataTable();
            //da.SelectCommand = lenh;
            //da.Fill(dt);
            dataList_ctTin.DataSource = a;
            dataList_ctTin.DataBind();

        }
    }
}