namespace Technomide_Corporation
{
    partial class Employee_Form
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Employee_Form));
            this.label1 = new System.Windows.Forms.Label();
            this.label_add = new System.Windows.Forms.Label();
            this.panel_add_update = new System.Windows.Forms.Panel();
            this.txt_employee_salary = new System.Windows.Forms.TextBox();
            this.txt_employee_type = new System.Windows.Forms.TextBox();
            this.txt_employee_id = new System.Windows.Forms.TextBox();
            this.txt_employee_name = new System.Windows.Forms.TextBox();
            this.btn_confirm_add = new System.Windows.Forms.Button();
            this.btn_confirm_update = new System.Windows.Forms.Button();
            this.panel_data = new System.Windows.Forms.Panel();
            this.label_rollofuser = new System.Windows.Forms.Label();
            this.label_employee_type = new System.Windows.Forms.Label();
            this.label_employee_id = new System.Windows.Forms.Label();
            this.label_employee_name = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.panel1 = new System.Windows.Forms.Panel();
            this.picture_add = new System.Windows.Forms.PictureBox();
            this.radioButton1 = new System.Windows.Forms.RadioButton();
            this.radioButton2 = new System.Windows.Forms.RadioButton();
            this.comboBox1 = new System.Windows.Forms.ComboBox();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.comboBox2 = new System.Windows.Forms.ComboBox();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.panel_add_update.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.picture_add)).BeginInit();
            this.groupBox1.SuspendLayout();
            this.groupBox2.SuspendLayout();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Comic Sans MS", 15.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(524, 21);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(106, 30);
            this.label1.TabIndex = 6;
            this.label1.Text = "Employee";
            // 
            // label_add
            // 
            this.label_add.AutoSize = true;
            this.label_add.BackColor = System.Drawing.Color.White;
            this.label_add.Cursor = System.Windows.Forms.Cursors.Hand;
            this.label_add.Font = new System.Drawing.Font("Trebuchet MS", 9.75F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Underline))), System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label_add.Location = new System.Drawing.Point(39, 84);
            this.label_add.Name = "label_add";
            this.label_add.Size = new System.Drawing.Size(94, 18);
            this.label_add.TabIndex = 84;
            this.label_add.Text = "Add Employee";
            // 
            // panel_add_update
            // 
            this.panel_add_update.AutoScroll = true;
            this.panel_add_update.BackColor = System.Drawing.Color.White;
            this.panel_add_update.Controls.Add(this.txt_employee_salary);
            this.panel_add_update.Controls.Add(this.txt_employee_type);
            this.panel_add_update.Controls.Add(this.txt_employee_id);
            this.panel_add_update.Controls.Add(this.txt_employee_name);
            this.panel_add_update.Controls.Add(this.btn_confirm_add);
            this.panel_add_update.Controls.Add(this.btn_confirm_update);
            this.panel_add_update.Location = new System.Drawing.Point(9, 166);
            this.panel_add_update.Name = "panel_add_update";
            this.panel_add_update.Size = new System.Drawing.Size(652, 338);
            this.panel_add_update.TabIndex = 81;
            // 
            // txt_employee_salary
            // 
            this.txt_employee_salary.BackColor = System.Drawing.Color.White;
            this.txt_employee_salary.Location = new System.Drawing.Point(506, 7);
            this.txt_employee_salary.Name = "txt_employee_salary";
            this.txt_employee_salary.Size = new System.Drawing.Size(76, 20);
            this.txt_employee_salary.TabIndex = 37;
            // 
            // txt_employee_type
            // 
            this.txt_employee_type.BackColor = System.Drawing.Color.White;
            this.txt_employee_type.Location = new System.Drawing.Point(351, 7);
            this.txt_employee_type.Name = "txt_employee_type";
            this.txt_employee_type.Size = new System.Drawing.Size(96, 20);
            this.txt_employee_type.TabIndex = 2;
            // 
            // txt_employee_id
            // 
            this.txt_employee_id.BackColor = System.Drawing.Color.White;
            this.txt_employee_id.Location = new System.Drawing.Point(175, 7);
            this.txt_employee_id.Name = "txt_employee_id";
            this.txt_employee_id.Size = new System.Drawing.Size(122, 20);
            this.txt_employee_id.TabIndex = 1;
            // 
            // txt_employee_name
            // 
            this.txt_employee_name.BackColor = System.Drawing.Color.White;
            this.txt_employee_name.Location = new System.Drawing.Point(6, 7);
            this.txt_employee_name.Name = "txt_employee_name";
            this.txt_employee_name.Size = new System.Drawing.Size(131, 20);
            this.txt_employee_name.TabIndex = 0;
            // 
            // btn_confirm_add
            // 
            this.btn_confirm_add.BackColor = System.Drawing.Color.White;
            this.btn_confirm_add.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btn_confirm_add.Location = new System.Drawing.Point(658, 4);
            this.btn_confirm_add.Name = "btn_confirm_add";
            this.btn_confirm_add.Size = new System.Drawing.Size(75, 23);
            this.btn_confirm_add.TabIndex = 35;
            this.btn_confirm_add.Text = "Confirm";
            this.btn_confirm_add.UseVisualStyleBackColor = false;
            // 
            // btn_confirm_update
            // 
            this.btn_confirm_update.BackColor = System.Drawing.Color.White;
            this.btn_confirm_update.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btn_confirm_update.Location = new System.Drawing.Point(658, 4);
            this.btn_confirm_update.Name = "btn_confirm_update";
            this.btn_confirm_update.Size = new System.Drawing.Size(75, 23);
            this.btn_confirm_update.TabIndex = 36;
            this.btn_confirm_update.Text = "Confirm";
            this.btn_confirm_update.UseVisualStyleBackColor = false;
            // 
            // panel_data
            // 
            this.panel_data.AutoScroll = true;
            this.panel_data.BackColor = System.Drawing.Color.White;
            this.panel_data.Location = new System.Drawing.Point(12, 166);
            this.panel_data.Name = "panel_data";
            this.panel_data.Size = new System.Drawing.Size(649, 338);
            this.panel_data.TabIndex = 79;
            // 
            // label_rollofuser
            // 
            this.label_rollofuser.AutoSize = true;
            this.label_rollofuser.BackColor = System.Drawing.Color.White;
            this.label_rollofuser.Font = new System.Drawing.Font("Trebuchet MS", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label_rollofuser.Location = new System.Drawing.Point(472, 145);
            this.label_rollofuser.Name = "label_rollofuser";
            this.label_rollofuser.Size = new System.Drawing.Size(46, 18);
            this.label_rollofuser.TabIndex = 95;
            this.label_rollofuser.Text = "Salary";
            this.label_rollofuser.Click += new System.EventHandler(this.label_rollofuser_Click);
            // 
            // label_employee_type
            // 
            this.label_employee_type.AutoSize = true;
            this.label_employee_type.BackColor = System.Drawing.Color.White;
            this.label_employee_type.Font = new System.Drawing.Font("Trebuchet MS", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label_employee_type.Location = new System.Drawing.Point(327, 145);
            this.label_employee_type.Name = "label_employee_type";
            this.label_employee_type.Size = new System.Drawing.Size(99, 18);
            this.label_employee_type.TabIndex = 94;
            this.label_employee_type.Text = "Employee Type";
            // 
            // label_employee_id
            // 
            this.label_employee_id.AutoSize = true;
            this.label_employee_id.BackColor = System.Drawing.Color.White;
            this.label_employee_id.Font = new System.Drawing.Font("Trebuchet MS", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label_employee_id.Location = new System.Drawing.Point(181, 145);
            this.label_employee_id.Name = "label_employee_id";
            this.label_employee_id.Size = new System.Drawing.Size(82, 18);
            this.label_employee_id.TabIndex = 93;
            this.label_employee_id.Text = "Employee ID";
            // 
            // label_employee_name
            // 
            this.label_employee_name.AutoSize = true;
            this.label_employee_name.BackColor = System.Drawing.Color.White;
            this.label_employee_name.Font = new System.Drawing.Font("Trebuchet MS", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label_employee_name.Location = new System.Drawing.Point(12, 145);
            this.label_employee_name.Name = "label_employee_name";
            this.label_employee_name.Size = new System.Drawing.Size(104, 18);
            this.label_employee_name.TabIndex = 92;
            this.label_employee_name.Text = "Employee Name";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Trebuchet MS", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(9, 111);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(1163, 18);
            this.label2.TabIndex = 96;
            this.label2.Text = resources.GetString("label2.Text");
            this.label2.Click += new System.EventHandler(this.label2_Click);
            // 
            // panel1
            // 
            this.panel1.AutoScroll = true;
            this.panel1.BackColor = System.Drawing.Color.White;
            this.panel1.Location = new System.Drawing.Point(667, 166);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(505, 338);
            this.panel1.TabIndex = 80;
            // 
            // picture_add
            // 
            this.picture_add.BackColor = System.Drawing.Color.White;
            this.picture_add.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Zoom;
            this.picture_add.Image = global::Technomide_Corporation.Properties.Resources.Add;
            this.picture_add.Location = new System.Drawing.Point(13, 84);
            this.picture_add.Name = "picture_add";
            this.picture_add.Size = new System.Drawing.Size(20, 18);
            this.picture_add.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.picture_add.TabIndex = 85;
            this.picture_add.TabStop = false;
            // 
            // radioButton1
            // 
            this.radioButton1.AutoSize = true;
            this.radioButton1.Font = new System.Drawing.Font("Trebuchet MS", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.radioButton1.Location = new System.Drawing.Point(6, 19);
            this.radioButton1.Name = "radioButton1";
            this.radioButton1.Size = new System.Drawing.Size(122, 22);
            this.radioButton1.TabIndex = 97;
            this.radioButton1.TabStop = true;
            this.radioButton1.Text = "Employee Name";
            this.radioButton1.UseVisualStyleBackColor = true;
            this.radioButton1.CheckedChanged += new System.EventHandler(this.radioButton1_CheckedChanged);
            // 
            // radioButton2
            // 
            this.radioButton2.AutoSize = true;
            this.radioButton2.Font = new System.Drawing.Font("Trebuchet MS", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.radioButton2.Location = new System.Drawing.Point(135, 19);
            this.radioButton2.Name = "radioButton2";
            this.radioButton2.Size = new System.Drawing.Size(117, 22);
            this.radioButton2.TabIndex = 98;
            this.radioButton2.TabStop = true;
            this.radioButton2.Text = "Employee Type";
            this.radioButton2.UseVisualStyleBackColor = true;
            this.radioButton2.CheckedChanged += new System.EventHandler(this.radioButton2_CheckedChanged);
            // 
            // comboBox1
            // 
            this.comboBox1.FormattingEnabled = true;
            this.comboBox1.Location = new System.Drawing.Point(137, 20);
            this.comboBox1.Name = "comboBox1";
            this.comboBox1.Size = new System.Drawing.Size(121, 21);
            this.comboBox1.TabIndex = 100;
            this.comboBox1.Text = "Employee ID";
            this.comboBox1.SelectedIndexChanged += new System.EventHandler(this.comboBox1_SelectedIndexChanged);
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.radioButton1);
            this.groupBox1.Controls.Add(this.radioButton2);
            this.groupBox1.Location = new System.Drawing.Point(153, 64);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(258, 54);
            this.groupBox1.TabIndex = 101;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "SORT BY";
            // 
            // comboBox2
            // 
            this.comboBox2.FormattingEnabled = true;
            this.comboBox2.Location = new System.Drawing.Point(6, 19);
            this.comboBox2.Name = "comboBox2";
            this.comboBox2.Size = new System.Drawing.Size(121, 21);
            this.comboBox2.TabIndex = 101;
            this.comboBox2.Text = "Employee Name";
            this.comboBox2.SelectedIndexChanged += new System.EventHandler(this.comboBox2_SelectedIndexChanged);
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.comboBox2);
            this.groupBox2.Controls.Add(this.comboBox1);
            this.groupBox2.Location = new System.Drawing.Point(427, 64);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(266, 54);
            this.groupBox2.TabIndex = 102;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "SEARCH BY";
            // 
            // Employee_Form
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.White;
            this.ClientSize = new System.Drawing.Size(1185, 642);
            this.Controls.Add(this.groupBox2);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label_rollofuser);
            this.Controls.Add(this.label_employee_type);
            this.Controls.Add(this.label_employee_id);
            this.Controls.Add(this.label_employee_name);
            this.Controls.Add(this.picture_add);
            this.Controls.Add(this.label_add);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.panel_data);
            this.Controls.Add(this.panel_add_update);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Name = "Employee_Form";
            this.Text = "Employee_Form";
            this.Load += new System.EventHandler(this.Employee_Form_Load);
            this.panel_add_update.ResumeLayout(false);
            this.panel_add_update.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.picture_add)).EndInit();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.groupBox2.ResumeLayout(false);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        public System.Windows.Forms.PictureBox picture_add;
        public System.Windows.Forms.Label label_add;
        private System.Windows.Forms.Panel panel_add_update;
        private System.Windows.Forms.TextBox txt_employee_salary;
        private System.Windows.Forms.TextBox txt_employee_type;
        private System.Windows.Forms.TextBox txt_employee_id;
        private System.Windows.Forms.TextBox txt_employee_name;
        private System.Windows.Forms.Button btn_confirm_add;
        private System.Windows.Forms.Button btn_confirm_update;
        private System.Windows.Forms.Panel panel_data;
        public System.Windows.Forms.Label label_rollofuser;
        public System.Windows.Forms.Label label_employee_type;
        public System.Windows.Forms.Label label_employee_id;
        public System.Windows.Forms.Label label_employee_name;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.RadioButton radioButton1;
        private System.Windows.Forms.RadioButton radioButton2;
        private System.Windows.Forms.ComboBox comboBox1;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.ComboBox comboBox2;
        private System.Windows.Forms.GroupBox groupBox2;
    }
}