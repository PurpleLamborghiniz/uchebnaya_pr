   M S B A M L   `   `   `  ����I  EPracticLatypov, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:PracticSemenov.PagesPracticSemenov.Pages  5      #    PracticSemenov.Pages.ExamList   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      4local"clr-namespace:PracticSemenov.Pages     5        N� Title$  ExamList��5	      .��5      �  � RowDefinitions 5   
   �� 5      $	��38* �6   �� 5      $
��371* �6   �� 5      $	��41* �6   .+�5   
   �� $
��Left=�6   $��Center=�60    �� Orientation$ 
Horizontal=�6K   $��30��6d   $	��523��6p   .+�5      �� $��15 5 0 0q�6   Сортировки66   �� 5      -   5         ��Name$ SortCb��5   =   $��30��6   $	��200��6#   $
��15 0q�6/   .@�5      �� .��6   Id экзамена6,   �� 5      .��6   Дата экзамена6.   �� 5      .��6   /-Наименование дисциплины68   5      �� 5      -   5         ��Name$ SearchTb��5   "   $	��200��6   6Y   5      �� 5   
   -   5         ��Name$ MyList��5      $��Visible=�6#   $��1��6V   $	��Top=�6c   $	��380��6{   $��0,2,0,0q�6�   $��2��6�    �� View 5      �� 5      P�5      �� 5       $��ID Экзамена��6Q    �� Width$	 150��6f    �� DisplayMemberBinding 6)   �� *IdExam+6t   �� 5!      $��Дата Экзамена��6o   $	 150��6�    6)   �� *
DateEXam+	 �� StringFormat$	 
dd-MM-yyyy��6�   �� 5"      $3��-Наименование Дисциплины��6d   $	 250��6�    6)   �� *Discipline.NameDiscipline+6�   �� 5#      $��Аудитория��6S   $	 200��6f    6)   �� *
Auditory+6t   5%      5'      �� 5)   
   $��Center=�6   $��2��62   $ 
Horizontal=�6?   .+�5*      �� -   5        
 ��Name$
 RecordStudentBtn��5*   !   $��30��6   
����i��.��6o   Записать6y   5+      5,      5-      