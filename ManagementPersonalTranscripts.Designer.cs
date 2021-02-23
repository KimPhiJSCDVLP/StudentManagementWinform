
namespace QuanLySinhVien
{
    partial class ManagementPersonalTranscripts
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
            this.mnQLSV = new System.Windows.Forms.MenuStrip();
            this.categoryToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.busToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.mnQLSV.SuspendLayout();
            this.SuspendLayout();
            // 
            // mnQLSV
            // 
            this.mnQLSV.BackColor = System.Drawing.SystemColors.ActiveCaption;
            this.mnQLSV.GripMargin = new System.Windows.Forms.Padding(2, 2, 0, 2);
            this.mnQLSV.ImageScalingSize = new System.Drawing.Size(24, 24);
            this.mnQLSV.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.categoryToolStripMenuItem,
            this.busToolStripMenuItem});
            this.mnQLSV.Location = new System.Drawing.Point(0, 0);
            this.mnQLSV.Name = "mnQLSV";
            this.mnQLSV.Size = new System.Drawing.Size(800, 33);
            this.mnQLSV.TabIndex = 0;
            this.mnQLSV.Text = "menuStrip1";
            // 
            // categoryToolStripMenuItem
            // 
            this.categoryToolStripMenuItem.Name = "categoryToolStripMenuItem";
            this.categoryToolStripMenuItem.Size = new System.Drawing.Size(109, 29);
            this.categoryToolStripMenuItem.Text = "Danh mục";
            this.categoryToolStripMenuItem.Click += new System.EventHandler(this.categoryToolStripMenuItem_Click);
            // 
            // busToolStripMenuItem
            // 
            this.busToolStripMenuItem.Name = "busToolStripMenuItem";
            this.busToolStripMenuItem.Size = new System.Drawing.Size(110, 29);
            this.busToolStripMenuItem.Text = "Nghiệp vụ";
            this.busToolStripMenuItem.Click += new System.EventHandler(this.busToolStripMenuItem_Click);
            // 
            // ManagementPersonalTranscripts
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.AutoScroll = true;
            this.ClientSize = new System.Drawing.Size(800, 531);
            this.Controls.Add(this.mnQLSV);
            this.MainMenuStrip = this.mnQLSV;
            this.Name = "ManagementPersonalTranscripts";
            this.Text = "Quản lý bảng điểm sinh viên";
            this.mnQLSV.ResumeLayout(false);
            this.mnQLSV.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.MenuStrip mnQLSV;
        private System.Windows.Forms.ToolStripMenuItem categoryToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem busToolStripMenuItem;
    }
}

