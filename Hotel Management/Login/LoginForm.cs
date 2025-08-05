using Hotel_Management.Login;
using Hotel_Management.Properties;
using System;
using System.Windows.Forms;


namespace Hotel_Management
{
    public partial class LoginForm : Form
    {
        public LoginForm()
        {
            InitializeComponent();
        }

        private void LoginForm_Load(object sender, EventArgs e)
        {
            //guna2HtmlLabel1.Text = $"password: {HashPassword.PasswordMasker("admin")}";
        }

        private void txtPassword_TextChanged(object sender, EventArgs e)
        {
            if(txtPassword.Text.Length != 0)
            { btnShow.Visible = true; }
            else
            { btnShow.Visible = false; }
        }

        private void btnShow_Click(object sender, EventArgs e) { txtPassword.UseSystemPasswordChar = !txtPassword.UseSystemPasswordChar; }

        private void btnLogin_Click(object sender, EventArgs e)
        {
            if (txtUserEmail.Text.Equals(Settings.Default.Admin_USER) && 
                HashPassword.PasswordMasker(txtPassword.Text).Equals(Settings.Default.Admin_PASS))
            {
                //Login successful
            }
            else
            {
                               //Login failed
                MessageBox.Show("Invalid username or password.", "Login Failed", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void btnCreate_Click(object sender, EventArgs e)
        {
            
        }

        private void btnGoToLogin_Click(object sender, EventArgs e)
        {
            guna2Panel1.Visible = true;
            guna2Panel2.Visible = false;
        }

        private void btnForgotPass_Click(object sender, EventArgs e)
        {
            guna2Panel1.Visible = false;
            guna2Panel2.Visible = true;
        }
    }
}
