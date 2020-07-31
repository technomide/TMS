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
    public partial class Employee_Form : Form
    {
        public Employee_Form()
        {
            InitializeComponent();
        }

        string conString;
        public static string FinalConString;
        SqlConnection FinalCon = new SqlConnection();


        UC_Employee_Data emp_UC;
        UC_Modify modify_UC;

        private void Employee_Form_Load(object sender, EventArgs e)
        {

            panel_data.Show();
            panel_add_update.Hide();

            //Connection and Query


            DataTable dt = new DataTable();
            //sda.Fill(dt);


            int j = 0;
            var Top = 10;
            var Left = 200;

            for (int i = 0; i < 5; i++)
            {
                emp_UC = new UC_Employee_Data();
                emp_UC.Width = 550;
                emp_UC.Height = 25;

                //emp_UC.label_employee_id.Text = dt.Rows[i][j++].ToString();
                //emp_UC.label_employee_name.Text = dt.Rows[i][j++].ToString();
                //emp_UC.label_employee_type.Text = dt.Rows[i][j++].ToString();
                //emp_UC.label_employee_salary.Text = dt.Rows[i][j++].ToString();


                emp_UC.label_employee_id.Text = "A";
                emp_UC.label_employee_name.Text = "B";
                emp_UC.label_employee_type.Text = "C";
                emp_UC.label_employee_salary.Text = "D";



                j = 0;

                emp_UC.Left = 0;
                emp_UC.Top = Top;
                panel_data.Controls.Add(emp_UC);

                modify_UC = new UC_Modify();
                modify_UC.Width = 90;
                modify_UC.Height = 30;

                modify_UC.Top = Top;
                modify_UC.Left = Left + 350;
                panel_data.Controls.Add(modify_UC);

                Top += 30;
            }

        }

        private void radioButton2_CheckedChanged(object sender, EventArgs e)
        {

        }

        private void label3_Click(object sender, EventArgs e)
        {

        }

        private void radioButton1_CheckedChanged(object sender, EventArgs e)
        {

        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void label_rollofuser_Click(object sender, EventArgs e)
        {

        }

        private void comboBox2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        //public string DashBoard_Data(string q)
        //{
        //    SqlCommand dbCommand = new SqlCommand(q, Database_Connection.con);
        //    Database_Connection.con.Open();
        //    SqlDataAdapter sda = new SqlDataAdapter(dbCommand);

        //    DataTable dt = new DataTable();
        //    sda.Fill(dt);
        //    Database_Connection.con.Close();



    }
    }
