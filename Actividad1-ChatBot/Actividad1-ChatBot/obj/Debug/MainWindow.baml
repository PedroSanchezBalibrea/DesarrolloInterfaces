   M S B A M L   `   `   `  ����M  IActividad1-ChatBot, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:Actividad1_ChatBotActividad1_ChatBot  5   	   #    Actividad1_ChatBot.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   2local clr-namespace:Actividad1_ChatBot     5   	     � Title$  ChatBot��5   	   $��592.574��5	   	   $��397.896��5
   	   $	��400��5   	   $	��250��5   	    � Icon$ recursos/robot.ico��5   	    � 	Resources 5       �� 
TargetType   	iconosTop �� Property �� Value  
iconoImage �� Triggers �� Binding �� ElementName	 �� Path
 �� Value  posicionDockPanel��%�  &	        &	 u     &	 �    �� 5   
   " ��6   .�5      ��  � ��$ 5q�6'   63   �� 5       � ��$ 30��6&   63   5      �� 5   
   " ��6    5      �� 5       6   �� $ usuarioTextBlock��$
	 Text�
 Usuario6Z   .a�5      ��  � ��$ recursos/hombre.png��6/   6M   5      �� 5       6   �� $ usuarioTextBlock��$
	 Text�	
 Robot6Z   .a�5      ��  � ��$ recursos/robot.png��6/   6L   5      .�5      ��  � ��$ 15��6&   63   5      �� 5   
   " ]�6    5      �� 5        6   �� $ usuarioTextBlock��$
	 Text�
 Usuario6Z   .a�5!      ��  � ��$
 Left=�6<   6K   �� 5"       � ��
 �����6G   5#      �� 5$       6   �� $ usuarioTextBlock��$
	 Text�	
 Robot6Z   .a�5%      ��  � ��$ Right=�6<   6L   �� 5&       � �� �	#FFB8EEB86G   5'      5)      5*       J� CommandBindings 5+      )  #System.Windows.Input.CommandBinding  5,   
   -   5           Command$$ local:CustomCommands.Comprobar��5,      5/        50   
   -   5        $- 'local:CustomCommands.BorrarConversacion��50      54        55   
   -   5        $. (local:CustomCommands.GuardarConversacion��55      59        5:   
   -   5        $  local:CustomCommands.Salir��5:      5>        5?   
   -   5        $! local:CustomCommands.Enviar��5?      5C      .��5E      ]� .+�5F   
   o� $	��Top=�6   .@�5G      m� $��Archivo��6   .@�5H      m� -   5         m�Name$ nuevaMenuItem��5K      $��Nueva conversacion��5H       m� InputGestureText$ Ctrl+N��5I       m� Command$- 'local:CustomCommands.BorrarConversacion��5J       m� Icon 5L      �� 5M      $��recursos/new.png��6    6<   5O      m� 5P      -   5        $ guardarMenuItem��5S      $��Guardar conversación...��5P      $ Ctrl+G��5Q      $. (local:CustomCommands.GuardarConversacion��5R       5T      �� 5U      $��recursos/save.png��6    6=   5W      m� 5X      $��Salir��6   $ Ctrl+S��5Y      $  local:CustomCommands.Salir��5Z       5[      �� 5\      $��recursos/exit.ico��6    6=   5^      5_      m� 5`      $��Herramientas��6   .@�5a      m� $��Configuración...��6   $ Ctrl+C��5b      {�.   5d      �� 5e      $��recursos/config.ico��6    6?   5g      m� 5h      $��Comprobar conexión...��6   $ Ctrl+O��5i      $$ local:CustomCommands.Comprobar��5j       5k      �� 5l      $��recursos/check.png��6    6>   5n      5o      5p      `� 5q   
   $	��Top=�6   .�5r      c� .@�5s      �� -   5         ��Name$ nuevaButton��5s      $-��'local:CustomCommands.BorrarConversacion��5t       � ToolTip$ Nueva Conversación��5u      .��5v      �� $��recursos/new.png��6   #��[  5w      5x      �� 5y      -	   5        $ guardarButton��5y      $.��(local:CustomCommands.GuardarConversacion��5z      $ Guardar Conversacion��5{      .��5|      �� $��recursos/save.png��6   #��[  5}      5~      �� 5      �� 5�      {�.  .��5�      �� $��recursos/config.ico��6   #��[  5�      5�      �� 5�      $$��local:CustomCommands.Comprobar��6   $ Comprobar Conexion��5�      .��5�      �� $��recursos/check.png��6   #��[  5�      5�      �� 5�      �� 5�      $ Salir��6   $ ��local:CustomCommands.Salir��5�      .��5�      �� $��recursos/exit.ico��6   #��[  5�      5�      5�      5�      ]� 5�   
   $��Bottom=�6   .+�5�      �� -
   5        $ enviarButton��5�      $��Right=�5�      $!��local:CustomCommands.Enviar��5�       �� 	IsDefault . .��5�      �� $��recursos/send.png��6   $��30��5�      5�      �� 5�      
���   �$��2q�5�      ._�5�      �� -   5         ��Name$ mensajeTextBox��5�      $��Center=�5�      $��30��5�      6(   5�      5�      �� 5�   
   -   5         ��Name$ barraScroll��5�      $��Disabled=�5�      $
��Auto=�5�      .��5�      �� -   5         ��Name$ listItemsControl��5�      ��5�      �� ��5�      �� 5�      .R�5�      ��  �� Orientation$ Vertical=�6%   ���	#FFEAEA835�      5�      ��5�      �� 5�      .R�5�      ]� ��.  $��5q�5�       #��[ 5�       .+�5�      �� 
���   �$��2q�5�   !   ._�5�   "   �� $ Vertical=�6-   $��5q�5�   )   .+�5�   &   �� $ 
Horizontal=�61   .+�5�   *   �� $��25��60   #��[ 5�   ,   �� 5�   *    ��Name$ usuarioTextBlock��5�   0   $��Center=�5�   0   $
��Bold"�5�   0   ��5�   4   �� *	Usuario+5�   L   5�   '   �� 5�   &   $
��Wrap=�60   ��5�   ,   �� *
MensajeU+6H   5�   #   5�      5�      5�      5�      5�      5�      5�      