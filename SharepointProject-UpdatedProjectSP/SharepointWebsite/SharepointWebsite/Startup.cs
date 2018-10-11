using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(SharepointWebsite.Startup))]
namespace SharepointWebsite
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
