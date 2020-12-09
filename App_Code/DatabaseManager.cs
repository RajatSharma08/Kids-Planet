using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.OleDb;
using System.Data;

/// <summary>
/// Summary description for DatabaseManager
/// </summary>
public class DatabaseManager
{
    OleDbConnection con = new OleDbConnection(@"Provider=Microsoft.ACE.OleDB.12.0;Data Source=E:\KidsP\KidsPlenet.accdb");
    public bool ExecuteInsertUpdateDelete(string Query)
    {
        OleDbCommand cmd = new OleDbCommand(Query, con);
        if (con.State == ConnectionState.Closed)
            con.Open();
        int n=cmd.ExecuteNonQuery();
        con.Close();
        if (n > 0)
        {
            return true;
        }
        else
            return false;
    }
    public DataTable ExecuteSlect(string Query)
    {
        OleDbDataAdapter da = new OleDbDataAdapter(Query, con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;
    }
}