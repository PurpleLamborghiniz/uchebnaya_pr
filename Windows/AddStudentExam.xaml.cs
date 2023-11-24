using PracticSemenov.Components;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using PracticSemenov.Pages;

namespace PracticSemenov.Windows
{
    /// <summary>
    /// Логика взаимодействия для AddStudentExam.xaml
    /// </summary>
    public partial class AddStudentExam : Window
    {
        private Exam exam;
        public AddStudentExam(Exam _exam)
        {
            InitializeComponent();
            exam = _exam;
            StudentCb.ItemsSource = App.db.Student.ToList();
            
        }

        private void AddBtn_Click(object sender, RoutedEventArgs e)
        {
            string a = ScoreTb.Text;
            Student student = StudentCb.SelectedItem as Student;
            if (a == "2" || a == "3" || a == "4" || a == "5")
            {
                if (student != null)
                {
                    ExamStudent examStudent = new ExamStudent();
                    examStudent.IdExam = exam.IdExam;
                    examStudent.RegNumber = student.RegNumber;
                    examStudent.Score = Convert.ToInt32(a);
                    App.db.ExamStudent.Add(examStudent);
                    App.db.SaveChanges();
                    MessageBox.Show("Запись добавлена");
                    App.ExamPage.ExamStudentList.ItemsSource = App.db.ExamStudent.Where(x => x.IdExam == exam.IdExam).ToList();
                    this.Close();
                }
                else
                    MessageBox.Show("Вы не выбрали студента");
            }
            else
                MessageBox.Show("Введите неправильную оценку");
        }

        private void CancelBtn_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }
    }
}
