Caml1999N018����            6lib/Music_database.mli����  8%  �  $"  "8�����1ocaml.ppx.context��&_none_A@ �A����������)tool_name���.migrate_driver@@����,include_dirs����"[]@@����)load_path!����
%@%@����,open_modules*����.@.@����+for_package3����$None8@8@����%debug=����%falseB@B@����'cookiesG����"::L����������,library-name@W@����#Mpd@��.<command-line>A@@�A@E@@@`@�����Je@e@@e@e@@@e@@e@e�����*ocaml.text��kA@ ��lA@ �A�������	= Music_database module: regroups data base related commands. @��6lib/Music_database.mliS���S�4@@@��S���S�4@@��S���S�4@���A�    �$tags��U6;�U6?@@@��Р'Unknown��VBF�VBM@�@@��VBD�VBM@@�Р&Artist��$WNR�%WNX@�@@��(WNP�)WNX@@�Р%Album��/XY]�0XYb@�@@��3XY[�4XYb@@�Р,Album_artist��:Ycg�;Ycs@�@@��>Yce�?Ycs@@�Р%Title��EZtx�FZt}@�@@��IZtv�JZt}@@�Р%Track��P[~��Q[~�@�@@��T[~��U[~�@@�Р$Name��[\���\\��@�@@��_\���`\��@@�Р%Genre��f]���g]��@�@@��j]���k]��@@�Р$Date��q^���r^��@�@@��u^���v^��@@�Р(Composer��|_���}_��@�@@���_����_��@@�Р)Performer���`����`��@�@@���`����`��@@�Р'Comment���a����a��@�@@���a����a��@@�Р$Disc���b����b��@�@@���b����b��@@�Р4Musicbrainz_artistid���c����c��@�@@���c����c��@@�Р3Musicbrainz_albumid���d����d�@�@@���d����d�@@�Р9Musicbrainz_albumartistid���e	��e"@�@@���e��e"@@�Р3Musicbrainz_trackid���f#'��f#:@�@@���f#%��f#:@@�Р:Musicbrainz_releasetrackid���g;?��g;Y@�@@���g;=��g;Y@@�Р-Original_date���hZ^��hZk@�@@���hZ\��hZk@@�Р+Artist_sort���ilp��il{@�@@���iln��il{@@�Р1Album_artist_sort���j|���j|�@�@@���j|~��j|�@@�Р*Album_sort�� k���k��@�@@��k���k��@@�Р%Count��l���l��@�@@��l���l��@���)ocaml.doc���A@ ���A@ �A�������	2 type for the Mpd database tags for find command. @��!m���"m��@@@��$m���%m��@@@@A@@��'U66�(l��@@��*U66�+l��@���Р-tag_to_string��3o���4o��@��@����$tags��=p���>p��@@��@p���Ap��@@����&string��Hp��Ip�@@��Kp��Lp�@@��Np���Op�@@@���?���A@ ���A@ �A�������	3 Transform get the string representation of a tag. @��_q�`q@@@@��bq�cq@@@@��eo���fp�@��ho���ip�@���A�    �+search_tags��rsBG�ssBR@@@��Р#Any��zsBU�{sBX@�@@��~sBU�sBX@@�Р$File���sB[��sB_@�@@���sBY��sB_@@�Р$Base���sBb��sBf@�@@���sB`��sBf@@�Р.Modified_since���sBi��sBw@�@@���sBg��sBw@@�Р'Mpd_tag���sBz��sB�@������$tags���sB���sB�@@���sB���sB�@@@@���sBx��sB�@������2A@ ��3A@ �A�������	: type for the supplementary tags for the search commands. @���t����t��@@@���t����t��@@@@A@@���sBB��sB�@@���sBB��sB�@���Р4search_tag_to_string���v����v��@��@����+search_tags���w����w��@@���w����w��@@����&string���w����w��@@���w����w��@@���w����w��@@@�����pA@ ��qA@ �A�������	0 Get the string representation of a search_tag. @��x���x�2@@@��x���	x�2@@@��v���w��@��v���w��@���Р$find��z48�z4<@��@�����&Client!t��#{>@�${>H@@��&{>@�'{>H@@��@����$list��0{>c�1{>g@��������+search_tags��<{>M�={>X@@��?{>M�@{>X@@�����&string��H{>[�I{>a@@��K{>[�L{>a@@@��N{>M�O{>a@@@��Q{>L�R{>g@@���$sort����$tags��]{>q�^{>u@@��`{>q�a{>u@@���&window�������#int��o{>��p{>�@@��r{>��s{>�@@�����#int��{{>��|{>�@@��~{>��{>�@@@���{>���{>�@@��@����$unit���|����|��@@���|����|��@@����&result���|����|��@�����$list���|����|��@������$Song!t���|����|��@@���|����|��@@@���|����|��@@���������(Protocol)ack_error���|����|��@@���|����|��@@�����#int���|����|��@@���|����|��@@�����&string���|����|��@@���|����|��@@�����&string���|����|��@@���|����|��@@@���|����|��@@@���|����|��@@���|����|��@@���{>y��|��@@���{>k��|��@@���{>L��|��@@���{>@��|��@@@�����vA@ ��wA@ �A�������
   Find songs in the db that match exactly the a list of pairs (tag, exact_pattern). The
    exact_pattern is a string and the tah can be any tag supported by MPD, or
    one of the special parameters:
    - any            checks all tag values
    - file           checks the full path (relative to the music directory)
    - base           restricts the search to songs in the given directory (also relative to the music directory)
    - modified-since compares the file's time stamp with the given value (ISO 8601 or UNIX time stamp) @��}��� C��@@@��}��� C��@@@��z44�|��@��z44�|��@���Р'findadd�� E��� E�	@��@�����&Client!t��) F		�* F		@@��, F		�- F		@@��@����$list��6 F		+�7 F		/@��������+search_tags��B F		�C F		 @@��E F		�F F		 @@�����&string��N F		#�O F		)@@��Q F		#�R F		)@@@��T F		�U F		)@@@��W F		�X F		/@@�����(Protocol(response��a F		3�b F		D@@��d F		3�e F		D@@��g F		�h F		D@@��j F		�k F		D@@@���[���A@ ���A@ �A�������	p Find songs in the db that and adds them to current playlist. Parameters
    have the same meaning as for find. @��{ G	E	E�| H	�	�@@@��~ G	E	E� H	�	�@@@��� E���� F		D@��� E���� F		D@���Р&search��� J	�	��� J	�	�@��@�����&Client!t��� K	�	��� K	�	�@@��� K	�	��� K	�	�@@��@����$list��� K	�	��� K	�	�@��������+search_tags��� K	�	��� K	�	�@@��� K	�	��� K	�	�@@�����&string��� K	�	��� K	�	�@@��� K	�	��� K	�	�@@@��� K	�	��� K	�	�@@@��� K	�	��� K	�	�@@���$sort����$tags��� K	�	��� K	�	�@@��� K	�	��� K	�	�@@���&window�������#int��� K	�
�� K	�
@@��� K	�
�� K	�
@@�����#int��� K	�
�� K	�
@@��� K	�
�� K	�
@@@��� K	�
�� K	�
@@��@����$unit�� L

� L

 @@�� L

� L

 @@����&result�� L

^� L

d@�����$list�� L

,� L

0@������$Song!t��  L

%�! L

+@@��# L

%�$ L

+@@@��& L

%�' L

0@@���������(Protocol)ack_error��4 L

2�5 L

D@@��7 L

2�8 L

D@@�����#int��@ L

G�A L

J@@��C L

G�D L

J@@�����&string��L L

M�M L

S@@��O L

M�P L

S@@�����&string��X L

V�Y L

\@@��[ L

V�\ L

\@@@��^ L

2�_ L

\@@@��a L

$�b L

d@@��d L

�e L

d@@��g K	�
�h L

d@@��j K	�	��k L

d@@��m K	�	��n L

d@@��p K	�	��q L

d@@@���a���A@ ���A@ �A�������	� Search for any song that contains WHAT. Parameters have the same meaning
    as for find, except that search is not case sensitive. @��� M
e
e�� N
�
�@@@��� M
e
e�� N
�
�@@@��� J	�	��� L

d@��� J	�	��� L

d@���Р)searchadd��� P
�
��� P
�
�@��@�����&Client!t��� Q �� Q 
@@��� Q �� Q 
@@��@����$list��� Q %�� Q )@��������+search_tags��� Q �� Q @@��� Q �� Q @@�����&string��� Q �� Q #@@��� Q �� Q #@@@��� Q �� Q #@@@��� Q �� Q )@@�����(Protocol(response��� Q -�� Q >@@��� Q -�� Q >@@��� Q �� Q >@@��� Q �� Q >@@@���Ѱ�\A@ ��]A@ �A�������	� Search for any song that contains WHAT in tag TYPE and adds them to
    current playlist.
    Parameters have the same meaning as for findadd, except that search is not
    case sensitive. @��� R??�� U�@@@��� R??�� U�@@@��� P
�
��� Q >@��� P
�
��� Q >@���Р+searchaddpl�� W� W@��@�����&Client!t�� X� X@@�� X� X@@��@����&string�� X#� X)@@�� X#�  X)@@��@����$list��) XD�* XH@��������+search_tags��5 X.�6 X9@@��8 X.�9 X9@@�����&string��A X<�B XB@@��D X<�E XB@@@��G X.�H XB@@@��J X-�K XH@@�����(Protocol(response��T XL�U X]@@��W XL�X X]@@��Z X-�[ X]@@��] X#�^ X]@@��` X�a X]@@@���Q���A@ ���A@ �A�������	� Search for any song that contains WHAT in tag TYPE and adds them to the
   playlist named NAME.  If a playlist by that name doesn't exist it is
   created. Parameters have the same meaning as for find, except that search is
   not case sensitive. @��q Y^^�r \B[@@@��t Y^^�u \B[@@@��w W�x X]@��z W�{ X]@���A�    �*song_count��� _���� _��@@@��Р%songs��� _���� _��@@����#int��� _���� _��@@��� _���� _��@@��� _���� _��@@�Р(playtime��� _���� _��@@����%float��� _���� _��@@��� _���� _��@@��� _���� _��@@�Р$misc��� _���� _��@@����&string��� _���� _��@@��� _���� _��@@��� _���� _��@@@A@������@A@ ��AA@ �A�������	3 basic type for the response of the count command. @��� ^]]�� ^]�@@@��� ^]]�� ^]�@@@��� _���� _��@@��� _���� _��@���Р%count��� a���� a��@��@�����&Client!t��� b���� b��@@��� b���� b��@@��@����$list��  b� � b�@��������$tags�� b��� b��@@�� b��� b��@@�����&string�� b��� b��@@�� b��� b��@@@�� b��� b��@@@��! b���" b�@@���%group����$tags��- b��. b�@@��0 b��1 b�@@��@����$unit��: b��; b�@@��= b��> b�@@����&result��E c;�F cA@�����$list��N c-�O c1@�����*song_count��W c"�X c,@@��Z c"�[ c,@@@��] c"�^ c1@@�����&string��f c3�g c9@@��i c3�j c9@@@��l c!�m cA@@��o b��p cA@@��r b��s cA@@��u b���v cA@@��x b���y cA@@@���i���A@ ���A@ �A�������
  � Get a count of songs with filters. For examples: count group artist will
   return for each artist the number of sons, the total playtime and the
   name of the artist in misc.
   Counts the number of songs and their total playtime in the db matching TAG
   exactly. The group keyword may be used to group the results by a tag. The
   following prints per-artist counts:
   count group artist
   count genre metal date 2016 group artist
 @��� dBB�� l��@@@��� dBB�� l��@@@��� a���� cA@��� a���� cA@���Р$list��� n �� n @��@�����&Client!t��� o
�� o
@@��� o
�� o
@@��@����$tags��� o
�� o
@@��� o
�� o
@@��@����$list��� o
0�� o
4@��������$tags��� o
!�� o
%@@��� o
!�� o
%@@�����&string��� o
(�� o
.@@��� o
(�� o
.@@@��� o
!�� o
.@@@��� o
 �� o
4@@����&result��� o
N�� o
T@�����$list��� o
@�� o
D@�����&string��� o
9�� o
?@@��� o
9�  o
?@@@�� o
9� o
D@@�����&string�� o
F� o
L@@�� o
F� o
L@@@�� o
8� o
T@@�� o
 � o
T@@�� o
� o
T@@�� o
� o
T@@@������A@ ���A@ �A�������	� Get a list based on some filer. For example "list album artist "Elvis Presley""
    will return a list of the album names of Elvis Presley that exists in the
    music database. @��+ pUU�, r�@@@��. pUU�/ r�@@@��1 n  �2 o
T@��4 n  �5 o
T@���Р&update��= t�> t@��@�����&Client!t��I u�J u%@@��L u�M u%@@��@����&option��V u0�W u6@�����&string��_ u)�` u/@@��b u)�c u/@@@��e u)�f u6@@�����(Protocol(response��o u:�p uK@@��r u:�s uK@@��u u)�v uK@@��x u�y uK@@@���i���A@ ���A@ �A�������
  b Updates the music database: find new files, remove deleted files, update
    modified files. URI is a particular directory or song/file to update. If
    you do not specify it, everything is updated.
    Prints "updating_db: JOBID" where JOBID is a positive number identifying
    the update job. You can read the current job id in the status response. @��� vLL�� ze�@@@��� vLL�� ze�@@@��� t�� uK@��� t�� uK@���Р&rescan��� |���� |��@��@�����&Client!t��� }���� }��@@��� }���� }��@@��@����&option��� }���� }��@�����&string��� }���� }��@@��� }���� }��@@@��� }���� }��@@�����(Protocol(response��� }���� }��@@��� }���� }��@@��� }���� }��@@��� }���� }��@@@���ǰ�RA@ ��SA@ �A�������	4 Same as update, but also rescans unmodified files. @��� ~���� ~�+@@@��� ~���� ~�+@@@��� |���� }��@��� |���� }��@�������nA@ ��oA@ �A�������"/*@�� �--� �-4@@@�� �--� �-4@@��	 �--�
 �-4@��������A@ ���A@ �A�������"/*@�� ���� ���@@@�� ����  ���@@��" ����# ���@@