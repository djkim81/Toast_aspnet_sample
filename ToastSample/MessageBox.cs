using System;
using System.Web;
using System.Text.RegularExpressions;
using System.Collections.Generic;
using System.Text;
using System.Data;
using System.IO;
using System.Globalization;
using System.Security.Cryptography;
using System.Web.UI;
using System.Xml;

namespace ToastSample
{
    public static class MessageBox
    {
        public static void Message(this Page Page, String Type, String Message, String Title, String Position, Boolean ShowCloseButton, Boolean Loader)
        {
            Page.ClientScript.RegisterClientScriptBlock(
              Page.GetType(),
              "MessageBox",
              "toastify('" + Type + "','" + Message + "','" + Title + "','" + Position + "',"+ShowCloseButton.ToString().ToLower()+","+Loader.ToString().ToLower()+");",
              true
           );
        }


        public static void MessageAndCloseWindow(this Page Page, String Type, String Message, String Title, String Position, Boolean ShowCloseButton, Boolean Loader)
        {
            Page.ClientScript.RegisterClientScriptBlock(
              Page.GetType(),
              "MessageBox",
              "toastify('" + Type + "','" + Message + "','" + Title + "','" + Position + "'," + ShowCloseButton.ToString().ToLower() + "," + Loader.ToString().ToLower() + ");setTimeout(function(){window.opener='nothing'; window.open('','_parent','');window.close();},1000);",
              true
           );
        }

        public static void MessageAndChangeLocation(this Page Page, String Type, String Message, String Title, String Position, Boolean ShowCloseButton, Boolean Loader,String Url)
        {
            Page.ClientScript.RegisterClientScriptBlock(
              Page.GetType(),
              "MessageBox",
              "toastify('" + Type + "','" + Message + "','" + Title + "','" + Position + "'," + ShowCloseButton.ToString().ToLower() + "," + Loader.ToString().ToLower() + ");setTimeout(function(){ location.href  = '" + Url + "'; },1000);",
              true
           );
        }

        public static void MessageAndReload(this Page Page, String Type, String Message, String Title, String Position, Boolean ShowCloseButton, Boolean Loader)
        {
            Page.ClientScript.RegisterClientScriptBlock(
              Page.GetType(),
              "MessageBox",
              "toastify('" + Type + "','" + Message + "','" + Title + "','" + Position + "'," + ShowCloseButton.ToString().ToLower() + "," + Loader.ToString().ToLower() + ");setTimeout(function(){location.href=location.href;},1000);",
              true
           );
        }

        //TworldNet
        public static void CloseWindowAndParentReloadAsync_TWorldNet(this Page Page, String Type, String Message, String Title, String Position, Boolean ShowCloseButton, Boolean Loader)
        {
            Page.ClientScript.RegisterClientScriptBlock(
              Page.GetType(),
              "MessageBox",
              "opener.location.href = opener.location.href.replace('NoticeType','Expired');toastify('" + Type + "','" + Message + "','" + Title + "','" + Position + "'," + ShowCloseButton.ToString().ToLower() + "," + Loader.ToString().ToLower() + "); setTimeout(function () {window.close();},1000);",
              true
           );
        }



    }
}