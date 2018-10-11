using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.SharePoint.Client;

namespace SharepointWebsite
{
    public partial class Editview : System.Web.UI.Page
    {
        string listtitle;
        string ViewTitle;
        protected void Page_Load(object sender, EventArgs e)
        {
            listtitle = Request.QueryString["ListName"];
            ViewTitle = Request.QueryString["ViewName"];


            Microsoft.SharePoint.Client.View editview = ViewAddEdit.isCtx.Web.Lists.GetByTitle(listtitle).Views.GetByTitle(ViewTitle);
            ViewAddEdit.isCtx.Load(editview);
            ViewAddEdit.isCtx.ExecuteQuery();
            List l = ViewAddEdit.isCtx.Web.Lists.GetByTitle(listtitle);
            ViewAddEdit.isCtx.Load(l);
            ViewAddEdit.isCtx.ExecuteQuery();

            FieldCollection fc = l.Fields;

            ViewAddEdit.isCtx.Load(fc);
            ViewAddEdit.isCtx.ExecuteQuery();

            for (int count = 0; count < fc.Count; count++)
            {
                FieldListBox.Items.Add(new System.Web.UI.WebControls.ListItem(fc[count].InternalName.ToString(), fc[count].InternalName.ToString()));
                for (int fieldcount = 0; fieldcount < editview.ViewFields.Count; fieldcount++)
                {
                    if (editview.ViewFields[fieldcount].ToString() == FieldListBox.Items[count].Text)
                    {
                        FieldListBox.Items[count].Selected = true;
                    }
                }

            }

        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            try
            {
                List list = ViewAddEdit.isCtx.Web.Lists.GetByTitle(listtitle);

                // Get all the view for the custom list
                Microsoft.SharePoint.Client.ViewCollection viewColl = list.Views;
                List<string> SelectedValuesForCollectingUserId = new List<string>();
                foreach (System.Web.UI.WebControls.ListItem item in FieldListBox.Items)
                {
                    if (item.Selected)
                    {
                        SelectedValuesForCollectingUserId.Add(item.Value);
                    }
                }

                //string[] viewFields = { "DocIcon", "LinkFilename", "_Author", "Modified", "Modified By" };

                ViewCreationInformation creationInfo = new ViewCreationInformation();

                creationInfo.Title = ViewTextBox.Text;
                creationInfo.RowLimit = 50;
                creationInfo.ViewFields = SelectedValuesForCollectingUserId.ToArray();
                creationInfo.ViewTypeKind = ViewType.None;
                viewColl.Add(creationInfo);

                ViewAddEdit.isCtx.ExecuteQuery();
            }
            catch (Exception ex)
            {
                Console.WriteLine("Exce :" + ex);
            }
            Response.Redirect("SiteContents.aspx");
        }
    }
}