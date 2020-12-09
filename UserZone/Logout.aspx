<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Logout.aspx.cs" Inherits="UserZone_Logout" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        function logout()
        {
            window.history.forward();
            window.setTimeout("window.location.href='../Login.aspx'", 1000);
        }


    </script>
</head>
<body onload="logout()" style="background-color:deepskyblue">
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
</body>
</html>
