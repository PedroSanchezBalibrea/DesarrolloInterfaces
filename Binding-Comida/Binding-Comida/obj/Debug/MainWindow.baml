   M S B A M L   `   `   `  ����I  EBinding-Comida, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:Binding_ComidaBinding_Comida  5   	       Binding_Comida.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   .localclr-namespace:Binding_Comida     5   	     � Icon$#  Imagenes/fruit_food_apple.ico��5   	    � Title$ Comida��5	   	   $	��699��6   $	��953��6%   
�����_� � 	Resources 5      ��%    5      .��5      � $��10q�6   
������� � ColumnDefinitions 5   
   �� 5      $��2* �6   6,   �� 5      6!   .+�5   
   �� -   5         ��Name$ ComidaListBox��5      $��Disabled=�5      ��5      �� ��5      �� 5      .R�5      �  � Orientation$ 
Horizontal=�6    $��10q�5   $   62   5      ��5      �� 5      .R�5      �� 
���   �$��1q�5       
�������$��10q�5"       J� Effect 5#      3  -System.Windows.Media.Effects.DropShadowEffect  5$      ._�5&      ��  �� Orientation$ Vertical=�6%   .+�5'      (�  (� StretchDirection$ DownOnly=�6&   $	��200��5(   &   $��40��5)   &   .��5*   "   ��    nombreComida#��[  5+   $   ��5*   ,   �� *Nombre+5+   L   5,      �� 5-      $��10q�5.   (   $	��220��5/   (   $	��170��50   (   $
��Fill=�51   (   ��5-   $   �� *Imagen+51   9   ]� 52      ��.  .+�53   "   ��   bandera#��[ 6(   $
��Left=�54   ,   $��35��55   ,   $��10,0,0,0q�56   ,   6@   �� 57   "   $ 
Horizontal=�6-   $��10q�58   )   $��Right=�59   )   .+�5:   &   ��   
alergenosL#��[ 6,   6R   �� 5;   &     
alergenosS#��[ 6,   6R   �� 5<   &     alergenosSu#��[ 6,   6S   �� 5=   &     
alergenosG#��[ 6,   6R   5>   #   5?      5@      5A      5B      5D      �� 5E   
   $��1��6   $��10q�5F      $ Vertical=�5G      
�������.+�5I      �� $��Nombre del plato��6   $��5,5,5,0q�5J      6+   �� 5K      $��5,0,5,5q�6   ��5L      �� 	 �� ElementName$	 ComidaListBox��
 �� Path$
 SelectedItem.Nombre� �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=�6�   �� 5M      $��Foto del plato��6   $��5,5,5,0q�5N      6+   �� 5O      $��5,0,5,5q�6   ��5P      �� $	 ComidaListBox��$
 SelectedItem.Imagen�$ TwoWay=�$ PropertyChanged=�6�   �� 5Q      $��Nombre del plato��6   $��5,5,5,0q�5R      6+   �� 5S      -   5         ��Name$ 
TipoComida��5U      $��5,0,5,5q�5S      ��6(   ��  �� SelectedValue 5T      �� $	 ComidaListBox��$
 SelectedItem.Tipo�5V      �� 5W      $��
Alérgenos��6   
���   �$��5q�5Y      .��5Z      �  5[      �� 5\      6-   �� 5]      6-    � RowDefinitions 5_      �� 5`      6*   �� 5a      6*   .+�5c      �� $��Leche��6   $��0��5d      $��0��5e       d� 	IsChecked 5f      �� $	 ComidaListBox��$
 SelectedItem.Leche�6j   �� 5g      $
��Soja��6   $��0��5h      $��1��5i       5j      �� $	 ComidaListBox��$
 SelectedItem.Soja�6i   �� 5k      $��Gluten��6   $��1��5l      $��0��5m       5n      �� $	 ComidaListBox��$
 SelectedItem.Gluten�6k   �� 5o      $��Sulfitos��6   $��1��5p      $��1��5q       5r      �� $	 ComidaListBox��$
 SelectedItem.Sulfitos�6m   5s      5t      5u      5v      5w      