   M S B A M L   `   `   `  ���� C  ?chatzcli, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:ChatZ.ClientChatZ.Client      ChatZ.Client.MainWindow   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     ,localclr-namespace:ChatZ.Client     $	��480��$	��640��
�������  � Title  �� *Handle+ �� StringFormat$ ChatZ - {0}�� � 	Resources (   "ChatZ.Client.LocalTimeUTCConverter   LocalFromUTC)   #ChatZ.Client.AllValuesTrueConverter  
TrueForAll��%   &	        &	          .��]�  +� FocusedElement ��  �� ElementName$ Input��.+�]� $
��Left=�.+��� $	��Top=�$��6,6,0,0q�$��Participants���� -    ��Name$ Members��$	��160��$��6,0,0,6q�$��Center=� �� SelectedIndex$ 0�� �� SelectedValuePath$ 
UserHandle����.  ���� *ActiveUsers+ �� SelectedValue �� *Filter+	 �� Mode$	 TwoWay=����� 
 �� 
TargetType"
 ��.���  �� Property � �� �� Value . ��  � ��$ 3������ .R���  ��Name$ Nickname��
���   �$��14(����� *DisplayName+ �� Triggers ��  �� Value$ 	$CHATZSRV�� �� Binding �� *
UserHandle+.a���  �� 
TargetName$ Nickname�� � ��$
 Bold"��� $
 True�� `�  `� 	Converter# [ 1���  �� Path$ DataContext.Handle� �� RelativeSource ��  �� AncestorType" ��� $ 
UserHandle�.a��� $ Nickname�� � ��$ Italic$�]� $��6 6 6 3q�.+�]� $��Bottom=�$��80��$	��240��.+��� -    ��Name$ Submit��$��Right=�$��80��$��1 3 0 3q�$��2��{��� $ Input��$ Text.Length����� *SendMessage+���� .����  �� Orientation$ Vertical=�.+���   SendIcon#��[ $��25��$��25���� $
��Send��$��Center=�$��14(�$��0 8 0 0q��� -    ��Name$ Input��$
��Left=�$��70��" �� VerticalScrollBarVisibility$ Visible=� �� TextWrapping$
 Wrap=� �� AcceptsReturn .  �� 
AcceptsTab .  $��0 3 1 3q�$��3q�$��14(� �� 	IsEnabled . $��1�� J� 	AllowDrop .  ���� *Input+$	 TwoWay=�]� .+��� $	��Top=�$��Conversation��&    ChatZ.Client.ScrollBottomListBox  |�.  ��.  $��Disabled=����� *ChatMessages+���� "
 ��.���  � |� .  ��  �@J�IsHitTestVisible .  ��  � �� .  ��  � ��$ Stretch=����� .R��  � RowDefinitions �� $
��Auto ��� $��* �.+���   ��Name$  Metadata��$ 
Horizontal=�$��0��$
��Left=�.+��� $
��Left=�
�������$��12(�$��6 6 3 3q����� *	Timestamp+! �� 	Converter#! [  $ ({0:d MMM yyyy, HH:mm})���� $
��Left=�
�������$��12(�$��3 6 6 3q����� *Sender+$
 {0}:���� $ Content��$��1��$
��Left=�$��16(�$
��Wrap=�
����  �$��6 3 6 6q����� *	Content+ �� $
 True�� `� # [ 1��� $ DataContext.Handle� �� " ��� $ Sender�.a��� $ Metadata�� � ��$ Right=��� $ Content�� � ��$ Right=��� $ Content�� � ��
 � d �