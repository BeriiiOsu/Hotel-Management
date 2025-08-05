using System.Security.Cryptography;
using System.Text;
namespace Hotel_Management.Login
{
    public class HashPassword
    {
        public static string PasswordMasker(string password)
        {
            using (SHA256 sha256 = SHA256.Create())
            {
                byte[] bytes = Encoding.UTF8.GetBytes(password);
                byte[] hashBytes = sha256.ComputeHash(bytes);
                StringBuilder builder = new StringBuilder();
                foreach (byte b in hashBytes)
                    builder.Append(b.ToString("x2"));
                return builder.ToString();
            }
        }
    }
}
