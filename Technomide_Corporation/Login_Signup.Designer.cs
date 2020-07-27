namespace Technomide_Corporation
{
    partial class Login_Signup
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
            this.panel_login = new System.Windows.Forms.Panel();
            this.label8 = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.txt_login_username = new System.Windows.Forms.TextBox();
            this.btn_login = new System.Windows.Forms.Button();
            this.txt_login_pass = new System.Windows.Forms.TextBox();
            this.panel_login.SuspendLayout();
            this.SuspendLayout();
            // 
            // panel_login
            // 
            this.panel_login.Controls.Add(this.label8);
            this.panel_login.Controls.Add(this.label7);
            this.panel_login.Controls.Add(this.label1);
            this.panel_login.Controls.Add(this.txt_login_username);
            this.panel_login.Controls.Add(this.btn_login);
            this.panel_login.Controls.Add(this.txt_login_pass);
            this.panel_login.Location = new System.Drawing.Point(49, 44);
            this.panel_login.Name = "panel_login";
            this.panel_login.Size = new System.Drawing.Size(241, 274);
            this.panel_login.TabIndex = 8;
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(24, 119);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(53, 13);
            this.label8.TabIndex = 7;
            this.label8.Text = "Password";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(24, 89);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(55, 13);
            this.label7.TabIndex = 6;
            this.label7.Text = "Username";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(106, 35);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(33, 13);
            this.label1.TabIndex = 3;
            this.label1.Text = "Login";
            // 
            // txt_login_username
            // 
            this.txt_login_username.Location = new System.Drawing.Point(98, 86);
            this.txt_login_username.Multiline = true;
            this.txt_login_username.Name = "txt_login_username";
            this.txt_login_username.Size = new System.Drawing.Size(100, 23);
            this.txt_login_username.TabIndex = 0;
            // 
            // btn_login
            // 
            this.btn_login.Location = new System.Drawing.Point(84, 185);
            this.btn_login.Name = "btn_login";
            this.btn_login.Size = new System.Drawing.Size(75, 23);
            this.btn_login.TabIndex = 2;
            this.btn_login.Text = "Login";
            this.btn_login.UseVisualStyleBackColor = true;
            this.btn_login.Click += new System.EventHandler(this.btn_login_Click);
            // 
            // txt_login_pass
            // 
            this.txt_login_pass.Location = new System.Drawing.Point(98, 116);
            this.txt_login_pass.Name = "txt_login_pass";
            this.txt_login_pass.Size = new System.Drawing.Size(100, 20);
            this.txt_login_pass.TabIndex = 1;
            // 
            // Login_Signup
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(346, 353);
            this.Controls.Add(this.panel_login);
            this.Name = "Login_Signup";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Login_Signup";
            this.Load += new System.EventHandler(this.Login_Signup_Load);
            this.panel_login.ResumeLayout(false);
            this.panel_login.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel panel_login;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox txt_login_username;
        private System.Windows.Forms.Button btn_login;
        private System.Windows.Forms.TextBox txt_login_pass;
    }
}