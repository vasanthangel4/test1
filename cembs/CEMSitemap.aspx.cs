﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CEMSitemap : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void TreeView1_TreeNodeDataBound(object sender, TreeNodeEventArgs e)
    {
        if (e.Node.Text == "Food Lovers")
        {
            e.Node.Parent.ChildNodes.Remove(e.Node);
        }
    }
}