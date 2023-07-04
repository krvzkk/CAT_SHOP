using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        string СтрокаПодключения = "Data Source=TANYGINAA-ZENBO; Initial Catalog=CAT_SHOP; Trusted_Connection=True;";
        var Подключение = new SqlConnection(СтрокаПодключения);
        try
        {
            //Открытие подключения
            Подключение.Open();

        }
        catch (Exception ex1)
        {
            //Вывод в метку сообщения об ошибке
            Label12.Text = ex1.Message;
            Подключение.Close();
            return;
        }
        //чтение из полей
        if (Page.IsValid)
        {
            string sparol, slogin, semail;
            sparol = Convert.ToString(TextBox3.Text);
            slogin = Convert.ToString(TextBox1.Text);
            semail = Convert.ToString(TextBox2.Text);
            string sqlQ;
            sqlQ = "INSERT INTO S_User(Логин, Email, Пароль) VALUES('" + slogin + "', '" + semail + "', '" + sparol + "')";
            //вывод запроса в метку (только во время отладки программы)
            Label13.Text = sqlQ;
            var Команда = new SqlCommand();
            Команда.CommandText = sqlQ;
            Команда.Connection = Подключение;
            try
            {
                //выполнение команды SQL
                Команда.ExecuteNonQuery();
                Label12.Text = "Пользователь добавлен";
            }
            catch (Exception ex1)
            {
                //Вывод в метку сообщения об ошибке
                Label12.Text = ex1.Message;
                Подключение.Close();
                return;
            }
        }
    }
}