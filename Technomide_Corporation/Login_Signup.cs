using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace Technomide_Corporation
{
    public partial class Login_Signup : Form
    {
        public Login_Signup()
        {
            InitializeComponent();
        }

        Database_Connection DBcon = new Database_Connection();
        SqlCommand cmd;

        Owner_Form own = new Owner_Form();

        private void btn_login_Click(object sender, EventArgs e)
        {

            own.Show();

            //SqlDataAdapter sda = new SqlDataAdapter("select COUNT(*) from Users where username = '" + txt_login_username.Text + "' and password = '" + txt_login_pass.Text + "'", DBcon.con);

            //DataTable dt = new DataTable();

            //sda.Fill(dt);

            //if (dt.Rows[0][0].ToString() == "1")
            //{
            //    cmd = DBcon.con.CreateCommand();
            //    cmd.CommandText = "select roll_of_user from Users where username = '" + txt_login_username.Text + "' ";
            //    DBcon.con.Open();
            //    string result = ((string)cmd.ExecuteScalar()).ToLower();
            //    DBcon.con.Close();

            //    MessageBox.Show(result.ToUpper() + " Login Successfully ");

            //    if (result == "owner")
            //    {
            //        own.Show();
            //    }
            //}


        }


        private void label5_Click(object sender, EventArgs e)
        {
            panel_login.BringToFront();
        }

        private void btn_signup_Click(object sender, EventArgs e)
        {

            DBcon.con.Open();



            cmd.ExecuteNonQuery();
            DBcon.con.Close();


        }

        private void Login_Signup_Load(object sender, EventArgs e)
        {

        }
    }
}
