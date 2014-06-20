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

public partial class post : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            DataView dv = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
            HtmlMeta keywords = new HtmlMeta();
            HtmlHead head = (HtmlHead)Page.Header;
            keywords.Name = "keywords";
            keywords.Content = dv[0]["post_title"].ToString().Replace(" ", ",");
            head.Controls.Add(keywords);

            //title


            HtmlTitle title = new HtmlTitle();
            title.Text = "Asp Lessons - " + dv[0]["post_title"].ToString();
            head.Controls.Add(title);

            //bind content
            lblContent.Text = "<h1>" + dv[0]["post_title"].ToString() + "</h1></br>" + dv[0]["post_content"].ToString();
        }
        catch
        { Response.Write("no such post"); }
    }
}
