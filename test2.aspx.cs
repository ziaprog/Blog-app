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
using System.Text;

public partial class test2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string lastid = Request["lastmsg"];
        SqlDataSource1.SelectParameters["ID"].DefaultValue =lastid;
        DataView dv = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
        int id = Convert.ToInt32(dv.Table.Rows[4][0]);
        DataTable dt = dv.Table;
        
        StringBuilder sb = new StringBuilder();
       
        foreach (DataRowView dr in dt.DefaultView)
        {
            sb.Append("<li>" + dr[1].ToString() + "</li>");
        }
       

        sb.Append("<div id='more" + id + "' class='morebox'>" +
            "<a href='#' class='more' id='" + id + "'>more</a></div>");
       
        Response.Write ( sb.ToString());
    }
}
