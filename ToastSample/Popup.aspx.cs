using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ToastSample
{
    public partial class Popup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnNotice_TworldNet_Click(object sender, EventArgs e)
        {
             MessageBox.CloseWindowAndParentReloadAsync_TWorldNet(this.Page, "success", "정상적으로 저장되었습니다", null, null, false, false);
        }
    }
}