using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(CrudEstudaintes.Startup))]
namespace CrudEstudaintes
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
