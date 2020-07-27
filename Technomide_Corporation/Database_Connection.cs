using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;

namespace Technomide_Corporation
{
    class Database_Connection
    {

        public SqlConnection con;
        public Database_Connection()
        {
            con = new SqlConnection("Data Source=DESKTOP-0VTF41Q\\SQLEXPRESS;Initial Catalog=\"School Management System\";Integrated Security=True");
        }


    }
}
