using QuanLySinhVien.DAO;
using QuanLySinhVien.DTO;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace QuanLySinhVien
{
    public partial class stdManagement : Form
    {
        List<SinhVien> sinhViens = null;
        //List<SinhVien> sinhViens = null;
        public stdManagement()
        {
            InitializeComponent();
            loadData();
        }

        private void loadData()
        {
            //get data student 
            sinhViens = loadDataStudents();
            DataTable table = CustomHeaderText();
            dtgListStudents.DataSource = DataTranfer(table, sinhViens);
        }

        private DataTable CustomHeaderText()
        {
            DataTable table = new DataTable();
            table.Columns.Add("STT");
            table.Columns.Add("Mã sinh viên");
            table.Columns.Add("Họ tên");
            table.Columns.Add("Ngày sinh");
            table.Columns.Add("Quê quán");
            table.Columns.Add("Địa chỉ HT");
            table.Columns.Add("Khóa Đký");
            table.Columns.Add("Số TC đã đạt");
            table.Columns.Add("Điểm tích lũy");
            table.Columns.Add("Mã lớp");
            return table;
        }

        private DataTable DataTranfer(DataTable table, List<SinhVien> sinhViens)
        {
            for (int i = 0; i < sinhViens.Count; i++)
            {
                table.Rows.Add(i + 1, sinhViens[i].IDSinhVien, sinhViens[i].HoTen,
                    sinhViens[i].NgaySinh, sinhViens[i].QueQuan
                    , sinhViens[i].DiaChiHT, sinhViens[i].KhoaDKi
                    , sinhViens[i].SoTCDaDat, sinhViens[i].DiemTichLuy, sinhViens[i].IDLop);
            }
            return table;
        } 
        private List<SinhVien> loadDataStudents()
        {
            //get data student
            return StudentDAO.Instance.GetList();
        }
        private void btnAddStudent_Click(object sender, EventArgs e)
        {
            // Add to database a student
        }

        private void btnUpdateStd_Click(object sender, EventArgs e)
        {
            // Update a student 
        }

        private void btnDeletestd_Click(object sender, EventArgs e)
        {
            //Delete a student 
        }
    }
}
