using PracticSemenov.Components;
using PracticSemenov.Pages;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Threading.Tasks;
using System.Windows;

namespace PracticSemenov
{
    /// <summary>
    /// Логика взаимодействия для App.xaml
    /// </summary>
    public partial class App : System.Windows.Application
    {
        public static BaseForPracticEntities1 db = new BaseForPracticEntities1();
        public static Employee user = new Employee();
        public static bool CanBack = true;
        public static AddEditExamPage ExamPage;
        public static AddEditCafedraPage CafedraPage;
    }
}

