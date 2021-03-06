FasdUAS 1.101.10   ��   ��    k             l     ��  ��    $  Outlook to iCal .ics importer     � 	 	 <   O u t l o o k   t o   i C a l   . i c s   i m p o r t e r   
  
 l     ��  ��    0 * version 0.5 by @pdewost http://dewost.com     �   T   v e r s i o n   0 . 5   b y   @ p d e w o s t   h t t p : / / d e w o s t . c o m      l     ��  ��    F @ To be installed in ~/Library/Application Scripts/com.apple.mail     �   �   T o   b e   i n s t a l l e d   i n   ~ / L i b r a r y / A p p l i c a t i o n   S c r i p t s / c o m . a p p l e . m a i l      l     ��  ��    t n Pieces derived from https://www.jwz.org/blog/2012/10/applescript-ical/ (also thx http://www.arvidtomayko.com)     �   �   P i e c e s   d e r i v e d   f r o m   h t t p s : / / w w w . j w z . o r g / b l o g / 2 0 1 2 / 1 0 / a p p l e s c r i p t - i c a l /   ( a l s o   t h x   h t t p : / / w w w . a r v i d t o m a y k o . c o m )      l     ��  ��    J D This script is designed to work in conjunction with a Mail.app rule     �   �   T h i s   s c r i p t   i s   d e s i g n e d   t o   w o r k   i n   c o n j u n c t i o n   w i t h   a   M a i l . a p p   r u l e      l     ��   !��      	 Step 1 :    ! � " "    S t e p   1   :   # $ # l     �� % &��   % R L Mail.app rule detects a .ics file among the attachments and triggers script    & � ' ' �   M a i l . a p p   r u l e   d e t e c t s   a   . i c s   f i l e   a m o n g   t h e   a t t a c h m e n t s   a n d   t r i g g e r s   s c r i p t $  ( ) ( l     �� * +��   *  
 Step 2 :     + � , ,    S t e p   2   :   )  - . - l     �� / 0��   / e _ Script once triggered extracts the .ics file(s) from the attachment list to a temporary folder    0 � 1 1 �   S c r i p t   o n c e   t r i g g e r e d   e x t r a c t s   t h e   . i c s   f i l e ( s )   f r o m   t h e   a t t a c h m e n t   l i s t   t o   a   t e m p o r a r y   f o l d e r .  2 3 2 l     �� 4 5��   4  	 Step 3 :    5 � 6 6    S t e p   3   : 3  7 8 7 l     �� 9 :��   9 "  Scripts opens the .ics file    : � ; ; 8   S c r i p t s   o p e n s   t h e   . i c s   f i l e 8  < = < l     �� > ?��   > ^ X Performs some text processing by removing the lines that start with specific delimiters    ? � @ @ �   P e r f o r m s   s o m e   t e x t   p r o c e s s i n g   b y   r e m o v i n g   t h e   l i n e s   t h a t   s t a r t   w i t h   s p e c i f i c   d e l i m i t e r s =  A B A l     �� C D��   C 7 1 Saves the stripped .ics file (with a new name ?)    D � E E b   S a v e s   t h e   s t r i p p e d   . i c s   f i l e   ( w i t h   a   n e w   n a m e   ? ) B  F G F l     �� H I��   H r l Step 4: script asks iCal to import the modified .ics into the default Calendar (if not, asks for which one)    I � J J �   S t e p   4 :   s c r i p t   a s k s   i C a l   t o   i m p o r t   t h e   m o d i f i e d   . i c s   i n t o   t h e   d e f a u l t   C a l e n d a r   ( i f   n o t ,   a s k s   f o r   w h i c h   o n e ) G  K L K l     ��������  ��  ��   L  M N M j     �� O�� 0 subpath subPath O m      P P � Q Q   N  R S R j    �� T�� 0 fsubfold FsubFold T m     U U � V V   S  W X W l     ��������  ��  ��   X  Y Z Y l     �� [ \��   [ ' ! === get and save the .ics files     \ � ] ] B   = = =   g e t   a n d   s a v e   t h e   . i c s   f i l e s   Z  ^ _ ^ l     ��������  ��  ��   _  ` a ` l     �� b c��   b A ; The folder to save the attachments in (must already exist)    c � d d v   T h e   f o l d e r   t o   s a v e   t h e   a t t a c h m e n t s   i n   ( m u s t   a l r e a d y   e x i s t ) a  e f e l    	 g���� g r     	 h i h l     j���� j l     k���� k I    �� l m
�� .earsffdralis        afdr l m     ��
�� afdrdown m �� n��
�� 
rtyp n m    ��
�� 
ctxt��  ��  ��  ��  ��   i o      ���� &0 attachmentsfolder attachmentsFolder��  ��   f  o p o l  
  q r s q r   
  t u t m   
  v v � w w  . i c s u o      ���� 0 msgtype   r L F to confirm we process iCal files only here hence only save these ones    s � x x �   t o   c o n f i r m   w e   p r o c e s s   i C a l   f i l e s   o n l y   h e r e   h e n c e   o n l y   s a v e   t h e s e   o n e s p  y z y l     �� { |��   { A ; Save in a sub-folder based on the name of the rule in Mail    | � } } v   S a v e   i n   a   s u b - f o l d e r   b a s e d   o n   t h e   n a m e   o f   t h e   r u l e   i n   M a i l z  ~  ~ l    ����� � r     � � � c     � � � n     � � � 1    ��
�� 
pnam �  f     � m    ��
�� 
ctxt � o      ���� 0 	subfolder 	subFolder��  ��     � � � l     ��������  ��  ��   �  � � � l   k ����� � O    k � � � Z    j � ����� � H    & � � l   % ����� � I   %�� ���
�� .coredoexbool        obj  � n    ! � � � 4    !�� �
�� 
cfol � o     ���� 0 	subfolder 	subFolder � 4    �� �
�� 
cfol � o    ���� &0 attachmentsfolder attachmentsFolder��  ��  ��   � k   ) f � �  � � � l  ) )�� � ���   � ) # AppleEvent -10000 error workaround    � � � � F   A p p l e E v e n t   - 1 0 0 0 0   e r r o r   w o r k a r o u n d �  ��� � Q   ) f � � � � k   , G � �  � � � O  , E � � � r   0 D � � � I  0 >���� �
�� .corecrel****      � null��   � �� � �
�� 
kocl � m   2 3��
�� 
cfol � �� � �
�� 
insh � o   4 5���� &0 attachmentsfolder attachmentsFolder � �� ���
�� 
prdt � K   6 : � � �� ���
�� 
pnam � o   7 8���� 0 	subfolder 	subFolder��  ��   � o      ���� 0 fsubfold FsubFold � m   , - � ��                                                                                  MACS  alis    l  	Fusion HD                  ϋ��H+   �?�
Finder.app                                                      ����(        ����  	                CoreServices    ϋ��      ���     �?� �?� �?�  3Fusion HD:System: Library: CoreServices: Finder.app    
 F i n d e r . a p p   	 F u s i o n   H D  &System/Library/CoreServices/Finder.app  / ��   �  ��� � l  F F��������  ��  ��  ��   � R      �� ���
�� .ascrerr ****      � **** � o      ���� 0 theerror theError��   � k   O f � �  � � � l  O O�� � ���   �  Snow Leopard kludge    � � � � & S n o w   L e o p a r d   k l u d g e �  � � � r   O X � � � n   O T � � � 1   P T��
�� 
psxp � o   O P���� &0 attachmentsfolder attachmentsFolder � o      ���� 0 tpath tPath �  � � � I  Y d�� ���
�� .sysoexecTEXT���     TEXT � b   Y ` � � � m   Y \ � � � � �  m k d i r   - p   � o   \ _���� 0 tpath tPath��   �  ��� � l  e e��������  ��  ��  ��  ��  ��  ��   � m     � ��                                                                                  MACS  alis    l  	Fusion HD                  ϋ��H+   �?�
Finder.app                                                      ����(        ����  	                CoreServices    ϋ��      ���     �?� �?� �?�  3Fusion HD:System: Library: CoreServices: Finder.app    
 F i n d e r . a p p   	 F u s i o n   H D  &System/Library/CoreServices/Finder.app  / ��  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l  l u ����� � r   l u � � � b   l o � � � o   l m���� &0 attachmentsfolder attachmentsFolder � o   m n���� 0 	subfolder 	subFolder � o      ���� 0 fsubfold FsubFold��  ��   �  � � � l     �� � ���   �   display dialog FsubFold    � � � � 0   d i s p l a y   d i a l o g   F s u b F o l d �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � 0 * Get incoming messages that match the rule    � � � � T   G e t   i n c o m i n g   m e s s a g e s   t h a t   m a t c h   t h e   r u l e �  � � � l  v� ����� � O   v� � � � k   |� � �  � � � r   | � � � � e   | � � � 1   | ���
�� 
slct � o      ���� $0 selectedmessages selectedMessages �  ��� � X   �� ��� � � k   �� � �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � ( " Get the date the message was sent    � � � � D   G e t   t h e   d a t e   t h e   m e s s a g e   w a s   s e n t �  � � � r   � � � � � n  � � � � � 1   � ���
�� 
drcv � o   � ����� 0 
themessage 
theMessage � K       � � �� � �
�� 
year � o      ���� 0 y   � �� � �
�� 
mnth � o      ���� 0 m   � �� � �
�� 
day  � o      ���� 0 d   � �� 
�� 
hour  o      ���� 0 h   ���
�� 
min  o      �~�~ 0 min  �   �  r   � l  ��}�| b   �	 b   �


 b   � b   � � b   � � b   � � b   � � b   � � b   � � m   � � �   o   � ��{�{ 0 y   m   � � �  - n  � � I   � ��z �y�z 0 pad    !�x! c   � �"#" o   � ��w�w 0 m  # m   � ��v
�v 
long�x  �y    f   � � m   � �$$ �%%  - n  � �&'& I   � ��u(�t�u 0 pad  ( )�s) o   � ��r�r 0 d  �s  �t  '  f   � � m   � �** �++  - n  �,-, I   ��q.�p�q 0 pad  . /�o/ o   ��n�n 0 h  �o  �p  -  f   � � m  	00 �11  -	 n 
232 I  �m4�l�m 0 pad  4 5�k5 o  �j�j 0 min  �k  �l  3  f  
�}  �|   o      �i�i 0 	timestamp 	timeStamp 676 l �h�g�f�h  �g  �f  7 898 l �e:;�e  :   Save the attachment   ; �<< (   S a v e   t h e   a t t a c h m e n t9 =�d= X  �>�c?> k  .~@@ ABA l .:CDEC s  .:FGF c  .5HIH n  .1JKJ 1  /1�b
�b 
pnamK o  ./�a�a 0 theattachment theAttachmentI m  14�`
�` 
TEXTG o      �_�_ 0 extname extNameD   read file name   E �LL    r e a d   f i l e   n a m eB M�^M Z  ;~NO�]�\N D  ;@PQP o  ;>�[�[ 0 extname extNameQ o  >?�Z�Z 0 msgtype  O k  CzRR STS l CC�Y�X�W�Y  �X  �W  T UVU r  CJWXW n  CFYZY 1  DF�V
�V 
pnamZ o  CD�U�U 0 theattachment theAttachmentX o      �T�T 0 originalname originalNameV [\[ r  Kb]^] b  K^_`_ b  KZaba b  KVcdc b  KRefe b  KNghg o  KL�S�S &0 attachmentsfolder attachmentsFolderh o  LM�R�R 0 	subfolder 	subFolderf m  NQii �jj  :d o  RU�Q�Q 0 	timestamp 	timeStampb m  VYkk �ll   ` o  Z]�P�P 0 originalname originalName^ o      �O�O 0 savepath savePath\ m�Nm Q  czno�Mn I fq�Lpq
�L .coresavenull���     obj p o  fg�K�K 0 theattachment theAttachmentq �Jr�I
�J 
kfilr o  jm�H�H 0 savepath savePath�I  o R      �G�F�E
�G .ascrerr ****      � ****�F  �E  �M  �N  �]  �\  �^  �c 0 theattachment theAttachment? n  sts 2  �D
�D 
attct o  �C�C 0 
themessage 
theMessage�d  �� 0 
themessage 
theMessage � o   � ��B�B $0 selectedmessages selectedMessages��   � m   v yuu�                                                                                  emal  alis    <  	Fusion HD                  ϋ��H+   �?�Mail.app                                                        �����        ����  	                Applications    ϋ��      ���     �?�   Fusion HD:Applications: Mail.app    M a i l . a p p   	 F u s i o n   H D  Applications/Mail.app   / ��  ��  ��   � vwv l     �A�@�?�A  �@  �?  w xyx l     �>�=�<�>  �=  �<  y z{z l     �;|}�;  | , & Adds leading zeros to date components   } �~~ L   A d d s   l e a d i n g   z e r o s   t o   d a t e   c o m p o n e n t s{ � i    	��� I      �:��9�: 0 pad  � ��8� o      �7�7 0 n  �8  �9  � L     �� n     ��� 7   �6��
�6 
ctxt� m    	�5�5��� m   
 �4�4��� l    ��3�2� b     ��� m     �� ���  0 0� o    �1�1 0 n  �3  �2  � ��� l     �0�/�.�0  �/  �.  � ��� l     �-���-  � 8 2 step 3 : open and process each file in the folder   � ��� d   s t e p   3   :   o p e n   a n d   p r o c e s s   e a c h   f i l e   i n   t h e   f o l d e r� ��� l     �,�+�*�,  �+  �*  � ��� l     �)���)  � F @ on adding folder items to subFolder after receiving added_items   � ��� �   o n   a d d i n g   f o l d e r   i t e m s   t o   s u b F o l d e r   a f t e r   r e c e i v i n g   a d d e d _ i t e m s� ��� l ����(�'� O ����� I ���&��%
�& .aevtodocnull  �    alis� 4  ���$�
�$ 
cfol� o  ���#�# 0 fsubfold FsubFold�%  � m  �����                                                                                  MACS  alis    l  	Fusion HD                  ϋ��H+   �?�
Finder.app                                                      ����(        ����  	                CoreServices    ϋ��      ���     �?� �?� �?�  3Fusion HD:System: Library: CoreServices: Finder.app    
 F i n d e r . a p p   	 F u s i o n   H D  &System/Library/CoreServices/Finder.app  / ��  �(  �'  � ��� l ����"�!� O  ����� k  ���� ��� r  ����� n  ����� 2  ��� 
�  
file� 4  ����
� 
cfol� o  ���� 0 fsubfold FsubFold� o      �� 0 thefilelist theFileList� ��� X  ������ k  ���� ��� l ������  �  �  � ��� l ������ r  ����� n  ����� 1  ���
� 
psxp� l ������ c  ����� o  ���� 0 f F� m  ���
� 
alis�  �  � o      �� 0 f F� &   very tricky, don't forget alias   � ��� @   v e r y   t r i c k y ,   d o n ' t   f o r g e t   a l i a s� ��� l ������ r  ����� b  ����� o  ���� 0 f F� m  ���� ���  . n e w . i c s� o      �� 0 f2 F2� N H MOD @pdewost with the original ".tmp" iCal won't acept opening the file   � ��� �   M O D   @ p d e w o s t   w i t h   t h e   o r i g i n a l   " . t m p "   i C a l   w o n ' t   a c e p t   o p e n i n g   t h e   f i l e� ��� r  ����� n  ����� 1  ���
� 
strq� o  ���� 0 f F� o      �� 0 fq FQ� ��� r  ����� n  ����� 1  ���
� 
strq� o  ���� 0 f2 F2� o      �
�
 
0 fq2 FQ2� ��� l ���	���	  �  �  � ��� l ������  � - ' tell me to display dialog (FQ as text)   � ��� N   t e l l   m e   t o   d i s p l a y   d i a l o g   ( F Q   a s   t e x t )� ��� l ������  �  �  � ��� l ����� �  �  �   � ��� l ��������  � ( " Delete these fields from the file   � ��� D   D e l e t e   t h e s e   f i e l d s   f r o m   t h e   f i l e� ��� l ��������  � R L ATTENDEE ORGANIZER X-ALT-DESC X-MICROSOFT X-MS X_WR are possible candidates   � ��� �   A T T E N D E E   O R G A N I Z E R   X - A L T - D E S C   X - M I C R O S O F T   X - M S   X _ W R   a r e   p o s s i b l e   c a n d i d a t e s� ��� l ����������  ��  ��  � ��� r  ����� m  ���� ��� d g r e p   - v   ' ^ \ ( O R G A N I Z E R \ | A T T E N D E E \ | P A R T S T A T \ ) [ ; : ] . * '� o      ���� 
0 cmd CMD� ��� l ��������  � K E Need to tweak the grep above that keeps very line not starting with    � ��� �   N e e d   t o   t w e a k   t h e   g r e p   a b o v e   t h a t   k e e p s   v e r y   l i n e   n o t   s t a r t i n g   w i t h  � � � r  � b  � b  �  o  ������ 
0 cmd CMD m  �� �    o   ���� 0 fq FQ o      ���� 
0 cmd CMD  	
	 l 		��������  ��  ��  
  l 		����   "  Overwrite the original file    � 8   O v e r w r i t e   t h e   o r i g i n a l   f i l e  r  	 b  	 o  	���� 
0 cmd CMD m   � , |   p e r l   - p   - e   ' s / \ r $ / / ' o      ���� 
0 cmd CMD  r  $ b    b   o  ���� 
0 cmd CMD m     �!!    >   o  ���� 
0 fq2 FQ2 o      ���� 
0 cmd CMD "#" r  %4$%$ b  %0&'& b  %,()( o  %(���� 
0 cmd CMD) m  (+** �++  ;   e c h o   ' '   > >  ' o  ,/���� 
0 fq2 FQ2% o      ���� 
0 cmd CMD# ,-, l 55��./��  . 1 + set CMD to CMD & " ; mv " & FQ2 & " " & FQ   / �00 V   s e t   C M D   t o   C M D   &   "   ;   m v   "   &   F Q 2   &   "   "   &   F Q- 121 l 55��������  ��  ��  2 343 l 55��56��  5 &   tell me to display dialog (CMD)   6 �77 @   t e l l   m e   t o   d i s p l a y   d i a l o g   ( C M D )4 898 l 55��������  ��  ��  9 :;: O 5A<=< I 9@��>��
�� .sysoexecTEXT���     TEXT> o  9<���� 
0 cmd CMD��  =  f  56; ?@? l BB��������  ��  ��  @ ABA l BB��CD��  C 3 - Open the file with Calendar, then delete it.   D �EE Z   O p e n   t h e   f i l e   w i t h   C a l e n d a r ,   t h e n   d e l e t e   i t .B FGF l BB��HI��  H &   Trying to skip the dialog here.   I �JJ @   T r y i n g   t o   s k i p   t h e   d i a l o g   h e r e .G KLK l BB��MN��  M H B Activating iCal while ignoring application response will not work   N �OO �   A c t i v a t i n g   i C a l   w h i l e   i g n o r i n g   a p p l i c a t i o n   r e s p o n s e   w i l l   n o t   w o r kL PQP l BB��RS��  R S M trick found at https://discussions.apple.com/thread/7461702?start=0&tstart=0   S �TT �   t r i c k   f o u n d   a t   h t t p s : / / d i s c u s s i o n s . a p p l e . c o m / t h r e a d / 7 4 6 1 7 0 2 ? s t a r t = 0 & t s t a r t = 0Q UVU O  B^WXW l P]YZ[Y k  P]\\ ]^] I PU������
�� .miscactvnull��� ��� null��  ��  ^ _��_ r  V]`a` n VYbcb 1  WY��
�� 
pnamc  g  VWa o      ���� 0 icalname iCalName��  Z 5 / more universal than iCal renamed into Calendar   [ �dd ^   m o r e   u n i v e r s a l   t h a n   i C a l   r e n a m e d   i n t o   C a l e n d a rX 5  BM��e��
�� 
cappe m  FIff �gg  c o m . a p p l e . i C a l
�� kfrmID  V hih l __��������  ��  ��  i jkj l __��������  ��  ��  k lml l _rnopn O _rqrq I cq��s��
�� .aevtodocnull  �    aliss 4  cm��t
�� 
filet J  gluu v��v o  gj���� 0 f2 F2��  ��  r m  _`ww�                                                                                  MACS  alis    l  	Fusion HD                  ϋ��H+   �?�
Finder.app                                                      ����(        ����  	                CoreServices    ϋ��      ���     �?� �?� �?�  3Fusion HD:System: Library: CoreServices: Finder.app    
 F i n d e r . a p p   	 F u s i o n   H D  &System/Library/CoreServices/Finder.app  / ��  o   MOD @pdewost   p �xx    M O D   @ p d e w o s tm yzy l ss��������  ��  ��  z {|{ O  s�}~} O  y�� k  ���� ��� l ��������  � J D Hedge bets over the name of the "Add Event" or "Add Events" window.   � ��� �   H e d g e   b e t s   o v e r   t h e   n a m e   o f   t h e   " A d d   E v e n t "   o r   " A d d   E v e n t s "   w i n d o w .� ���� O  ����� l ������ k  ���� ��� W  ����� I �������
�� .sysodelanull��� ��� nmbr� m  ���� ?ə�������  � l �������� I �������
�� .coredoexbool        obj �  g  ����  ��  ��  � ���� I �������
�� .prcsclicnull��� ��� uiel� 4  �����
�� 
butT� m  ���� ���  O K��  ��  � !  french version here for me   � ��� 6   f r e n c h   v e r s i o n   h e r e   f o r   m e� l �������� 6 ����� 4 �����
�� 
cwin� m  ������ � C ����� 1  ����
�� 
titl� m  ���� ���  A j o u t e r��  ��  ��  � 4  y����
�� 
prcs� o  }����� 0 icalname iCalName~ m  sv���                                                                                  sevs  alis    �  	Fusion HD                  ϋ��H+   �?�System Events.app                                               �\c����        ����  	                CoreServices    ϋ��      ����     �?� �?� �?�  :Fusion HD:System: Library: CoreServices: System Events.app  $  S y s t e m   E v e n t s . a p p   	 F u s i o n   H D  -System/Library/CoreServices/System Events.app   / ��  | ��� I �������
�� .sysodelanull��� ��� nmbr� m  ������ ��  � ��� l ����������  ��  ��  � ��� I �������
�� .sysoexecTEXT���     TEXT� b  ����� m  ���� ���  r m  � o  ������ 0 fq FQ��  � ��� l ������ I �������
�� .sysoexecTEXT���     TEXT� b  ����� m  ���� ���  r m  � o  ������ 
0 fq2 FQ2��  �   MOD @pdewost   � ���    M O D   @ p d e w o s t� ���� l ����������  ��  ��  ��  � 0 f F� o  ������ 0 thefilelist theFileList�  � m  �����                                                                                  MACS  alis    l  	Fusion HD                  ϋ��H+   �?�
Finder.app                                                      ����(        ����  	                CoreServices    ϋ��      ���     �?� �?� �?�  3Fusion HD:System: Library: CoreServices: Finder.app    
 F i n d e r . a p p   	 F u s i o n   H D  &System/Library/CoreServices/Finder.app  / ��  �"  �!  � ��� l     ������  � !  end adding folder items to   � ��� 6   e n d   a d d i n g   f o l d e r   i t e m s   t o� ���� l     ��������  ��  ��  ��       ��� P U����  � ���������� 0 subpath subPath�� 0 fsubfold FsubFold�� 0 pad  
�� .aevtoappnull  �   � ****� ������������� 0 pad  �� ����� �  ���� 0 n  ��  � ���� 0 n  � �����
�� 
ctxt������ �%[�\[Z�\Zi2E� �����������
�� .aevtoappnull  �   � ****� k    ���  e��  o��  ~��  ���  ���  ��� ��� �����  ��  ��  � ���������� 0 theerror theError�� 0 
themessage 
theMessage�� 0 theattachment theAttachment�� 0 f F� Z������~�} v�|�{�z ��y�x�w�v�u�t�s�r�q�p�o ��nu�m�l�k�j�i�h�g�f�e�d�c�b�a�`�_�^�]$*0�\�[�Z�Y�Xik�W�V�U�T�S�R�Q�P��O�N�M�L��K *�Jf�I�H�G��F�E��D���C�B��A��
�� afdrdown
�� 
rtyp
� 
ctxt
�~ .earsffdralis        afdr�} &0 attachmentsfolder attachmentsFolder�| 0 msgtype  
�{ 
pnam�z 0 	subfolder 	subFolder
�y 
cfol
�x .coredoexbool        obj 
�w 
kocl
�v 
insh
�u 
prdt�t 
�s .corecrel****      � null�r 0 theerror theError�q  
�p 
psxp�o 0 tpath tPath
�n .sysoexecTEXT���     TEXT
�m 
slct�l $0 selectedmessages selectedMessages
�k 
cobj
�j .corecnte****       ****
�i 
drcv
�h 
year�g 0 y  
�f 
mnth�e 0 m  
�d 
day �c 0 d  
�b 
hour�a 0 h  
�` 
min �_ 0 min  
�^ 
long�] 0 pad  �\ 0 	timestamp 	timeStamp
�[ 
attc
�Z 
TEXT�Y 0 extname extName�X 0 originalname originalName�W 0 savepath savePath
�V 
kfil
�U .coresavenull���     obj �T  
�S .aevtodocnull  �    alis
�R 
file�Q 0 thefilelist theFileList
�P 
alis�O 0 f2 F2
�N 
strq�M 0 fq FQ�L 
0 fq2 FQ2�K 
0 cmd CMD
�J 
capp
�I kfrmID  
�H .miscactvnull��� ��� null�G 0 icalname iCalName
�F 
prcs
�E 
cwin�  
�D 
titl
�C .sysodelanull��� ��� nmbr
�B 
butT
�A .prcsclicnull��� ��� uiel������l E�O�E�O)�,�&E�O� R*��/��/j  B  � *�������l� Ec  UOPW X  �a ,E` Oa _ %j OPY hUO��%Ec  Oa *a ,EE` O _ [�a l kh �a ,E[a ,E` Z[a ,E`  Z[a !,E` "Z[a #,E` $Z[a %,E` &ZOa '_ %a (%)_  a )&k+ *%a +%)_ "k+ *%a ,%)_ $k+ *%a -%)_ &k+ *%E` .O j�a /-[�a l kh ��,a 0&EQ` 1O_ 1� <��,E` 2O��%a 3%_ .%a 4%_ 2%E` 5O �a 6_ 5l 7W X 8 hY h[OY��[OY�UO� *�b  /j 9UO�I*�b  /a :-E` ;O5_ ;[�a l kh �a <&a ,E�O�a =%E` >O�a ?,E` @O_ >a ?,E` AOa BE` CO_ Ca D%_ @%E` CO_ Ca E%E` CO_ Ca F%_ A%E` CO_ Ca G%_ A%E` CO) 	_ Cj UO)a Ha Ia J0 *j KO*�,E` LUO� *a :_ >kv/j 9UOa M J*a N_ L/ >*a Ok/a P[a Q,\Za R>1 % h*j a Sj T[OY��O*a Ua V/j WUUUOlj TOa X_ @%j Oa Y_ A%j OP[OY��Uascr  ��ޭ