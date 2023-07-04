using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Chhange_cat : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void TextBox4_TextChanged(object sender, EventArgs e)
    {

    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow Row;
        Row = GridView1.SelectedRow;

        Session["IDcat"] = GridView1.SelectedValue;
        TextBox4.Text = Row.Cells[2].Text;
        TextBox5.Text = Row.Cells[3].Text;
        TextBox3.Text = Row.Cells[4].Text;
        TextBox2.Text = Row.Cells[5].Text;
        TextBox1.Text = Row.Cells[6].Text;
        TextBox6.Text = Row.Cells[10].Text;
        TextBox7.Text = Row.Cells[8].Text;
    }

    protected void Button8_Click(object sender, EventArgs e)
    {
        string mypath, myfile, filename, myimg;
        myimg = "IMG\\";
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
            string Строкаподключения = "Data Source=TANYGINAA-ZENBO; Initial Catalog=CAT_SHOP; Integrated Security=True";
            var Подключение = new SqlConnection(Строкаподключения);
            try
            {
                //Открытие подключения
                Подключение.Open();
            }
            catch (Exception ex1)
            {
                //Вывод в метку сообщения об ошибке
                Label4.Text = ex1.Message;
                Подключение.Close();
                return;
            }

            String s1, s2, sqlQ;
            s1 = "INSERT INTO Cat1 (Имя, Порода, Возраст, Окрас, Характер, Размер, Фото, Цена) VALUES (";
            s2 = "'" + TextBox4.Text + "', " + "'"+ TextBox5.Text +"'" + ", "+ "'" + TextBox3.Text+"'" +
               ", " + "'" + TextBox2.Text + "'" + ", " + "'"+ TextBox1.Text + "'" + ", "+ "'" + TextBox7.Text + "'"+", 'images\\" + myfile + "'" + ", " + TextBox6.Text + ")";

            sqlQ = s1 + s2;
            Label4.Text = sqlQ;
            var Команда = new SqlCommand();
            Команда.CommandText = sqlQ;
            Команда.Connection = Подключение;
            try
            {
                // выполнение команды SQL
                Команда.ExecuteNonQuery();
                Label5.Text = "Данные котика изменены";
            }
            catch (Exception ex1)
            {
                //Вывод в метку сообщения об ошибке
                Label4.Text = ex1.Message;
                Подключение.Close();
                return;
            }
        }
        }
}