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
using System.Text.RegularExpressions;
using System.Net;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataView dv = (DataView)allSqlDataSource1.Select(DataSourceSelectArguments.Empty);
            FindImage(dv.Table.Rows[2][1].ToString());


            try
            {
                TabContainer1.ActiveTabIndex = Convert.ToInt32(Request.Cookies["tab"].Value);
            }
            catch
            { TabContainer1.ActiveTabIndex = 0; }
        }

    }
    public void FindImage(string content)
    {
        // First we see the input string.
        string input = content;

        // Here we call Regex.Match.
        Match match = Regex.Match(input, "src=[\'|\"](.+?)[\'|\"]",RegexOptions.IgnoreCase);

        // Here we check the Match instance.
        if (match.Success)
        {
            // Finally, we get the Group value and display it.
            string key = match.Groups[0].Value;
            Response.Write(key);
        }
    }


    protected void TabContainer1_ActiveTabChanged(object sender, EventArgs e)
    {
        Response.Cookies["tab"].Value = TabContainer1.ActiveTabIndex.ToString();
    }
}
