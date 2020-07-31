namespace Technomide_Corporation
{
    partial class UC_Modify
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

        #region Component Designer generated code

        /// <summary> 
        /// Required method for Designer support - do not modify 
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.pic_delete = new System.Windows.Forms.PictureBox();
            this.pic_update = new System.Windows.Forms.PictureBox();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pic_delete)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pic_update)).BeginInit();
            this.SuspendLayout();
            // 
            // pictureBox1
            // 
            this.pictureBox1.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.pictureBox1.Cursor = System.Windows.Forms.Cursors.Hand;
            this.pictureBox1.Image = global::Technomide_Corporation.Properties.Resources.about;
            this.pictureBox1.Location = new System.Drawing.Point(65, 0);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(24, 22);
            this.pictureBox1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.pictureBox1.TabIndex = 7;
            this.pictureBox1.TabStop = false;
            this.pictureBox1.Click += new System.EventHandler(this.pictureBox1_Click);
            // 
            // pic_delete
            // 
            this.pic_delete.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.pic_delete.Cursor = System.Windows.Forms.Cursors.Hand;
            this.pic_delete.Image = global::Technomide_Corporation.Properties.Resources.Delete1;
            this.pic_delete.Location = new System.Drawing.Point(35, 0);
            this.pic_delete.Name = "pic_delete";
            this.pic_delete.Size = new System.Drawing.Size(24, 22);
            this.pic_delete.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.pic_delete.TabIndex = 6;
            this.pic_delete.TabStop = false;
            // 
            // pic_update
            // 
            this.pic_update.BackColor = System.Drawing.Color.White;
            this.pic_update.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Zoom;
            this.pic_update.Cursor = System.Windows.Forms.Cursors.Hand;
            this.pic_update.Image = global::Technomide_Corporation.Properties.Resources.Update;
            this.pic_update.Location = new System.Drawing.Point(3, 0);
            this.pic_update.Name = "pic_update";
            this.pic_update.Size = new System.Drawing.Size(26, 22);
            this.pic_update.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.pic_update.TabIndex = 5;
            this.pic_update.TabStop = false;
            // 
            // UC_Modify
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.pictureBox1);
            this.Controls.Add(this.pic_delete);
            this.Controls.Add(this.pic_update);
            this.Name = "UC_Modify";
            this.Size = new System.Drawing.Size(97, 22);
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pic_delete)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pic_update)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        public System.Windows.Forms.PictureBox pic_delete;
        public System.Windows.Forms.PictureBox pic_update;
        public System.Windows.Forms.PictureBox pictureBox1;
    }
}
