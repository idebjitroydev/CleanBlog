using System;
using System.Data;
using System.Data.SqlClient;

public partial class Homepage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataSet ds = fillGrid();
        Repeater1.DataSource = ds;
        Repeater1.DataBind();
    }

    protected DataSet fillGrid()
    {
        string dbconn = @"Data Source = DESKTOP-FQ8I0F0\SQLEXPRESS; Initial Catalog = blog; Integrated Security = True";
        SqlConnection conn = new SqlConnection(dbconn);
        string sql = "SELECT * FROM tbl_posts";
        SqlDataAdapter sda = new SqlDataAdapter(sql, conn);
        DataSet ds = new DataSet();
        conn.Open();
        sda.Fill(ds);
        return ds;
    }
}