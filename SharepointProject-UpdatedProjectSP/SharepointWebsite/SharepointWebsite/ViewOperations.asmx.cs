using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.SharePoint.Client;

namespace SharepointWebsite
{
    /// <summary>
    /// Summary description for ViewOperations
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class ViewOperations : System.Web.Services.WebService
    {
        [WebMethod]
        public bool DeleteView(string ListName, string ViewName)
        {
            bool isTaskDone = false;
            try
            {
                Microsoft.SharePoint.Client.View deleteView = ViewAddEdit.isCtx.Web.Lists.GetByTitle(ListName).Views.GetByTitle(ViewName);
                deleteView.Update();
                ViewAddEdit.isCtx.ExecuteQuery();
                isTaskDone = true;
            }
            catch (Exception ex)
            {
                Console.WriteLine("Ex :" + ex);
            }
            return isTaskDone;
        }
        //public void EditView(string ListName, string ViewName,string updatedviewname)
        //{
        //    bool isTaskDone = false;
        //    try
        //    {

        //    }
        //    catch (Exception ex)
        //    {
        //        Console.WriteLine("Error: " );
        //    }

        //}
    }
}