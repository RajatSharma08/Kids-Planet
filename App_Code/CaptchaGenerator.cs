using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for CaptchaGenerator
/// </summary>
public class CaptchaGenerator
{
    public static string GetCode()
    {
        string capcode = "";
        char ch1, ch2, ch3, ch4,ch5, ch6;
        Random R = new Random();
        ch1 = (char)R.Next(65, 90);
        ch2 = (char)R.Next(65, 90);
        ch3 = (char)R.Next(48, 57);
        ch4 = (char)R.Next(48, 57);
        ch5 = (char)R.Next(97, 122);
        ch6 = (char)R.Next(97, 122);
        capcode = capcode + ch1 + ch2 + ch3 + ch4 + ch5 + ch6;
        return capcode;

    }
}