
namespace QuanLySinhVien
{
    partial class stdManagement
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
            this.lbDSSV = new System.Windows.Forms.Label();
            this.dtgListStudents = new System.Windows.Forms.DataGridView();
            this.lbSearch = new System.Windows.Forms.Label();
            this.txtSearch = new System.Windows.Forms.TextBox();
            this.txtIDStudent = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.txtName = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.txtHometown = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.txtAddress = new System.Windows.Forms.TextBox();
            this.label6 = new System.Windows.Forms.Label();
            this.dtpkDateOfBirth = new System.Windows.Forms.DateTimePicker();
            this.cbbGender = new System.Windows.Forms.ComboBox();
            this.label7 = new System.Windows.Forms.Label();
            this.cbbClass = new System.Windows.Forms.ComboBox();
            this.label8 = new System.Windows.Forms.Label();
            this.btnAddStudent = new System.Windows.Forms.Button();
            this.btnUpdateStd = new System.Windows.Forms.Button();
            this.btnDeletestd = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.dtgListStudents)).BeginInit();
            this.SuspendLayout();
            // 
            // lbDSSV
            // 
            this.lbDSSV.AutoSize = true;
            this.lbDSSV.Location = new System.Drawing.Point(13, 13);
            this.lbDSSV.Name = "lbDSSV";
            this.lbDSSV.Size = new System.Drawing.Size(151, 20);
            this.lbDSSV.TabIndex = 0;
            this.lbDSSV.Text = "Danh sách sinh viên";
            // 
            // dtgListStudents
            // 
            this.dtgListStudents.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dtgListStudents.Location = new System.Drawing.Point(17, 64);
            this.dtgListStudents.Name = "dtgListStudents";
            this.dtgListStudents.RowHeadersWidth = 62;
            this.dtgListStudents.RowTemplate.Height = 28;
            this.dtgListStudents.Size = new System.Drawing.Size(1197, 469);
            this.dtgListStudents.TabIndex = 2;
            // 
            // lbSearch
            // 
            this.lbSearch.AutoSize = true;
            this.lbSearch.Location = new System.Drawing.Point(754, 13);
            this.lbSearch.Name = "lbSearch";
            this.lbSearch.Size = new System.Drawing.Size(75, 20);
            this.lbSearch.TabIndex = 0;
            this.lbSearch.Text = "Tìm kiếm:";
            // 
            // txtSearch
            // 
            this.txtSearch.Location = new System.Drawing.Point(855, 10);
            this.txtSearch.Name = "txtSearch";
            this.txtSearch.Size = new System.Drawing.Size(359, 26);
            this.txtSearch.TabIndex = 1;
            // 
            // txtIDStudent
            // 
            this.txtIDStudent.Location = new System.Drawing.Point(133, 611);
            this.txtIDStudent.Name = "txtIDStudent";
            this.txtIDStudent.Size = new System.Drawing.Size(200, 26);
            this.txtIDStudent.TabIndex = 4;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(19, 614);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(100, 20);
            this.label1.TabIndex = 3;
            this.label1.Text = "Mã sinh viên:";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(19, 660);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(82, 20);
            this.label2.TabIndex = 3;
            this.label2.Text = "Ngày sinh:";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(377, 614);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(105, 20);
            this.label3.TabIndex = 3;
            this.label3.Text = "Tên sinh viên:";
            // 
            // txtName
            // 
            this.txtName.Location = new System.Drawing.Point(478, 611);
            this.txtName.Name = "txtName";
            this.txtName.Size = new System.Drawing.Size(225, 26);
            this.txtName.TabIndex = 4;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(377, 657);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(83, 20);
            this.label4.TabIndex = 3;
            this.label4.Text = "Quê quán:";
            // 
            // txtHometown
            // 
            this.txtHometown.Location = new System.Drawing.Point(478, 654);
            this.txtHometown.Name = "txtHometown";
            this.txtHometown.Size = new System.Drawing.Size(225, 26);
            this.txtHometown.TabIndex = 4;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(709, 614);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(61, 20);
            this.label5.TabIndex = 3;
            this.label5.Text = "Địa chỉ:";
            // 
            // txtAddress
            // 
            this.txtAddress.Location = new System.Drawing.Point(810, 611);
            this.txtAddress.Name = "txtAddress";
            this.txtAddress.Size = new System.Drawing.Size(404, 26);
            this.txtAddress.TabIndex = 4;
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(709, 657);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(71, 20);
            this.label6.TabIndex = 3;
            this.label6.Text = "Giới tính:";
            // 
            // dtpkDateOfBirth
            // 
            this.dtpkDateOfBirth.Location = new System.Drawing.Point(133, 657);
            this.dtpkDateOfBirth.Name = "dtpkDateOfBirth";
            this.dtpkDateOfBirth.Size = new System.Drawing.Size(200, 26);
            this.dtpkDateOfBirth.TabIndex = 5;
            // 
            // cbbGender
            // 
            this.cbbGender.FormattingEnabled = true;
            this.cbbGender.Location = new System.Drawing.Point(810, 654);
            this.cbbGender.Name = "cbbGender";
            this.cbbGender.Size = new System.Drawing.Size(157, 28);
            this.cbbGender.TabIndex = 6;
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(973, 657);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(40, 20);
            this.label7.TabIndex = 3;
            this.label7.Text = "Lớp:";
            // 
            // cbbClass
            // 
            this.cbbClass.FormattingEnabled = true;
            this.cbbClass.Location = new System.Drawing.Point(1049, 654);
            this.cbbClass.Name = "cbbClass";
            this.cbbClass.Size = new System.Drawing.Size(165, 28);
            this.cbbClass.TabIndex = 6;
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(19, 557);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(127, 20);
            this.label8.TabIndex = 0;
            this.label8.Text = "Chi tiết sinh viên:";
            // 
            // btnAddStudent
            // 
            this.btnAddStudent.BackColor = System.Drawing.SystemColors.ActiveCaption;
            this.btnAddStudent.Location = new System.Drawing.Point(443, 553);
            this.btnAddStudent.Name = "btnAddStudent";
            this.btnAddStudent.Size = new System.Drawing.Size(78, 29);
            this.btnAddStudent.TabIndex = 7;
            this.btnAddStudent.Text = "Thêm";
            this.btnAddStudent.UseVisualStyleBackColor = false;
            this.btnAddStudent.Click += new System.EventHandler(this.btnAddStudent_Click);
            // 
            // btnUpdateStd
            // 
            this.btnUpdateStd.BackColor = System.Drawing.SystemColors.ActiveCaption;
            this.btnUpdateStd.Location = new System.Drawing.Point(558, 553);
            this.btnUpdateStd.Name = "btnUpdateStd";
            this.btnUpdateStd.Size = new System.Drawing.Size(78, 29);
            this.btnUpdateStd.TabIndex = 7;
            this.btnUpdateStd.Text = "Sửa";
            this.btnUpdateStd.UseVisualStyleBackColor = false;
            this.btnUpdateStd.Click += new System.EventHandler(this.btnUpdateStd_Click);
            // 
            // btnDeletestd
            // 
            this.btnDeletestd.BackColor = System.Drawing.SystemColors.ActiveCaption;
            this.btnDeletestd.Location = new System.Drawing.Point(668, 553);
            this.btnDeletestd.Name = "btnDeletestd";
            this.btnDeletestd.Size = new System.Drawing.Size(78, 29);
            this.btnDeletestd.TabIndex = 7;
            this.btnDeletestd.Text = "Xóa";
            this.btnDeletestd.UseVisualStyleBackColor = false;
            this.btnDeletestd.Click += new System.EventHandler(this.btnDeletestd_Click);
            // 
            // stdManagement
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1245, 716);
            this.Controls.Add(this.btnDeletestd);
            this.Controls.Add(this.btnUpdateStd);
            this.Controls.Add(this.btnAddStudent);
            this.Controls.Add(this.cbbClass);
            this.Controls.Add(this.cbbGender);
            this.Controls.Add(this.dtpkDateOfBirth);
            this.Controls.Add(this.txtAddress);
            this.Controls.Add(this.txtHometown);
            this.Controls.Add(this.txtName);
            this.Controls.Add(this.txtIDStudent);
            this.Controls.Add(this.label7);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.dtgListStudents);
            this.Controls.Add(this.txtSearch);
            this.Controls.Add(this.lbSearch);
            this.Controls.Add(this.label8);
            this.Controls.Add(this.lbDSSV);
            this.Name = "stdManagement";
            this.Text = "Quản lý sinh viên";
            ((System.ComponentModel.ISupportInitialize)(this.dtgListStudents)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label lbDSSV;
        private System.Windows.Forms.DataGridView dtgListStudents;
        private System.Windows.Forms.Label lbSearch;
        private System.Windows.Forms.TextBox txtSearch;
        private System.Windows.Forms.TextBox txtIDStudent;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox txtName;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox txtHometown;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.TextBox txtAddress;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.DateTimePicker dtpkDateOfBirth;
        private System.Windows.Forms.ComboBox cbbGender;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.ComboBox cbbClass;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Button btnAddStudent;
        private System.Windows.Forms.Button btnUpdateStd;
        private System.Windows.Forms.Button btnDeletestd;
    }
}