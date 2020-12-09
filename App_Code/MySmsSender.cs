using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net;

/// <summary>
/// Summary description for MySmsSender
/// </summary>
public class MySmsSender
{
    string MyUserId, MySecurityCode, MySenderId;
	public MySmsSender()
	{
        MyUserId="RAJAT";
        MySecurityCode="8620e45a26XX";
        MySenderId="LTIDLI";
		
	}
    public bool SendMySMS(string MobileNo, string Message)
    {
        string API = "http://sms.bulkssms.com/submitsms.isp?user=" + MyUserId + "&key=" + MySecurityCode + "&mobile=" + MobileNo + "&message=" + Message + "&senderid=" + MySenderId + "&accusage=1";
        WebClient wc = new WebClient();
        try
        {
            wc.DownloadString(API);
            return true;
        }
        catch
        {
            return false;       
        }
    
    }
}