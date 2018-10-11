using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Microsoft.SharePoint.Client;
using System.Security;

namespace SharepointWebsite
{
    public class ListData
    {
        Credentials credentials = new Credentials();
        ClientContext clientcntx;
        public List<string> GetlistData()
        {
            List<string> sitelist;
            credentials.SetUSerCredentials();
            //using (clientcntx = new ClientContext(credentials.Url))
            //{

            //clientcntx.Credentials = new SharePointOnlineCredentials(credentials.username, credentials.password);
             clientcntx = ClientContextCredentials.isClX;
            Web Webpage = clientcntx.Web;
                clientcntx.Load(Webpage.Lists, lists => lists.Include(list => list.Title, list => list.Id));
                try
                {
                    clientcntx.ExecuteQuery();
                }
                catch (Exception ex)
                {
                    Console.WriteLine("Error: " + ex);
                    throw ex;
                }

               sitelist = new List<string>();
                foreach (List l in Webpage.Lists)
                {
                    sitelist.Add(l.Title);
                }
            
            return sitelist;
        }

        public List<string> GetFields(string Listname)
        {
            List<string> fieldlist;
            credentials.SetUSerCredentials();
            //using (clientcntx = new ClientContext(credentials.Url))
            //{

            //clientcntx.Credentials = new SharePointOnlineCredentials(credentials.username, credentials.password);
            ClientContext clientContext = ClientContextCredentials.isClX;
                List list = clientcntx.Web.Lists.GetByTitle(Listname);


            //foreach(Field f in list.Fields) {

            //    if (f.Hidden == true)
            //    {
            //        FieldCollection fieldc = f.;
            //    }
            //}


            FieldCollection fieldc = list.Fields;


                clientcntx.Load(fieldc, X=>X.Where(y => y.Hidden == true));
                clientcntx.ExecuteQuery();
                fieldlist = new List<string>();
                foreach (Field field in fieldc)
                {
                    fieldlist.Add(field.Title);
                }
           // }
            return fieldlist;
        }

        public List<string> GetViews(string Listname)
        {
            List<string> viewset;
            credentials.SetUSerCredentials();
            //using (clientcntx = new ClientContext(credentials.Url))
            //{

            //    clientcntx.Credentials = new SharePointOnlineCredentials(credentials.username, credentials.password);
            ClientContext clientContext = ClientContextCredentials.isClX;
            List list = clientcntx.Web.Lists.GetByTitle(Listname);
                ViewCollection viewc = list.Views;
                clientcntx.Load(viewc);
                clientcntx.ExecuteQuery();
                viewset = new List<string>();
                foreach (View v in viewc)
                {
                    viewset.Add(v.Title);
                }
              
            
            return viewset;
        }
    }
}