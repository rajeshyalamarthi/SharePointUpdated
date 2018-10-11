using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.SharePoint.Client;

namespace SharepointWebsite
{
    public partial class SiteContents : System.Web.UI.Page
    {
        //Credentials credentials = new Credentials();
        //ClientContext clientcntx;
       public ListData listData = new ListData();
        public List<string> contents;
       public List<string> fields;
        public List<string> views;
        protected void Page_Load(object sender, EventArgs e)
        {
            string name = Request.QueryString["SiteName"];
           // Label contentslist;
           
            contents = listData.GetlistData();

            sitetitle.Text = name + " " + "ListCollection";
           // TreeNode root = new TreeNode();
           //// Button backup;
           // root.Text = "site Contents";
           // TreeView1.Nodes.Add(root);
            for (int listcount = 0; listcount < contents.Count; listcount++)
            {
                //System.Web.UI.HtmlControls.HtmlGenericControl Parent1 = new System.Web.UI.HtmlControls.HtmlGenericControl();
                //Parent1.ID = "divcreated1";
                //Parent1.Attributes.Add("class", "container");

                //System.Web.UI.HtmlControls.HtmlGenericControl Child1 = new System.Web.UI.HtmlControls.HtmlGenericControl();
                //Child1.ID = "divcreated2";
                //Child1.Attributes.Add("class", "panel-group");




             ////   Parent1.Controls.Add(Child1);
             //   TreeNode listnode = new TreeNode();
             //   //Control c = new Control();
             //   listnode.CollapseAll();
             //   listnode.Text = contents[listcount];
             //   root.ChildNodes.Add(listnode);

             //   backup = new Button();
             //   backup.Text = "Backup";
                

                //fields = listData.GetFields(contents[listcount]);
                //views = listData.GetViews(contents[listcount]);


                //TreeNode fieldtitle = new TreeNode();
                //fieldtitle.CollapseAll();
                //fieldtitle.Text = "Fields";
                //listnode.ChildNodes.Add(fieldtitle);


                //TreeNode viewtitle = new TreeNode();
                //viewtitle.CollapseAll();
                //viewtitle.Text = "Views";
                //listnode.ChildNodes.Add(viewtitle);
                //for (int fieldcount = 0; fieldcount < fields.Count; fieldcount++)
                //{
                //    HyperLink edit = new HyperLink();
                //    edit.Text = "Edit";
                //    edit.NavigateUrl = "#";
                //    TreeNode child1 = new TreeNode();
                    
                //    child1.Text = fields[fieldcount];
                //    fieldtitle.ChildNodes.Add(child1);

                //    //fieldname = new Label();
                //    //fieldname.Text = fields[fieldcount]+"<br/>";
                //    //fieldname.ForeColor = System.Drawing.Color.Blue;
                //    //TreePlaceholder.Controls.Add(fieldname);
                //}

                //for (int viewcount = 0; viewcount < views.Count; viewcount++)
                //{
                //    TreeNode viewnode = new TreeNode();
                //    viewnode.Text = views[viewcount];
                //    viewtitle.ChildNodes.Add(viewnode);
                //}

            }

        }
       

    }
}