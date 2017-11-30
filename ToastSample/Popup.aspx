<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Popup.aspx.cs" Inherits="ToastSample.Popup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <link rel="stylesheet" type="text/css" href="css/jquery.toast.min.css" />
    <script src="js/jquery-1.12.3.js" type="text/javascript"></script>
    <script src="js/jquery.toast.min.js" type="text/javascript"></script>
    <script src="js/ToastAlert.js" type="text/javascript"></script>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    *팝업화면<br />
        <asp:Button ID="btnNotice_TworldNet" runat="server" Text="알림처리 후 창닫히고 부모창 Reload(CloseWindowAndParentReloadAsync_TWorldNet)" OnClick="btnNotice_TworldNet_Click" />
    </div>
    </form>
</body>
</html>
