FasdUAS 1.101.10   ��   ��    k             l     ��  ��      quake terminal     � 	 	    q u a k e   t e r m i n a l   
  
 l     ��������  ��  ��        l     ��  ��    L F in order to play well with Spaces we use our own copy of terminal.app     �   �   i n   o r d e r   t o   p l a y   w e l l   w i t h   S p a c e s   w e   u s e   o u r   o w n   c o p y   o f   t e r m i n a l . a p p      l     ��  ��    C = make a copy of Terminal.app in ~/Applications named qtrm.app     �   z   m a k e   a   c o p y   o f   T e r m i n a l . a p p   i n   ~ / A p p l i c a t i o n s   n a m e d   q t r m . a p p      l     ��  ��    + % right click -> show package contents     �   J   r i g h t   c l i c k   - >   s h o w   p a c k a g e   c o n t e n t s      l     ��  ��      edit Info.plist     �       e d i t   I n f o . p l i s t     !   l     �� " #��   " = 7 change the CFBundleIdentifier string to something else    # � $ $ n   c h a n g e   t h e   C F B u n d l e I d e n t i f i e r   s t r i n g   t o   s o m e t h i n g   e l s e !  % & % l     �� ' (��   '   e.g. io.ix.qtrm    ( � ) )     e . g .   i o . i x . q t r m &  * + * l     �� , -��   , J D now we have a separate app that we can set to appear in all Spaces.    - � . . �   n o w   w e   h a v e   a   s e p a r a t e   a p p   t h a t   w e   c a n   s e t   t o   a p p e a r   i n   a l l   S p a c e s . +  / 0 / l     ��������  ��  ��   0  1 2 1 l     �� 3 4��   3 6 0 set a trigger in quicksilver to run this script    4 � 5 5 `   s e t   a   t r i g g e r   i n   q u i c k s i l v e r   t o   r u n   t h i s   s c r i p t 2  6 7 6 l     ��������  ��  ��   7  8 9 8 l     �� : ;��   : U O Any preferences set in Terminal.app with have to be set again in the new copy.    ; � < < �   A n y   p r e f e r e n c e s   s e t   i n   T e r m i n a l . a p p   w i t h   h a v e   t o   b e   s e t   a g a i n   i n   t h e   n e w   c o p y . 9  = > = l     �� ? @��   ? - ' after preferences are set you can add:    @ � A A N   a f t e r   p r e f e r e n c e s   a r e   s e t   y o u   c a n   a d d : >  B C B l     �� D E��   D   <key>LSUIElement</key>    E � F F .   < k e y > L S U I E l e m e n t < / k e y > C  G H G l     �� I J��   I   <string>1</string>    J � K K &   < s t r i n g > 1 < / s t r i n g > H  L M L l     �� N O��   N "  after <dict> in Info.plist.    O � P P 8   a f t e r   < d i c t >   i n   I n f o . p l i s t . M  Q R Q l     �� S T��   S C = This will hide the icon from the dock, and fix focus issues,    T � U U z   T h i s   w i l l   h i d e   t h e   i c o n   f r o m   t h e   d o c k ,   a n d   f i x   f o c u s   i s s u e s , R  V W V l     �� X Y��   X Q K but will also disable the menu bar, and keep you from editing Preferences.    Y � Z Z �   b u t   w i l l   a l s o   d i s a b l e   t h e   m e n u   b a r ,   a n d   k e e p   y o u   f r o m   e d i t i n g   P r e f e r e n c e s . W  [ \ [ l     ��������  ��  ��   \  ] ^ ] l     �� _ `��   _   get window width    ` � a a "   g e t   w i n d o w   w i d t h ^  b c b l     �� d e��   d : 4 hardcoding is noticeably faster than running script    e � f f h   h a r d c o d i n g   i s   n o t i c e a b l y   f a s t e r   t h a n   r u n n i n g   s c r i p t c  g h g l     �� i j��   i o i set w to word 2 of (do shell script "system_profiler SPDisplaysDataType | grep -w Resolution") as number    j � k k �   s e t   w   t o   w o r d   2   o f   ( d o   s h e l l   s c r i p t   " s y s t e m _ p r o f i l e r   S P D i s p l a y s D a t a T y p e   |   g r e p   - w   R e s o l u t i o n " )   a s   n u m b e r h  l m l l     n���� n r      o p o m     ����  p o      ���� 0 w  ��  ��   m  q r q l    s���� s r     t u t m    ����5 u o      ���� 0 h  ��  ��   r  v w v l     ��������  ��  ��   w  x y x l     �� z {��   z K E use the bounds as our window identifier, hopefully it will be unique    { � | | �   u s e   t h e   b o u n d s   a s   o u r   w i n d o w   i d e n t i f i e r ,   h o p e f u l l y   i t   w i l l   b e   u n i q u e y  } ~ } l    ����  r     � � � J     � �  � � � m    	����   �  � � � m   	 
����  �  � � � o   
 ���� 0 w   �  ��� � o    ���� 0 h  ��   � o      ���� 0 rect  ��  ��   ~  � � � l     ��������  ��  ��   �  � � � l   ! ����� � O   ! � � � r      � � � l    ����� � H     � � l    ����� � I   �� ���
�� .coredoexbool       obj  � 4    �� �
�� 
pcap � m     � � � � �  q t r m��  ��  ��  ��  ��   � o      ���� 0 firstrun   � m     � ��                                                                                  sevs  alis    t  fry                        �_CH+    +System Events.app                                               +��7��        ����  	                CoreServices    �_œ      �8'7      +   �   �  1fry:System:Library:CoreServices:System Events.app   $  S y s t e m   E v e n t s . a p p    f r y  -System/Library/CoreServices/System Events.app   / ��  ��  ��   �  � � � l     ��������  ��  ��   �  ��� � l  " � ����� � O   " � � � � k   & � � �  � � � r   & / � � � I  & -�� ���
�� .corecnte****       **** � n   & ) � � � 2   ' )��
�� 
cwin � m   & ' � ��                                                                                      @ alis    L  fry                        �_CH+   
 �qtrm.app                                                        6�w�        ����  	                Applications    �_œ      �wG�     
 � ��  ��  $fry:Users:rupa:Applications:qtrm.app    q t r m . a p p    f r y   Users/rupa/Applications/qtrm.app  /    ��  ��   � o      ���� 0 c   �  ��� � Z   0 � � ��� � � =   0 3 � � � o   0 1���� 0 c   � m   1 2����   � k   6 T � �  � � � I  6 ;������
�� .coredoscnull��� ��� ctxt��  ��   �  � � � r   < D � � � n   < @ � � � 4  = @�� �
�� 
cwin � m   > ?����  � m   < = � ��                                                                                      @ alis    L  fry                        �_CH+   
 �qtrm.app                                                        6�w�        ����  	                Applications    �_œ      �wG�     
 � ��  ��  $fry:Users:rupa:Applications:qtrm.app    q t r m . a p p    f r y   Users/rupa/Applications/qtrm.app  /    ��   � o      ���� 0 x   �  � � � r   E N � � � o   E F���� 0 rect   � n       � � � 1   I M��
�� 
pbnd � o   F I���� 0 x   �  ��� � I  O T������
�� .miscactvnull��� ��� null��  ��  ��  ��   � k   W � � �  � � � r   W \ � � � m   W X��
�� boovfals � o      ���� 	0 found   �  � � � Y   ] � ��� � ��� � Z   g � � ����� � =  g q � � � n   g o � � � 1   k o��
�� 
pbnd � 4   g k�� �
�� 
cwin � o   i j���� 0 y   � o   o p���� 0 rect   � k   t � � �  � � � Z   t � � ��� � � n   t } � � � 1   x |��
�� 
pvis � 4   t x�� �
�� 
cwin � o   v w���� 0 y   � k   � � � �  � � � r   � � � � � m   � ���
�� boovfals � n       � � � 1   � ���
�� 
pvis � 4   � ��� �
�� 
cwin � o   � ����� 0 y   �  ��� � l  � ��� � ���   � L Ftell application "System Events" to keystroke tab using (command down)    � � � � � t e l l   a p p l i c a t i o n   " S y s t e m   E v e n t s "   t o   k e y s t r o k e   t a b   u s i n g   ( c o m m a n d   d o w n )��  ��   � k   � � � �  � � � r   � � � � � m   � ���
�� boovtrue � n       � � � 1   � ���
�� 
pvis � 4   � ��� �
�� 
cwin � o   � ����� 0 y   �  ��� � I  � �������
�� .miscactvnull��� ��� null��  ��  ��   �  � � � r   � � � � � m   � ���
�� boovtrue � o      ���� 	0 found   �  ��� �  S   � ���  ��  ��  �� 0 y   � m   ` a����  � o   a b���� 0 c  ��   �  ��� � Z   � � � ����� � H   � � � � o   � ��� 	0 found   � k   � � � �  � � � Z   � � � ��~�} � H   � � � � o   � ��|�| 0 firstrun   � I  � ��{�z�y
�{ .coredoscnull��� ��� ctxt�z  �y  �~  �}   �    r   � � n   � � 4  � ��x
�x 
cwin m   � ��w�w  m   � ��                                                                                      @ alis    L  fry                        �_CH+   
 �qtrm.app                                                        6�w�        ����  	                Applications    �_œ      �wG�     
 � ��  ��  $fry:Users:rupa:Applications:qtrm.app    q t r m . a p p    f r y   Users/rupa/Applications/qtrm.app  /    ��   o      �v�v 0 x   	 r   � �

 o   � ��u�u 0 rect   n       1   � ��t
�t 
pbnd o   � ��s�s 0 x  	 �r I  � ��q�p�o
�q .miscactvnull��� ��� null�p  �o  �r  ��  ��  ��  ��   � m   " #�                                                                                      @ alis    L  fry                        �_CH+   
 �qtrm.app                                                        6�w�        ����  	                Applications    �_œ      �wG�     
 � ��  ��  $fry:Users:rupa:Applications:qtrm.app    q t r m . a p p    f r y   Users/rupa/Applications/qtrm.app  /    ��  ��  ��  ��       �n�n   �m
�m .aevtoappnull  �   � **** �l�k�j�i
�l .aevtoappnull  �   � **** k     �  l  q  }  �  ��h�h  �k  �j   �g�g 0 y   �f�e�d�c�b�a�` ��_ ��^�]�\�[�Z�Y�X�W�V�U�T�f �e 0 w  �d5�c 0 h  �b �a �` 0 rect  
�_ 
pcap
�^ .coredoexbool       obj �] 0 firstrun  
�\ 
cwin
�[ .corecnte****       ****�Z 0 c  
�Y .coredoscnull��� ��� ctxt�X 0 x  
�W 
pbnd
�V .miscactvnull��� ��� null�U 	0 found  
�T 
pvis�i ��E�O�E�Oj����vE�O� *��/j 
E�UO� ���-j E�O�j  #*j O��k/E` O�_ a ,FO*j Y �fE` O Rk�kh  *��/a ,�  8*��/a ,E f*��/a ,FOPY e*��/a ,FO*j OeE` OY h[OY��O_  ,� 
*j Y hO��k/E` O�_ a ,FO*j Y hU ascr  ��ޭ