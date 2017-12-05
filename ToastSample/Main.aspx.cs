using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ToastSample
{
    public partial class Main : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnNotice_Basic_Click(object sender, EventArgs e)
        {
            MessageBox.Message(this.Page,"success","정상적으로 저장되었습니다",null,null,false,false);
        }

        protected void btnNotice_Close_Click(object sender, EventArgs e)
        {
            MessageBox.MessageAndCloseWindow(this.Page, "success", "정상적으로 저장되었습니다", null, null, false, false);
        }

        protected void btnNotice_Change_Click(object sender, EventArgs e)
        {
            MessageBox.MessageAndChangeLocation(this.Page, "success", "정상적으로 저장되었습니다", null, null, false, false,"Login.aspx");
        }

        protected void btnNotice_Reload_Click(object sender, EventArgs e)
        {
            MessageBox.MessageAndReload(this.Page, "success", "정상적으로 저장되었습니다", null, null, false, false);
        }


        protected void btnNotice_CallBack_Close_Click(object sender, EventArgs e)
        {
            MessageBox.MessageAndCloseWindowCallBack(this.Page, "success", "정상적으로 저장되었습니다", null, null, false, false);
        }

        protected void btnNotice_Change_CallBack_Click(object sender, EventArgs e)
        {
            MessageBox.MessageAndChangeLocationCallBack(this.Page, "success", "정상적으로 저장되었습니다", null, null, false, false, "Login.aspx");
        }

        protected void btnNotice_Reload_CallBack_Click(object sender, EventArgs e)
        {
            MessageBox.MessageAndReloadCallBack(this.Page, "success", "정상적으로 저장되었습니다", null, null, false, false);
        }
    }
}