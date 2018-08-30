using System;
using System.Data;
using System.Data.SqlClient;

public partial class Post : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        FillData();
    }

    protected void FillData()
    {
        int ID = Convert.ToInt32(Request.QueryString["ID"]);
        string dbconn = @"Data Source = DESKTOP-FQ8I0F0\SQLEXPRESS; Initial Catalog = blog; Integrated Security = True";
        SqlConnection conn = new SqlConnection(dbconn);
        string sql = "SELECT * FROM tbl_posts WHERE ID='" + ID + "'";
        SqlDataAdapter sda = new SqlDataAdapter(sql, conn);
        DataSet ds = new DataSet();
        conn.Open();
        sda.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            Label1.Text = ds.Tables[0].Rows[0]["Name"].ToString();
        }
    }
}