using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.SharePoint.Client;
using System.Security;

namespace DAL.Repository
{
    public class CredentialsRepository
    {
        internal string username;
        internal string Url;
        internal SecureString password;
        public void SetUSerCredentials()
        {
           
            //Console.WriteLine("Enter your site name");
            string sitename = "shubhamtrial";//Console.ReadLine();
          
            //Console.WriteLine("Enter USerName");
            username ="arvind.torvi@acuvate.com";
            Console.WriteLine("Enter your password.");
            password =GetPassword();
            //string site = "shubhamtrial";
            Url = "https://acuvatehyd.sharepoint.com/teams/" + sitename;
        }
        private static SecureString GetPassword()
        {
            string pass="Arti@4003";
            //Get the user's password as a SecureString  
            SecureString securePassword = new SecureString();
            for (int i = 0; i < pass.Length; i++)
            {
                securePassword.AppendChar(pass[i]);
            }
            return securePassword;
        }
    }

}
