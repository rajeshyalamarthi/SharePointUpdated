using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.SharePoint.Client;

namespace DAL.Repository
{
    class ContentRepository
    {
        CredentialsRepository credentials = new CredentialsRepository();
        ClientContext clientcntx;
        public void GetSiteDetails()
        {
            credentials.SetUSerCredentials();
            using (clientcntx = new ClientContext(credentials.Url))
            {
                clientcntx.Credentials = new SharePointOnlineCredentials(credentials.username,credentials.password);

            }
        }

    }
}
