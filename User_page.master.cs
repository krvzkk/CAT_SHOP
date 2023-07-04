using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class User_page : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

        long IDU;
        IDU = Convert.ToInt32(Session["IDU"]);
        if (IDU != 0)
               {
                   Button4.Visible = false;//кнопка регистрация
                   Label6.Visible = false;
                   Label3.Visible = false;
                   Button5.Visible = false;//кнопка вход
                   Button2.Visible = true;//кнопка выход
                   Label4.Visible = false;//метка имя
                   Label5.Visible = false;//метка пароль
                   TextBox1.Visible = false;//поле имя
                   TextBox2.Visible = false;//поле пароль
                   Label1.Text = "Привет, " + Session["SUser"];
               }
               else
               {
                   Label1.Text = "";
                   Button4.Visible = true;//кнопка регистрация
                   Label6.Visible = true;
                   Label3.Visible = true;
                   Button5.Visible = true;//кнопка вход
                   Button2.Visible = false;//кнопка выход
                   Label4.Visible = true;//метка имя
                   Label5.Visible = true;//метка пароль
                   TextBox1.Visible = true;//поле имя
                   TextBox2.Visible = true;//поле пароль
            
               }
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Main_page.aspx");
    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Find_cat.aspx");
    }

    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("About_us.aspx");
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("Registration.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Log_in.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("Main_Page.aspx");
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("Registration.aspx");
    }



    protected void Button5_Click(object sender, EventArgs e)
    {
        string СтрокаПодключения = "Data Source=TANYGINAA-ZENBO; Initial Catalog=CAT_SHOP; Integrated Security=True";
        var Подключение = new SqlConnection(СтрокаПодключения);
        try
        {
            //Открытие подключения
            Подключение.Open();

        }
        catch (Exception ex1)
        {
            //Вывод в метку сообщения об ошибке
            Label5.Text = ex1.Message;
            Подключение.Close();
            return;
        }
        string sparol, slogin;
        sparol = Convert.ToString(TextBox2.Text);
        slogin = Convert.ToString(TextBox1.Text);

        string sqlQ = "SELECT * FROM S_User WHERE Логин='" + slogin + "' AND Пароль='" + sparol + "'";
        //вывод запроса в метку (только во время отладки программы)
        Label6.Text = sqlQ;
        var Команда = new SqlCommand();
        Команда.CommandText = sqlQ;
        Команда.Connection = Подключение;
        try
        {
            //выполнение команды SQL
            SqlDataReader Чтение;
            Чтение = Команда.ExecuteReader();
            if (Чтение.Read() == true)
            {
                var id = Чтение.GetValue(0);
                Session["IDU"] = id;
                Session["SUser"] = TextBox1.Text;
                Button4.Visible = false;//кнопка регистрация
                Label6.Visible = false;
                Label3.Visible = false;
                Button5.Visible = false;//кнопка вход
                Button2.Visible = true;//кнопка выход
                Label4.Visible = false;//метка имя
                Label5.Visible = false;//метка пароль
                TextBox1.Visible = false;//поле имя
                TextBox2.Visible = false;//поле пароль
                Label1.Text = "Привет, " + Session["SUser"];
            }
            else
            {
                Label1.Text = "Пароль не верен";
                Button4.Visible = true;//кнопка регистрация
                Label6.Visible = true;
                Label3.Visible = true;
                Button5.Visible = true;//кнопка вход
                Button2.Visible = false;//кнопка выход
                Label4.Visible = true;//метка имя
                Label5.Visible = true;//метка пароль
                TextBox1.Visible = true;//поле имя
                TextBox2.Visible = true;//поле пароль

            }
        }
        catch (Exception ex1)
        {
            //Вывод в метку сообщения об ошибке
            Label5.Text = ex1.Message;
            Подключение.Close();
            return;
        }
    }

    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Response.Redirect("Main_admin_page.aspx");
    }
}


