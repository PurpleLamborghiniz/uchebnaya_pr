   M S B A M L   `   `   `  ����I  EPracticLatypov, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:PracticSemenov.PagesPracticSemenov.Pages  5      *    $PracticSemenov.Pages.AddEditExamPage   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      4local"clr-namespace:PracticSemenov.Pages     5        N� Title$  AddEditExamPage��5	      .��5      �  � ColumnDefinitions 5   
   �� 5      $��1* �6   �� 5      $��1* �6   .+�5   
   �� $��15q�6   .+�5      �� $��30(�6   $��Center=�6&   Экзамен6L   �� 5       �� Orientation$ 
Horizontal=�6   $��10q�62   .+�5      �� $
��15 0q�6   $	��100��6*   ID экзамена6C   �� 5      -   5         ��Name$
 IdTb��5   P   $	��200��6   {�.  ��68   �� *IdExam+6`   5      �� 5      $ 
Horizontal=�6   $��
10 0 10 10q�62   .+�5      �� $
��15 0q�6   $	��100��6*   Дата экзамена6E   �� 5      -   5        $ DateTb��5   A   $	��200��6   {�.  ��6&   �� *
DateEXam+6e   5      �� 5      $ 
Horizontal=�6   $��
10 0 10 10q�62   .+�5      �� $
��15 0q�6   $	��100��6*   Дисциплина6B   �� 5      -   5        $ DisciplineTb��5   Q   $	��200��6   {�.  ��6&   �� *Discipline.NameDiscipline+6{   5       �� 5"      $ 
Horizontal=�6   $��
10 0 10 10q�62   .+�5#      �� $
��15 0q�6   $	��100��6*   Аудитория6A   �� 5$      -   5        $ 
AuditoryTb��5$   @   $	��200��6   {�.  ��6&   �� *
Auditory+6h   5%      5(      �� 5)   
   $��1��6   .+�5*      �� -   5         ��Name$ ExamStudentList��5*   �   $��5 15 5 7q�6   $	��380��6*   $	��Top=�67   $��Visible=�6O    �� View 5+      �� 5,      P�5-      �� 5.      $��
Номер��6)    �� Width$ 60��68    �� DisplayMemberBinding 6C   �� *	RegNumber+6p   �� 5/      $��Направление��6-   $	 150��6B    6N   �� *Student.Speciality.Direction+6�   �� 50      $��Фамилия��6-   $	 110��6>    6J   �� *Student.FullName+6~   �� 51      $��Оценка��6-   $ 60��6=    6H   �� *Score+6q   53      55      �� 57      $ 
Horizontal=�6   $��35��62   $��Center=�6>   .+�58      �� -   5         ��Name$ AddStudentBtn��58   ?   $
��10 0q�6   $��30��6'   $	��150��63   
����i��.��6�   #!Добавить студента6�   �� 59      -   5        $ DeleteStudentBtn��59   1   $��30��6   $	��150��6%   
����i��.��6   !Удалить студента6�   5:      5;      5<      5=      