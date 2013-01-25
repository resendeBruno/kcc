FasdUAS 1.101.10   ��   ��    k             l      ��  ��   5/
# Copyright (c) 2012 Ciro Mattia Gonano <ciromattia@gmail.com>
#
# Permission to use, copy, modify, and/or distribute this software for
# any purpose with or without fee is hereby granted, provided that the
# above copyright notice and this permission notice appear in all
# copies.
#
# THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL
# WARRANTIES WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED
# WARRANTIES OF MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE
# AUTHOR BE LIABLE FOR ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL
# DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM LOSS OF USE, DATA
# OR PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER
# TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR
# PERFORMANCE OF THIS SOFTWARE.
#
# This script heavily relies on KindleStrip (C) by Paul Durrant and released in public domain
# 	(http://www.mobileread.com/forums/showthread.php?t=96903)
# Also, you need to have kindlegen v2.7 (with KF8 support) which is downloadable
# 	from Amazon website.
#
# Changelog:
#	1.0: first release
#	1.10: add CBZ/CBR support to comic2ebook.py
#	1.11: add CBZ/CBR support to KindleComicConverter
#	1.2: added image page splitting and optimizations
#
# Todo:
#	- bundle a script to manipulate images (to get rid of Mangle/E-nki/whatsoever)
     � 	 	
^ 
 #   C o p y r i g h t   ( c )   2 0 1 2   C i r o   M a t t i a   G o n a n o   < c i r o m a t t i a @ g m a i l . c o m > 
 # 
 #   P e r m i s s i o n   t o   u s e ,   c o p y ,   m o d i f y ,   a n d / o r   d i s t r i b u t e   t h i s   s o f t w a r e   f o r 
 #   a n y   p u r p o s e   w i t h   o r   w i t h o u t   f e e   i s   h e r e b y   g r a n t e d ,   p r o v i d e d   t h a t   t h e 
 #   a b o v e   c o p y r i g h t   n o t i c e   a n d   t h i s   p e r m i s s i o n   n o t i c e   a p p e a r   i n   a l l 
 #   c o p i e s . 
 # 
 #   T H E   S O F T W A R E   I S   P R O V I D E D   " A S   I S "   A N D   T H E   A U T H O R   D I S C L A I M S   A L L 
 #   W A R R A N T I E S   W I T H   R E G A R D   T O   T H I S   S O F T W A R E   I N C L U D I N G   A L L   I M P L I E D 
 #   W A R R A N T I E S   O F   M E R C H A N T A B I L I T Y   A N D   F I T N E S S .   I N   N O   E V E N T   S H A L L   T H E 
 #   A U T H O R   B E   L I A B L E   F O R   A N Y   S P E C I A L ,   D I R E C T ,   I N D I R E C T ,   O R   C O N S E Q U E N T I A L 
 #   D A M A G E S   O R   A N Y   D A M A G E S   W H A T S O E V E R   R E S U L T I N G   F R O M   L O S S   O F   U S E ,   D A T A 
 #   O R   P R O F I T S ,   W H E T H E R   I N   A N   A C T I O N   O F   C O N T R A C T ,   N E G L I G E N C E   O R   O T H E R 
 #   T O R T I O U S   A C T I O N ,   A R I S I N G   O U T   O F   O R   I N   C O N N E C T I O N   W I T H   T H E   U S E   O R 
 #   P E R F O R M A N C E   O F   T H I S   S O F T W A R E . 
 # 
 #   T h i s   s c r i p t   h e a v i l y   r e l i e s   o n   K i n d l e S t r i p   ( C )   b y   P a u l   D u r r a n t   a n d   r e l e a s e d   i n   p u b l i c   d o m a i n 
 #   	 ( h t t p : / / w w w . m o b i l e r e a d . c o m / f o r u m s / s h o w t h r e a d . p h p ? t = 9 6 9 0 3 ) 
 #   A l s o ,   y o u   n e e d   t o   h a v e   k i n d l e g e n   v 2 . 7   ( w i t h   K F 8   s u p p o r t )   w h i c h   i s   d o w n l o a d a b l e 
 #   	 f r o m   A m a z o n   w e b s i t e . 
 # 
 #   C h a n g e l o g : 
 # 	 1 . 0 :   f i r s t   r e l e a s e 
 # 	 1 . 1 0 :   a d d   C B Z / C B R   s u p p o r t   t o   c o m i c 2 e b o o k . p y 
 # 	 1 . 1 1 :   a d d   C B Z / C B R   s u p p o r t   t o   K i n d l e C o m i c C o n v e r t e r 
 # 	 1 . 2 :   a d d e d   i m a g e   p a g e   s p l i t t i n g   a n d   o p t i m i z a t i o n s 
 # 
 #   T o d o : 
 # 	 -   b u n d l e   a   s c r i p t   t o   m a n i p u l a t e   i m a g e s   ( t o   g e t   r i d   o f   M a n g l e / E - n k i / w h a t s o e v e r ) 
   
  
 l     ��������  ��  ��        p         ������ "0 comic2ebookpath comic2ebookPath��        p         ������ 0 kindlegenpath kindlegenPath��        p         ������ "0 kindlestrippath KindleStripPath��        p         ������ 0 parentfolder ParentFolder��        l     ��������  ��  ��        i         I      �������� (0 getcomic2ebookpath GetComic2EbookPath��  ��    k     G        r      ! " ! n      # $ # 1    ��
�� 
psxp $ 4     �� %
�� 
file % l    &���� & b     ' ( ' l   	 )���� ) I   	�� * +
�� .earsffdralis        afdr *  f     + �� ,��
�� 
rtyp , m    ��
�� 
ctxt��  ��  ��   ( m   	 
 - - � . . B C o n t e n t s : R e s o u r c e s : c o m i c 2 e b o o k . p y��  ��   " o      ���� "0 comic2ebookpath comic2ebookPath    / 0 / r     1 2 1 m    ��
�� boovfals 2 o      ���� 0 
fileexists   0  3 4 3 O   + 5 6 5 Z   * 7 8���� 7 I    �� 9��
�� .coredoexbool        obj  9 c     : ; : o    ���� "0 comic2ebookpath comic2ebookPath ; m    ��
�� 
psxf��   8 r   # & < = < m   # $��
�� boovtrue = o      ���� 0 
fileexists  ��  ��   6 m     > >�                                                                                  MACS  alis    t  Macintosh HD               �8�H+     N
Finder.app                                                      �S��        ����  	                CoreServices    �8҈      �͒       N   H   G  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��   4  ? @ ? Z   , D A B���� A l  , . C���� C H   , . D D o   , -���� 0 
fileexists  ��  ��   B I  1 @�� E F
�� .sysodlogaskr        TEXT E m   1 2 G G � H H v T h e   c o m i c 2 e b o o k   p y t h o n   s c r i p t   i s   m i s s i n g   f r o m   t h i s   p a c k a g e . F �� I J
�� 
appr I m   3 4 K K � L L ( K i n d l e C o m i c C o n v e r t e r J �� M N
�� 
btns M J   5 8 O O  P�� P m   5 6 Q Q � R R  E x i t��   N �� S��
�� 
dflt S m   9 :���� ��  ��  ��   @  T�� T L   E G U U o   E F���� 0 
fileexists  ��     V W V l     ��������  ��  ��   W  X Y X i     Z [ Z I      �������� $0 getkindlegenpath GetKindlegenPath��  ��   [ k     = \ \  ] ^ ] r      _ ` _ n      a b a 1    ��
�� 
psxp b 4     �� c
�� 
file c l    d���� d m     e e � f f H M a c i n t o s h   H D : u s r : l o c a l : b i n : k i n d l e g e n��  ��   ` o      ���� 0 kindlegenpath kindlegenPath ^  g h g r   	  i j i m   	 
��
�� boovfals j o      ���� 0 
fileexists   h  k l k O   # m n m Z   " o p���� o I   �� q��
�� .coredoexbool        obj  q c     r s r o    ���� 0 kindlegenpath kindlegenPath s m    ��
�� 
psxf��   p r     t u t m    ��
�� boovtrue u o      ���� 0 
fileexists  ��  ��   n m     v v�                                                                                  MACS  alis    t  Macintosh HD               �8�H+     N
Finder.app                                                      �S��        ����  	                CoreServices    �8҈      �͒       N   H   G  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��   l  w x w Z   $ : y z���� y l  $ & {���� { H   $ & | | o   $ %���� 0 
fileexists  ��  ��   z I  ) 6�� } ~
�� .sysodlogaskr        TEXT } m   ) *   � � � * K i n d l e g e n   i s   m i s s i n g . ~ �� � �
�� 
appr � m   + , � � � � � ( K i n d l e C o m i c C o n v e r t e r � �� � �
�� 
btns � J   - 0 � �  ��� � m   - . � � � � �  E x i t��   � �� ���
�� 
dflt � m   1 2���� ��  ��  ��   x  ��� � L   ; = � � o   ; <���� 0 
fileexists  ��   Y  � � � l     ��������  ��  ��   �  � � � i     � � � I      �������� (0 getkindlestrippath GetKindleStripPath��  ��   � k     G � �  � � � r      � � � n      � � � 1    ��
�� 
psxp � 4     �� �
�� 
file � l    ����� � b     � � � l   	 ����� � I   	�� � �
�� .earsffdralis        afdr �  f     � �� ���
�� 
rtyp � m    ��
�� 
ctxt��  ��  ��   � m   	 
 � � � � � B C o n t e n t s : R e s o u r c e s : k i n d l e s t r i p . p y��  ��   � o      ���� "0 kindlestrippath KindleStripPath �  � � � r     � � � m    ��
�� boovfals � o      ���� 0 
fileexists   �  � � � O   + � � � Z   * � ����� � I    �� ���
�� .coredoexbool        obj  � c     � � � o    ���� "0 kindlestrippath KindleStripPath � m    ��
�� 
psxf��   � r   # & � � � m   # $��
�� boovtrue � o      ���� 0 
fileexists  ��  ��   � m     � ��                                                                                  MACS  alis    t  Macintosh HD               �8�H+     N
Finder.app                                                      �S��        ����  	                CoreServices    �8҈      �͒       N   H   G  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��   �  � � � Z   , D � ����� � l  , . ����� � H   , . � � o   , -���� 0 
fileexists  ��  ��   � I  1 @�� � �
�� .sysodlogaskr        TEXT � m   1 2 � � � � � � T h e   k i n d l e s t r i p   p y t h o n   s c r i p t   i s   m i s s i n g   f r o m   t h i s   p a c k a g e .   P l e a s e   g e t   a   f r e s h   c o p y . � �� � �
�� 
appr � m   3 4 � � � � � ( K i n d l e C o m i c C o n v e r t e r � �� � �
�� 
btns � J   5 8 � �  ��� � m   5 6 � � � � �  E x i t��   � �� ���
�� 
dflt � m   9 :���� ��  ��  ��   �  �� � L   E G � � o   E F�~�~ 0 
fileexists  �   �  � � � l     �}�|�{�}  �|  �{   �  � � � i     � � � I      �z�y�x�z (0 getexecutablepaths GetExecutablePaths�y  �x   � L      � � F      � � � F      � � � I     �w�v�u�w (0 getcomic2ebookpath GetComic2EbookPath�v  �u   � I    �t�s�r�t $0 getkindlegenpath GetKindlegenPath�s  �r   � I    �q�p�o�q (0 getkindlestrippath GetKindleStripPath�p  �o   �  � � � l     �n�m�l�n  �m  �l   �  � � � i     � � � I      �k ��j�k 0 comic2ebook Comic2Ebook �  ��i � o      �h�h 0 dir  �i  �j   � k     � � �  � � � r      � � � n      � � � 1    �g
�g 
psxp � o     �f�f 0 dir   � o      �e�e 0 dirpath dirPath �  � � � r     � � � b    	 � � � o    �d�d 0 parentfolder ParentFolder � m     � � � � � 0 K i n d l e C o m i c C o n v e r t e r . l o g � o      �c�c 0 resultsfile resultsFile �  � � � r     � � � b     � � � b     � � � b     � � � m     � � � � �  p y t h o n   � l    ��b�a � n     � � � 1    �`
�` 
strq � o    �_�_ "0 comic2ebookpath comic2ebookPath�b  �a   � m     � � � � �    - p   K H D   � l    ��^�] � n       1    �\
�\ 
strq o    �[�[ 0 dirpath dirPath�^  �]   � o      �Z�Z 0 shellcommand   �  Q    / r    $ I   "�Y	�X
�Y .sysoexecTEXT���     TEXT	 o    �W�W 0 shellcommand  �X   o      �V�V 0 shellresult   R      �U

�U .ascrerr ****      � ****
 l     �T�S o      �R�R 0 error_message  �T  �S   �Q�P
�Q 
errn l     �O�N o      �M�M 0 error_number  �O  �N  �P   r   , / o   , -�L�L 0 error_message   o      �K�K 0 shellresult    Z   0 ��J�I G   0 M ?   0 ; l  0 9�H�G I  0 9�F�E
�F .sysooffslong    ��� null�E   �D
�D 
psof m   2 3 � 
 E r r o r �C�B
�C 
psin o   4 5�A�A 0 shellresult  �B  �H  �G   m   9 :�@�@   ?   > I !  l  > G"�?�>" I  > G�=�<#
�= .sysooffslong    ��� null�<  # �;$%
�; 
psof$ m   @ A&& �''  W a r n i n g% �:(�9
�: 
psin( o   B C�8�8 0 shellresult  �9  �?  �>  ! m   G H�7�7   k   P �)) *+* r   P `,-, I  P ^�6./
�6 .rdwropenshor       file. 4   P V�50
�5 
file0 o   T U�4�4 0 resultsfile resultsFile/ �31�2
�3 
perm1 m   Y Z�1
�1 boovtrue�2  - o      �0�0 0 fileref fileRef+ 232 I  a j�/45
�/ .rdwrseofnull���     ****4 o   a b�.�. 0 fileref fileRef5 �-6�,
�- 
set26 m   e f�+�+  �,  3 787 I  k t�*9:
�* .rdwrwritnull���     ****9 o   k l�)�) 0 shellresult  : �(;�'
�( 
refn; o   o p�&�& 0 fileref fileRef�'  8 <=< I  u z�%>�$
�% .rdwrclosnull���     ****> o   u v�#�# 0 fileref fileRef�$  = ?�"? I   { ��!� ��! 0 errormessage ErrorMessage�   �  �"  �J  �I   @�@ L   � ���  �   � ABA l     ����  �  �  B CDC i    EFE I      �G�� 0 	kindlegen 	KindlegenG H�H o      �� 0 dir  �  �  F k     �II JKJ r     LML b     NON n     PQP 1    �
� 
psxpQ o     �� 0 dir  O m    RR �SS  / c o n t e n t . o p fM o      �� 0 opfpath opfPathK TUT r    VWV b    XYX o    	�� 0 parentfolder ParentFolderY m   	 
ZZ �[[ 0 K i n d l e C o m i c C o n v e r t e r . l o gW o      �� 0 resultsfile resultsFileU \]\ r    ^_^ b    `a` b    bcb o    �� 0 kindlegenpath kindlegenPathc m    dd �ee   a l   f��f n    ghg 1    �
� 
strqh o    �� 0 opfpath opfPath�  �  _ o      �� 0 shellcommand  ] iji Q    -klmk r    "non I    �
p�	
�
 .sysoexecTEXT���     TEXTp o    �� 0 shellcommand  �	  o o      �� 0 shellresult  l R      �qr
� .ascrerr ****      � ****q l     s��s o      �� 0 error_message  �  �  r �t�
� 
errnt l     u� ��u o      ���� 0 error_number  �   ��  �  m r   * -vwv o   * +���� 0 error_message  w o      ���� 0 shellresult  j xyx Z   . �z{����z G   . K|}| ?   . 9~~ l  . 7������ I  . 7�����
�� .sysooffslong    ��� null��  � ����
�� 
psof� m   0 1�� ��� 
 E r r o r� �����
�� 
psin� o   2 3���� 0 shellresult  ��  ��  ��   m   7 8����  } ?   < G��� l  < E������ I  < E�����
�� .sysooffslong    ��� null��  � ����
�� 
psof� m   > ?�� ���  W a r n i n g� �����
�� 
psin� o   @ A���� 0 shellresult  ��  ��  ��  � m   E F����  { k   N ~�� ��� r   N ^��� I  N \����
�� .rdwropenshor       file� 4   N T���
�� 
file� o   R S���� 0 resultsfile resultsFile� �����
�� 
perm� m   W X��
�� boovtrue��  � o      ���� 0 fileref fileRef� ��� I  _ h����
�� .rdwrseofnull���     ****� o   _ `���� 0 fileref fileRef� �����
�� 
set2� m   c d����  ��  � ��� I  i r����
�� .rdwrwritnull���     ****� o   i j���� 0 shellresult  � �����
�� 
refn� o   m n���� 0 fileref fileRef��  � ��� I  s x�����
�� .rdwrclosnull���     ****� o   s t���� 0 fileref fileRef��  � ���� I   y ~�������� 0 errormessage ErrorMessage��  ��  ��  ��  ��  y ���� L   � �����  ��  D ��� l     ��������  ��  ��  � ��� i    ��� I      ������� 0 	stripfile 	StripFile� ���� o      ���� 0 dir  ��  ��  � k     ��� ��� r     ��� b     ��� n     ��� 1    ��
�� 
psxp� o     ���� 0 dir  � m    �� ���  / c o n t e n t . m o b i� o      ���� 0 origfilepath origFilePath� ��� r    ��� b    ��� n    ��� 1   	 ��
�� 
psxp� o    	���� 0 parentfolder ParentFolder� m    �� ���  c o m i c . m o b i� o      ���� $0 strippedfilepath strippedFilePath� ��� r    ��� b    ��� o    ���� 0 parentfolder ParentFolder� m    �� ��� 0 K i n d l e C o m i c C o n v e r t e r . l o g� o      ���� 0 resultsfile resultsFile� ��� r    )��� b    '��� b    #��� b    !��� b    ��� b    ��� m    �� ���  p y t h o n  � l   ������ n    ��� 1    ��
�� 
strq� o    ���� "0 kindlestrippath KindleStripPath��  ��  � m    �� ���   � l    ������ n     ��� 1     ��
�� 
strq� o    ���� 0 origfilepath origFilePath��  ��  � m   ! "�� ���   � l  # &������ n   # &��� 1   $ &��
�� 
strq� o   # $���� $0 strippedfilepath strippedFilePath��  ��  � o      ���� 0 shellcommand  � ��� Q   * ?���� r   - 4��� I  - 2�����
�� .sysoexecTEXT���     TEXT� o   - .���� 0 shellcommand  ��  � o      ���� 0 shellresult  � R      ����
�� .ascrerr ****      � ****� l     ������ o      ���� 0 error_message  ��  ��  � �����
�� 
errn� l     ������ o      ���� 0 error_number  ��  ��  ��  � r   < ?��� o   < =���� 0 error_message  � o      ���� 0 shellresult  � ��� Z   @ �������� G   @ c��� ?   @ M� � l  @ K���� I  @ K����
�� .sysooffslong    ��� null��   ��
�� 
psof m   B C � 
 E r r o r ����
�� 
psin o   D E���� 0 shellresult  ��  ��  ��    m   K L����  � ?   P _	 l  P ]
����
 I  P ]����
�� .sysooffslong    ��� null��   ��
�� 
psof m   R U �  W a r n i n g ����
�� 
psin o   V W���� 0 shellresult  ��  ��  ��  	 m   ] ^����  � k   f �  r   f v I  f t��
�� .rdwropenshor       file 4   f l��
�� 
file o   j k���� 0 resultsfile resultsFile ����
�� 
perm m   o p��
�� boovtrue��   o      ���� 0 fileref fileRef  I  w ���
�� .rdwrseofnull���     **** o   w x���� 0 fileref fileRef ����
�� 
set2 m   { |����  ��     I  � ���!"
�� .rdwrwritnull���     ****! o   � ����� 0 shellresult  " ��#�
�� 
refn# o   � ��~�~ 0 fileref fileRef�    $%$ I  � ��}&�|
�} .rdwrclosnull���     ****& o   � ��{�{ 0 fileref fileRef�|  % '�z' I   � ��y�x�w�y 0 errormessage ErrorMessage�x  �w  �z  ��  ��  � (�v( L   � ��u�u  �v  � )*) l     �t�s�r�t  �s  �r  * +,+ i    -.- I      �q�p�o�q 0 errormessage ErrorMessage�p  �o  . k     // 010 r     232 m     44 �55 � A n   e r r o r   h a s   o c c u r r e d ,   c o m p l e t e   l o g   h a s   b e e n   s a v e d   t o   K i n d l e C o m i c C o n v e r t e r . l o g   i n   c o m i c ' s   p a r e n t   f o l d e r .3 o      �n�n 0 
dialogtext 
dialogText1 676 I   �m89
�m .sysodlogaskr        TEXT8 o    �l�l 0 
dialogtext 
dialogText9 �k:;
�k 
appr: m    << �== 4 K i n d l e C o m i c C o n v e r t e r   E r r o r; �j>?
�j 
btns> J    @@ A�iA m    	BB �CC  E x i t�i  ? �hD�g
�h 
dfltD m    �f�f �g  7 E�eE R    �dF�c
�d .ascrerr ****      � ****F m    �b�b���c  �e  , GHG l     �a�`�_�a  �`  �_  H IJI i     #KLK I     �^�]�\
�^ .aevtoappnull  �   � ****�]  �\  L Z     MN�[�ZM l    O�Y�XO I     �W�V�U�W (0 getexecutablepaths GetExecutablePaths�V  �U  �Y  �X  N k    PP QRQ r    STS m    	UU �VV � D r a g   &   D r o p   i m a g e s   f o l d e r s   o n t o   t h i s   A p p l e s c r i p t   a p p l i c a t i o n   t o   c o n v e r t   t h e m   t o   a   P a n e l V i e w   M o b i p o c k e t   e b o o k s .T o      �T�T 0 
dialogtext 
dialogTextR W�SW I   �RXY
�R .sysodlogaskr        TEXTX o    �Q�Q 0 
dialogtext 
dialogTextY �PZ[
�P 
apprZ m    \\ �]] ( K i n d l e C o m i c C o n v e r t e r[ �O^_
�O 
btns^ J    `` a�Na m    bb �cc  O K�N  _ �Md�L
�M 
dfltd m    �K�K �L  �S  �[  �Z  J efe l     �J�I�H�J  �I  �H  f ghg i   $ 'iji I     �Gk�F
�G .aevtodocnull  �    alisk o      �E�E 0 
some_items  �F  j Z     �lm�D�Cl l    n�B�An I     �@�?�>�@ (0 getexecutablepaths GetExecutablePaths�?  �>  �B  �A  m X    �o�=po k    �qq rsr O   $tut l 	  #v�<�;v r    #wxw c    !yzy l   {�:�9{ n    |}| m    �8
�8 
ctnr} o    �7�7 0 	this_item  �:  �9  z m     �6
�6 
ctxtx o      �5�5 0 parentfolder ParentFolder�<  �;  u m    ~~�                                                                                  MACS  alis    t  Macintosh HD               �8�H+     N
Finder.app                                                      �S��        ����  	                CoreServices    �8҈      �͒       N   H   G  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  s � Z   % h���4�� l  % .��3�2� =  % .��� n   % ,��� 1   * ,�1
�1 
asdr� l  % *��0�/� I  % *�.��-
�. .sysonfo4asfe        file� o   % &�,�, 0 	this_item  �-  �0  �/  � m   , -�+
�+ boovfals�3  �2  � k   1 Z�� ��� r   1 6��� c   1 4��� o   1 2�*�* 0 	this_item  � m   2 3�)
�) 
ctxt� o      �(�( 0 filename fileName� ��'� Z   7 Z���&�� E   7 :��� o   7 8�%�% 0 filename fileName� m   8 9�� ���  .� k   = T�� ��� r   = B��� m   = >�� ���  .� n     ��� 1   ? A�$
�$ 
txdl� 1   > ?�#
�# 
ascr� ��"� r   C T��� c   C R��� l  C N��!� � n   C N��� 7 D N���
� 
citm� m   H J�� � m   K M����� o   C D�� 0 filename fileName�!  �   � m   N Q�
� 
TEXT� o      �� 0 dir  �"  �&  � r   W Z��� o   W X�� 0 filename fileName� o      �� 0 dir  �'  �4  � k   ] h�� ��� r   ] b��� c   ] `��� o   ] ^�� 0 	this_item  � m   ^ _�
� 
ctxt� o      �� 0 filename fileName� ��� r   c h��� c   c f��� o   c d�� 0 	this_item  � m   d e�
� 
ctxt� o      �� 0 dir  �  � ��� r   i |��� I  i z���
� .sysoexecTEXT���     TEXT� b   i v��� m   i l�� ���  b a s e n a m e  � l  l u���� n   l u��� 1   q u�
� 
strq� l  l q���
� n   l q��� 1   m q�	
�	 
psxp� o   l m�� 0 dir  �  �
  �  �  �  � o      �� 0 dirname  � ��� I   } ����� 0 comic2ebook Comic2Ebook� ��� o   ~ �� 0 filename fileName�  �  � ��� I   � ����� 0 	kindlegen 	Kindlegen� �� � o   � ����� 0 dir  �   �  � ���� I   � �������� 0 	stripfile 	StripFile� ���� o   � ����� 0 dir  ��  ��  ��  �= 0 	this_item  p o    ���� 0 
some_items  �D  �C  h ���� l     ��������  ��  ��  ��       �������������������������������  � ������������������������������������������ (0 getcomic2ebookpath GetComic2EbookPath�� $0 getkindlegenpath GetKindlegenPath�� (0 getkindlestrippath GetKindleStripPath�� (0 getexecutablepaths GetExecutablePaths�� 0 comic2ebook Comic2Ebook�� 0 	kindlegen 	Kindlegen�� 0 	stripfile 	StripFile�� 0 errormessage ErrorMessage
�� .aevtoappnull  �   � ****
�� .aevtodocnull  �    alis�� "0 comic2ebookpath comic2ebookPath�� 0 kindlegenpath kindlegenPath�� "0 kindlestrippath KindleStripPath�� 0 parentfolder ParentFolder��  ��  ��  ��  ��  ��  � �� ���������� (0 getcomic2ebookpath GetComic2EbookPath��  ��  � ���� 0 
fileexists  � �������� -���� >���� G�� K�� Q������
�� 
file
�� 
rtyp
�� 
ctxt
�� .earsffdralis        afdr
�� 
psxp�� "0 comic2ebookpath comic2ebookPath
�� 
psxf
�� .coredoexbool        obj 
�� 
appr
�� 
btns
�� 
dflt�� 
�� .sysodlogaskr        TEXT�� H*�)��l �%/�,E�OfE�O� ��&j 	 eE�Y hUO� �����kv�ka  Y hO�� �� [���������� $0 getkindlegenpath GetKindlegenPath��  ��  � ���� 0 
fileexists  � �� e���� v���� �� ��� �������
�� 
file
�� 
psxp�� 0 kindlegenpath kindlegenPath
�� 
psxf
�� .coredoexbool        obj 
�� 
appr
�� 
btns
�� 
dflt�� 
�� .sysodlogaskr        TEXT�� >*��/�,E�OfE�O� ��&j  eE�Y hUO� �����kv�k� Y hO�� �� ����������� (0 getkindlestrippath GetKindleStripPath��  ��  � ���� 0 
fileexists  � �������� ����� ����� ��� ��� �������
�� 
file
�� 
rtyp
�� 
ctxt
�� .earsffdralis        afdr
�� 
psxp�� "0 kindlestrippath KindleStripPath
�� 
psxf
�� .coredoexbool        obj 
�� 
appr
�� 
btns
�� 
dflt�� 
�� .sysodlogaskr        TEXT�� H*�)��l �%/�,E�OfE�O� ��&j 	 eE�Y hUO� �����kv�ka  Y hO�� �� ����������� (0 getexecutablepaths GetExecutablePaths��  ��  �  � ���������� (0 getcomic2ebookpath GetComic2EbookPath�� $0 getkindlegenpath GetKindlegenPath
�� 
bool�� (0 getkindlestrippath GetKindleStripPath�� *j+  	 	*j+ �&	 	*j+ �&� �� ����������� 0 comic2ebook Comic2Ebook�� ����� �  ���� 0 dir  ��  � ������������������ 0 dir  �� 0 dirpath dirPath�� 0 resultsfile resultsFile�� 0 shellcommand  �� 0 shellresult  �� 0 error_message  �� 0 error_number  �� 0 fileref fileRef� ���� � ����� ��������������&����������������~�}
�� 
psxp�� 0 parentfolder ParentFolder�� "0 comic2ebookpath comic2ebookPath
�� 
strq
�� .sysoexecTEXT���     TEXT�� 0 error_message  � �|�{�z
�| 
errn�{ 0 error_number  �z  
�� 
psof
�� 
psin�� 
�� .sysooffslong    ��� null
�� 
bool
�� 
file
�� 
perm
�� .rdwropenshor       file
�� 
set2
�� .rdwrseofnull���     ****
�� 
refn
� .rdwrwritnull���     ****
�~ .rdwrclosnull���     ****�} 0 errormessage ErrorMessage�� ���,E�O��%E�O���,%�%��,%E�O �j E�W 
X  	�E�O*���� j
 *���� ja & 5*a �/a el E�O�a jl O�a �l O�j O*j+ Y hOh� �yF�x�w���v�y 0 	kindlegen 	Kindlegen�x �u��u �  �t�t 0 dir  �w  � �s�r�q�p�o�n�m�l�s 0 dir  �r 0 opfpath opfPath�q 0 resultsfile resultsFile�p 0 shellcommand  �o 0 shellresult  �n 0 error_message  �m 0 error_number  �l 0 fileref fileRef� �kR�jZ�id�h�g�f��e��d�c�b��a�`�_�^�]�\�[�Z�Y�X
�k 
psxp�j 0 parentfolder ParentFolder�i 0 kindlegenpath kindlegenPath
�h 
strq
�g .sysoexecTEXT���     TEXT�f 0 error_message  � �W�V�U
�W 
errn�V 0 error_number  �U  
�e 
psof
�d 
psin�c 
�b .sysooffslong    ��� null
�a 
bool
�` 
file
�_ 
perm
�^ .rdwropenshor       file
�] 
set2
�\ .rdwrseofnull���     ****
�[ 
refn
�Z .rdwrwritnull���     ****
�Y .rdwrclosnull���     ****�X 0 errormessage ErrorMessage�v ���,�%E�O��%E�O��%��,%E�O �j E�W 
X  	�E�O*���� j
 *���� ja & 5*a �/a el E�O�a jl O�a �l O�j O*j+ Y hOh� �T��S�R���Q�T 0 	stripfile 	StripFile�S �P��P �  �O�O 0 dir  �R  � 	�N�M�L�K�J�I�H�G�F�N 0 dir  �M 0 origfilepath origFilePath�L $0 strippedfilepath strippedFilePath�K 0 resultsfile resultsFile�J 0 shellcommand  �I 0 shellresult  �H 0 error_message  �G 0 error_number  �F 0 fileref fileRef� �E��D����C�B���A�@��?�>�=�<�;�:�9�8�7�6�5�4�3�2
�E 
psxp�D 0 parentfolder ParentFolder�C "0 kindlestrippath KindleStripPath
�B 
strq
�A .sysoexecTEXT���     TEXT�@ 0 error_message  � �1�0�/
�1 
errn�0 0 error_number  �/  
�? 
psof
�> 
psin�= 
�< .sysooffslong    ��� null
�; 
bool
�: 
file
�9 
perm
�8 .rdwropenshor       file
�7 
set2
�6 .rdwrseofnull���     ****
�5 
refn
�4 .rdwrwritnull���     ****
�3 .rdwrclosnull���     ****�2 0 errormessage ErrorMessage�Q ���,�%E�O��,�%E�O��%E�O���,%�%��,%�%��,%E�O �j 
E�W 
X  �E�O*���a  j
 *�a �a  ja & 5*a �/a el E�O�a jl O�a �l O�j O*j+ Y hOh� �..�-�,���+�. 0 errormessage ErrorMessage�-  �,  � �*�* 0 
dialogtext 
dialogText� 	4�)<�(B�'�&�%�$
�) 
appr
�( 
btns
�' 
dflt�& 
�% .sysodlogaskr        TEXT�$���+ �E�O�����kv�k� O)j�� �#L�"�!��� 
�# .aevtoappnull  �   � ****�"  �!  �  � 
�U��\�b���� (0 getexecutablepaths GetExecutablePaths� 0 
dialogtext 
dialogText
� 
appr
� 
btns
� 
dflt� 
� .sysodlogaskr        TEXT�  *j+   �E�O�����kv�k� 	Y h� �j�����
� .aevtodocnull  �    alis� 0 
some_items  �  � ������ 0 
some_items  � 0 	this_item  � 0 filename fileName� 0 dir  � 0 dirname  � ����~��
�	������������ ��������� (0 getexecutablepaths GetExecutablePaths
� 
kocl
� 
cobj
� .corecnte****       ****
� 
ctnr
�
 
ctxt�	 0 parentfolder ParentFolder
� .sysonfo4asfe        file
� 
asdr
� 
ascr
� 
txdl
� 
citm���
� 
TEXT
� 
psxp
�  
strq
�� .sysoexecTEXT���     TEXT�� 0 comic2ebook Comic2Ebook�� 0 	kindlegen 	Kindlegen�� 0 	stripfile 	StripFile� �*j+   � ��[��l kh � 	��,�&E�UO�j �,f  .��&E�O�� ���,FO�[�\[Zk\Z�2a &E�Y �E�Y ��&E�O��&E�Oa �a ,a ,%j E�O*�k+ O*�k+ O*�k+ [OY��Y h� ��� � / U s e r s / l e s t a t / A p p l i c a t i o n s / k c c / K i n d l e C o m i c C o n v e r t e r . a p p / C o n t e n t s / R e s o u r c e s / c o m i c 2 e b o o k . p y� �   0 / u s r / l o c a l / b i n / k i n d l e g e n� � � / U s e r s / l e s t a t / A p p l i c a t i o n s / k c c / K i n d l e C o m i c C o n v e r t e r . a p p / C o n t e n t s / R e s o u r c e s / k i n d l e s t r i p . p y� � ` M a c i n t o s h   H D : U s e r s : l e s t a t : A p p l i c a t i o n s : k c c : t e s t :��  ��  ��  ��  ��  ��   ascr  ��ޭ