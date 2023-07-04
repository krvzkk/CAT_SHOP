using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Add_cat : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button8_Click(object sender, EventArgs e)
    {
        string mypath, myfile, filename, myimg;
        //Пользователь не может выбирать папку на удаленном сервере для хранения файла рисунка 
        //Автоматическое определение папки, где расположено текущее Web приложение 
        myimg = "images\\"; 

        mypath = Request.PhysicalApplicationPath;
        myfile = FileUpload1.FileName;
        filename = mypath + myimg + myfile;
        Label6.Text = filename;
        //копирование рисунка
        if (FileUpload1.HasFile == true)
        {
            //В папке Web приложения находится папка IMG, содержащая все рисунки 
            //Указываем куда необходимо скопировать, выбранный файл
            FileUpload1.SaveAs(filename);
        }
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
        // ДОБАВЛЕНИЕ ЗАПИСИ О картине в БД:
        String s1, s2, sqlQ;
        s1 = "INSERT INTO Cat1 (Имя, Пол, Порода, Размер, Возраст, Окрас, Характер, Фото, Цена) VALUES (";
        s2 = "'" + TextBox4.Text + "', '" + DropDownList4.SelectedValue + "', '" + TextBox5.Text + "', '" + DropDownList3.SelectedValue + "', '" + TextBox3.Text + "', '" + TextBox2.Text + "', '" + TextBox1.Text + "', 'images\\" + myfile + "', " + TextBox6.Text + ")";
        sqlQ = s1 + s2;
        //вывод запроса в метку(только во время отладки программы)
        Label4.Text = sqlQ;
        var Команда = new SqlCommand();
        Команда.CommandText = sqlQ;
        Команда.Connection = Подключение;
        try
        {
            // выполнение команды SQL
            Команда.ExecuteNonQuery();
            Label4.Text = "Котик добавлен";
        }
        catch (Exception ex1)
        {
            //Вывод в метку сообщения об ошибке
            Label5.Text = ex1.Message;
            Подключение.Close();
            return;
        }
    }
}