using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class edit_post : System.Web.UI.Page
{
    DataView dv;
    protected void Page_Load(object sender, EventArgs e)
    {
        dv = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
               
        if (!IsPostBack)
        {
            try
            {
                dv = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
                txtTitle.Text = dv.Table.Rows[0]["post_title"].ToString();
                Editor1.Text = dv.Table.Rows[0]["post_content"].ToString();
            }
            catch { Response.Write("no such post"); }
        }
    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        SqlDataSource1.UpdateParameters["id"].DefaultValue = dv.Table.Rows[0]["ID"].ToString();
        SqlDataSource1.UpdateParameters["title"].DefaultValue = txtTitle.Text;
        SqlDataSource1.UpdateParameters["content"].DefaultValue = Editor1.Text;
        SqlDataSource1.Update();
    }
}
