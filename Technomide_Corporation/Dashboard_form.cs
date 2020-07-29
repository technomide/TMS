using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Technomide_Corporation
{
    public partial class Dashboard_form : Form
    {
        public Dashboard_form()
        {
            InitializeComponent();
        }
        public void Calling_LoadFrom(object sender, EventArgs e)
        {
            Dashboard_form_Load(sender, e);
        }
        private void Dashboard_form_Load(object sender, EventArgs e)
        {

            UC_Show_Total_Employees.label_function_name.Text = "Total Employees";
            UC_Show_Total_Employees.label_count.Text = DashBoard_Data("exec count_employees");

            UC_Show_Marked_Attendance.label_function_name.Text = "Marked Employees";
            UC_Show_Marked_Attendance.label_count.Text = DashBoard_Data("exec attendence_marked");

            UC_Show_Unmarked_Attendance.label_function_name.Text = "Unmarked Employees";
            UC_Show_Unmarked_Attendance.label_count.Text = DashBoard_Data("exec attendence_Unmarked");

            UC_Show_Total_Projects.label_function_name.Text = "Total Projects";
            UC_Show_Total_Projects.label_count.Text = DashBoard_Data("exec total_project");

            UC_Show_Completed_Projects.label_function_name.Text = "Completed Projects";
            UC_Show_Completed_Projects.label_count.Text = DashBoard_Data("exec project_completed");

            UC_Show_Ongoing_Projects.label_function_name.Text = "Ongoing Projects";
            UC_Show_Ongoing_Projects.label_count.Text = DashBoard_Data("exec ongoing_project");

            UC_Show_Total_Employees_1.label_function_name.Text = "Total Employees";
            UC_Show_Total_Employees_1.label_count.Text = DashBoard_Data("exec count_employees");

            UC_Show_Physical_Employees.label_function_name.Text = "Physical Employees";
            UC_Show_Physical_Employees.label_count.Text = DashBoard_Data("exec physical_appearence");

            UC_Show_Remotely_Employees.label_function_name.Text = "Remotely Employees";
            UC_Show_Remotely_Employees.label_count.Text = DashBoard_Data("exec remotely_working");

            UC_Show_Total_Consultant.label_function_name.Text = "Total Consultants";
            UC_Show_Total_Consultant.label_count.Text = DashBoard_Data("exec total_consultant");

            UC_Show_Active_Consultant.label_function_name.Text = "Active Consultants";
            UC_Show_Active_Consultant.label_count.Text = DashBoard_Data("exec Active_consultant");

            UC_Show_Inactive_Consultant.label_function_name.Text = "Inactive Consultants";
            UC_Show_Inactive_Consultant.label_count.Text = DashBoard_Data("exec NotActive_consultant");

            UC_Show_Today_Expense.label_function_name.Text = "Today Expense";
            UC_Show_Today_Expense.label_count.Text = DashBoard_Data("exec Total_Expense_Today '"+DateTime.Now.ToString()+"' ");
         
            string startMonth = DateTime.Now.Year.ToString() + "-" + DateTime.Now.Month.ToString() +"-"+ "01";
            string endMonth = DateTime.Now.Year.ToString() + "-" + DateTime.Now.Month.ToString() + "-" + "31";

            UC_Show_Monthly_Expense.label_function_name.Text = "Month Expense";
            UC_Show_Monthly_Expense.label_count.Text = DashBoard_Data("exec Total_Expense_Month '"+startMonth+"', '"+endMonth+"'");

            UC_Show_Today_Income.label_function_name.Text = "Today Income";
            UC_Show_Today_Income.label_count.Text = DashBoard_Data(" exec Total_Income_Today '" + DateTime.Now.ToString() + "' ");

            UC_Show_Month_Income.label_function_name.Text = "Month Income";
            UC_Show_Month_Income.label_count.Text = DashBoard_Data("exec Total_Income_Month '" + startMonth + "', '" + endMonth + "'");

            UC_Show_Academy_Income.label_function_name.Text = "Academy Income";
            UC_Show_Academy_Income.label_count.Text = DashBoard_Data("exec Academy_Income_Month '" + startMonth + "', '" + endMonth + "'");

            UC_Show_Project_Income.label_function_name.Text = "Project Income";
            UC_Show_Project_Income.label_count.Text = DashBoard_Data("exec Project_Income_Month '" + startMonth + "', '" + endMonth + "'");

            UC_Show_Owner_Account.label_function_name.Text = "Owner Account";
            UC_Show_Owner_Account.label_count.Text = DashBoard_Data("exec total_users 1");

            UC_Show_Admin_Account.label_function_name.Text = "Admin Account";
            UC_Show_Admin_Account.label_count.Text = DashBoard_Data("exec total_users 3");

            UC_Show_Student_Account.label_function_name.Text = "Student Account";
            UC_Show_Student_Account.label_count.Text = DashBoard_Data("exec total_users 2");

        }


        public string DashBoard_Data(string q)
        {
            SqlCommand dbCommand = new SqlCommand(q, Database_Connection.con);
            Database_Connection.con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(dbCommand);

            DataTable dt = new DataTable();
            sda.Fill(dt);
            Database_Connection.con.Close();

            return dt.Rows[0][0].ToString();
        }

    }
}
