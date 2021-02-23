using QuanLySinhVien.DTO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLySinhVien.DAO
{
    public class StudentDAO
    {
        private StudentDAO() { }
        private static volatile StudentDAO instance;
        static object key = new object();
        public static StudentDAO Instance
        {
            get
            {
                lock (key)
                {
                    if (instance == null)
                    {
                        instance = new StudentDAO();
                    }
                }
                return instance;
            }

            private set
            {
                instance = value;
            }
        }

        public List<SinhVien> GetList()
        {
            var list = new List<SinhVien>();
            DataTable data = DataProvider.Instance.ExecuteQuery("SELECT * FROM dbo.SinhVien");
            foreach (DataRow item in data.Rows)
            {
                SinhVien obj = new SinhVien(item);
                list.Add(obj);
            }
            return list;
        }
    }
}
