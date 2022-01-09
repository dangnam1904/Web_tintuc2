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
    public partial class TinTheoLoai : System.Web.UI.Page
    {
        private const string connectString = @"Data Source=DESKTOP-RT3QMVS; Initial Catalog =web_tintuc; Integrated Security=True;";
        SqlConnection ketnoi = new SqlConnection();
        SqlCommand lenh = new SqlCommand();
        SqlDataAdapter da = new SqlDataAdapter();

        protected void Page_Load(object sender, EventArgs e)
        {
            ketnoi.ConnectionString = connectString;
            ketnoi.Open();
            lenh.Connection = ketnoi;
            if (! IsPostBack)
            {

               
                if (Request.QueryString["idLT"] != null)
                {
                    int idLT = Convert.ToInt32(Request.QueryString["idLT"]);
                           loadTinTheoLoai(idLT);
                }
                else
                {
                    loadTinTheoLoai(1);
                }
            }    

        }
        public void loadTinTheoLoai(int idLT) {

            lenh.CommandText = " Select *from Tin where idLT=@idLT";
            lenh.Parameters.Clear();
            lenh.Parameters.AddWithValue("@idLT", idLT);
            DataTable dt = new DataTable();
            da.SelectCommand = lenh;
            da.Fill(dt);
            dataList_tin.DataSource = dt;
            dataList_tin.DataBind();

           
        }
    }
}