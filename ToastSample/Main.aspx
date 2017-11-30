<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="ToastSample.Main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" type="text/css" href="css/jquery.toast.min.css" />
    <script src="js/jquery-1.12.3.js" type="text/javascript"></script>
    <script src="js/jquery.toast.min.js" type="text/javascript"></script>
    <script src="js/ToastAlert.js" type="text/javascript"></script>
      <style type="text/css">
        .auto-style3 {
            height: 160px;
        }

 
        .table-cell-wrapper-online {position: absolute; }
        .table-cell-online {height: 200px; width: 200px; margin-left:50px; vertical-align:auto; display: table-cell; }

        .table-cell-wrapper-mobile {position: absolute; }
        .table-cell-mobile {height: 200px; width: 200px;  vertical-align:auto; display: table-cell;}

        .table-border{border-width:1px; border-color:blue; border-style:solid;}
        .table-td-border{border-bottom:1px solid blue;}

        

        .receipt-online{padding-left:170px;}
        .receipt-mobile{padding-left:800px;}

        

        </style>
    <title></title>
    <script type="text/javascript">
        function Fn_AspxNoti(type)
        {
            //toastify(type, msg, title, position, showclosebutton,loader)
            toastify(type, 'Toast창 테스트입니다.', null, null, false, false);
        }

        function fn_Popup()
        {

            window.open('Popup.aspx', '', ' width=900,height=800,scrollbars=yes,resizeable=no,left=150,top=150');
        }


    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
           <table border="1" style="margin-left:50px;margin-top:0px; width:1000px;" >
               <tr>
                   <td colspan="6" style="text-align:center;font-weight:bold; font-size:20px;">
                      Toast 사용 CASE 데모 사이트
                   </td>
               </tr>
       
           </table> 
           <table style="margin-left:50px;margin-top:0px; width:1000px;" border="1">
               <tr>
                   <td style="text-align:center; width:400px;  padding-bottom:10px; font-weight:bold; font-size:20px;">
                       <table>
                           <tr>
                               <td>     [.ASPX단에서 사용 CASE]
</td>
                           </tr>
                           <tr>
                                        <td style="text-align:center;">  
                                              <input type="button"  onclick="Fn_AspxNoti('warning');" value="경고창" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align:center;">  
                                              <input type="button"  onclick="Fn_AspxNoti('success');" value="성공창" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align:center;">  
                                              <input type="button"  onclick="Fn_AspxNoti('error');" value="에러창" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align:center;">  
                                              <input type="button"  onclick="Fn_AspxNoti('info');" value="정보창" />
                                        </td>
                                    </tr>

                       </table>
             

                   </td>
                   <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                   <td colspan="3" style="text-align:center; width:400px;font-weight:bold; font-size:20px;">
                       <table>
                           <tr>
                               <td>  [.CS단에서 사용 CASE]</td>
                           </tr>
                           <tr>
                               <td>
                                   <asp:Button ID="btnNotice_Basic" runat="server" Text="단순 알림 처리" OnClick="btnNotice_Basic_Click" />
                               </td>
                           </tr>
                           <tr>
                               <td>
                                   <asp:Button ID="btnNotice_Close" runat="server" Text="알림 처리 후 창닫기" OnClick="btnNotice_Close_Click"  />
                               </td>
                           </tr>
                           <tr>
                               <td>
                                   <asp:Button ID="btnNotice_Change" runat="server" Text="알림 처리 후 페이지이동" OnClick="btnNotice_Change_Click"  />
                               </td>
                           </tr>
                            <tr>
                               <td>
                                   <asp:Button ID="btnNotice_Reload" runat="server" Text="알림처리 후 페이지 Reload" OnClick="btnNotice_Reload_Click"  />
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



        <br />
    </div>
    </form>
</body>
</html>
