<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="ToastSample.Main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" type="text/css" href="css/jquery.toast.min.css" />
    <script src="js/jquery-1.12.3.js" type="text/javascript"></script>
    <script src="js/jquery.toast.min.js" type="text/javascript"></script>
    <script src="js/ToastAlert.js" type="text/javascript"></script>
    <style type="text/css">
        body {
            font-family: '맑은 고딕';
        }

        .auto-style3 {
            height: 160px;
        }


        .table-cell-wrapper-online {
            position: absolute;
        }

        .table-cell-online {
            height: 200px;
            width: 200px;
            margin-left: 50px;
            vertical-align: auto;
            display: table-cell;
        }

        .table-cell-wrapper-mobile {
            position: absolute;
        }

        .table-cell-mobile {
            height: 200px;
            width: 200px;
            vertical-align: auto;
            display: table-cell;
        }

        .table-border {
            border-width: 1px;
            border-color: blue;
            border-style: solid;
        }

        .table-td-border {
            border-bottom: 1px solid blue;
        }



        .receipt-online {
            padding-left: 170px;
        }

        .receipt-mobile {
            padding-left: 800px;
        }
    </style>
    <title></title>
    <script type="text/javascript">
        function Fn_AspxNoti(type, msg, title, position, showclosebutton, loader) {
            //toastify(type, msg, title, position, showclosebutton,loader)
            toastify(type, 'Toast창 테스트입니다.', title, position, showclosebutton, loader);
        }

        function fn_Popup() {

            window.open('Popup.aspx', '', ' width=900,height=800,scrollbars=yes,resizeable=no,left=150,top=150');
        }


    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table border="1" style="margin-left: 50px; margin-top: 0px; width: 1000px;">
                <tr>
                    <td colspan="6" style="text-align: center; font-weight: bold; font-size: 20px;">Toast 사용 CASE 데모 사이트
                    </td>
                </tr>

            </table>
            <table style="margin-left: 50px; margin-top: 0px; width: 1000px;" border="1">
                <tr>
                    <td style="text-align: center; width: 500px; padding-bottom: 10px; font-weight: bold; font-size: 20px;">
                        <table style="margin: auto;">
                            <tr>
                                <td style="text-align: center; color: red;">[.ASPX단에서 사용 CASE] </td>
                            </tr>
                            <tr>
                                <td style="text-align: center;">
                                    <table style="margin: auto;">
                                        <tr>
                                            <td>1.단순메시지</td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: center;">
                                                <input type="button" onclick="Fn_AspxNoti('warning');" value="경고창" /></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: center;">
                                                <input type="button" onclick="Fn_AspxNoti('success');" value="성공창" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: center;">
                                                <input type="button" onclick="Fn_AspxNoti('error');" value="에러창" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: center;">
                                                <input type="button" onclick="Fn_AspxNoti('info');" value="정보창" />
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: center;">
                                    <table style="margin: auto;">
                                        <tr>
                                            <td>2.Title 추가</td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: center;">
                                                <input type="button" onclick="Fn_AspxNoti('warning', null, '경고');" value="경고 타이틀추가" /></td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: center;">
                                    <table style="margin: auto;">
                                        <tr>
                                            <td>3.창 위치변경</td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: center;">
                                                <input type="button" onclick="Fn_AspxNoti('warning', null, '경고', 'bottom-left');" value="bottom-left" /></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: center;">
                                                <input type="button" onclick="Fn_AspxNoti('warning', null, '경고', 'bottom-right');" value="bottom-right" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: center;">
                                                <input type="button" onclick="Fn_AspxNoti('warning', null, '경고', 'bottom-center');" value="bottom-center" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: center;">
                                                <input type="button" onclick="Fn_AspxNoti('warning', null, '경고', 'top-left');" value="top-left" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: center;">
                                                <input type="button" onclick="Fn_AspxNoti('warning', null, '경고', 'top-right');" value="top-right" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: center;">
                                                <input type="button" onclick="Fn_AspxNoti('warning', null, '경고', 'top-center');" value="top-center" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: center;">
                                                <input type="button" onclick="Fn_AspxNoti('warning', null, '경고', 'mid-center');" value="mid-center" />
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: center;">
                                    <table style="margin: auto;">
                                        <tr>
                                            <td>4.사용자 닫기버튼추가</td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: center;">
                                                <input type="button" onclick="Fn_AspxNoti('warning', null, '경고', null, true);" value="닫기버튼 추가" /></td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: center;">
                                    <table style="margin: auto;">
                                        <tr>
                                            <td>5.Loading bar 추가</td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: center;">
                                                <input type="button" onclick="Fn_AspxNoti('warning', null, '경고', null, null, true);" value="Loading bar 추가" /></td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>


                        </table>


                    </td>
                    <td style="text-align: center; width: 500px; font-weight: bold; font-size: 20px;">
                        <table style="margin: auto;">
                            <tr>
                                <td style="color: red;">[.CS단에서 사용 CASE]</td>
                            </tr>
                            <tr>
                                <td>
                                    <table style="margin: auto;">
                                        <tr>
                                            <td style="color: red;">1. setTimeout()함수 사용</td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Button ID="btnNotice_Basic" runat="server" Text="단순 알림 처리" OnClick="btnNotice_Basic_Click" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Button ID="btnNotice_Close" runat="server" Text="알림 처리 후 창닫기" OnClick="btnNotice_Close_Click" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Button ID="btnNotice_Change" runat="server" Text="알림 처리 후 페이지이동" OnClick="btnNotice_Change_Click" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Button ID="btnNotice_Reload" runat="server" Text="알림처리 후 페이지 Reload" OnClick="btnNotice_Reload_Click" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <input type="button" onclick="fn_Popup();" value="자식창 띄우기(TworldNet전용)" />
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table style="margin: auto;">
                                        <tr>
                                            <td style="color: red;">2. toast afterHidden()함수 사용(toast가 닫힘 처리 이후에 기본 제공 함수)</td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Button ID="btnNotice_CallBack" runat="server" Text="알림 처리 후 창닫기" OnClick="btnNotice_CallBack_Close_Click" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Button ID="btnNotice_Change_CallBack" runat="server" Text="알림 처리 후 페이지이동" OnClick="btnNotice_Change_CallBack_Click" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Button ID="btnNotice_Reload_CallBack" runat="server" Text="알림처리 후 페이지 Reload" OnClick="btnNotice_Reload_CallBack_Click" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <input type="button" onclick="fn_Popup();" value="자식창 띄우기(TworldNet전용)" />
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>

                    </td>
                </tr>

            </table>



            <br />
        </div>
    </form>
</body>
</html>
