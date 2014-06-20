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

public partial class new_post : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnPublish_Click(object sender, EventArgs e)
    {
        SqlDataSource1.InsertParameters["title"].DefaultValue = txtTitle.Text;
        SqlDataSource1.InsertParameters["content"].DefaultValue = Editor1.Text;
        SqlDataSource1.Insert();

        Editor1.Text = "";
        txtTitle.Text = "";
    }
}
