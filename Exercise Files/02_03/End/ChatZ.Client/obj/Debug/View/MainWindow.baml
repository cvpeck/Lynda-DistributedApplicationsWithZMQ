   M S B A M L   `   `   `  ����C  ?chatzcli, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:ChatZ.ClientChatZ.Client  5   	       ChatZ.Client.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ,localclr-namespace:ChatZ.Client     5   	   $	��480��5   	   $	��640��5	   	   
�������  � Title  5   	   �� *Handle+ �� StringFormat$ ChatZ - {0}�� � 	Resources 5      (   "ChatZ.Client.LocalTimeUTCConverter   LocalFromUTC)   #ChatZ.Client.AllValuesTrueConverter  
TrueForAll��%:   &	        &	        5      6"     5      6#   5      .��5      ]�  +� FocusedElement 6   ��  �� ElementName$ Input��.+�5      ]� $
��Left=�6   .+�5      �� $	��Top=�6   $��6,6,0,0q�5      $��Participants��5      �� 5      -   5         ��Name$ Members��5      $	��160��5      $��6,0,0,6q�5      $��Center=�5       �� SelectedIndex$ 0��5       �� SelectedValuePath$ 
UserHandle��5      ��.  ��5      �� *ActiveUsers+ �� SelectedValue 5      �� *Filter+	 �� Mode$	 TwoWay=���5   
   �� 5      
 �� 
TargetType"
 ��6   .�5       ��  �� Property � �� �� Value . 6*   �� 5!       � ��$ 3��6)   5"      ��5$   
   �� 5%      .R�5&      ��  ��Name$ Nickname��6   
���   �$��14(�5(      ��5)      �� *DisplayName+ �� Triggers 5*      �� 5+       �� Value$ 	$CHATZSRV��6;    �� Binding 6   �� *
UserHandle+.a�5,      ��  �� 
TargetName$ Nickname��6    � ��$
 Bold"�6E   5-      �� 5.      $
 True��6    5/      `� 50       `� 	Converter# [ 6!   1�51      �� 52       �� Path$ DataContext.Handle�53        �� RelativeSource 52       ��  �� AncestorType" �53       �� 54      $ 
UserHandle�6    56      .a�58      �� $ Nickname��6    � ��$ Italic$�6D   59      5;      5=   	   5>      ]� 5?      $��6 6 6 3q�6   .+�5@      ]� $��Bottom=�6   $��80��5A      $	��240��5B      .+�5C   
   �� -   5         ��Name$ Submit��5C      $��Right=�5D      $��80��5E      $��1 3 0 3q�5F      $��2��5J      {�5G      �� $ Input��$ Text.Length���5H      �� *SendMessage+��5I      �� .��5K      ��  �� Orientation$ Vertical=�6   .+�5L      ��   SendIcon#��[ 6   $��25��67   $��25��6C   �� 5M      $
��Send��6   $��Center=�5N      $��14(�5O      $��0 8 0 0q�5P      5Q      5R      �� 5S   
   -   5         ��Name$ Input��5S      $
��Left=�5T      $��70��5U      " �� VerticalScrollBarVisibility$ Visible=�5V       �� TextWrapping$
 Wrap=�5W       �� AcceptsReturn .  �� 
AcceptsTab .  $��0 3 1 3q�5Z      $��3q�5[      $��14(�5\       �� 	IsEnabled . $��1��5_       J� 	AllowDrop .  ��5^      �� *Input+$	 TwoWay=�5`      5a   	   ]� 5b      .+�5c   
   �� $	��Top=�6   $��Conversation��5d      &    ChatZ.Client.ScrollBottomListBox  5e   
   |�.  ��.  $��Disabled=�5h   "   ��5e   $   �� *ChatMessages+��5i      �� 5j      "
 ��6   .�5k      ��  � |� .  6,   �� 5l       �@J�IsHitTestVisible .  63   �� 5m       � �� .  6,   �� 5n       � ��$ Stretch=�6=   5o      ��5q      �� 5r      .R�5s      �  � RowDefinitions 5t      �� 5u      $
��Auto �6"   �� 5v      $��* �6"   .+�5x      ��   ��Name$  Metadata��6   $ 
Horizontal=�5y      $��0��5z      $
��Left=�5{      .+�5|      �� $
��Left=�6   
�������$��12(�5~      $��6 6 3 3q�5      ��5�      �� *	Timestamp+! �� 	Converter#! [  $ ({0:d MMM yyyy, HH:mm})���� 5�      $
��Left=�6   
�������$��12(�5�      $��3 6 6 3q�5�      ��5�      �� *Sender+$
 {0}:��5�      �� 5�      $ Content��6   $��1��5�      $
��Left=�5�      $��16(�5�      $
��Wrap=�5�      
����  �$��6 3 6 6q�5�      ��5�      �� *	Content+5�       5�      �� 5�      $
 True��6    5�      `� 5�      # [ 6#   1�5�      �� 5�      $ DataContext.Handle�5�   #    5�   #   �� " �5�   #   �� 5�      $ Sender�6"   5�      .a�5�      �� $ Metadata��6    � ��$ Right=�6P   �� 5�      $ Content��6    � ��$ Right=�6O   �� 5�      $ Content��6    � ��
 � d �6F   5�      5�      5�      5�   	   5�      5�      5�      