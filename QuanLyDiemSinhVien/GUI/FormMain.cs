using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace GUI
{
    public partial class FormMain : Form
    {
        public FormMain()
        {
            InitializeComponent();
        }

        private void sinhVienToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FormSinhVien fSinhVien = new FormSinhVien();
            fSinhVien.MdiParent = this;
            fSinhVien.Show();
        }

        private void khoaToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FormKhoa fKhoa= new FormKhoa();
            fKhoa.MdiParent = this;
            fKhoa.Show();
        }
    }
}
