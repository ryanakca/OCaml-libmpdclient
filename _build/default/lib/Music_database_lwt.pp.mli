Caml1999N018����            :lib/Music_database_lwt.mli����  :$  	  %�  #������1ocaml.ppx.context��&_none_A@ �A����������)tool_name���.migrate_driver@@����,include_dirs����"[]@@����)load_path!����
%@%@����,open_modules*����.@.@����+for_package3����$None8@8@����%debug=����%falseB@B@����'cookiesG����"::L����������,library-name@W@����#Mpd@��.<command-line>A@@�A@E@@@`@�����Je@e@@e@e@@@e@@e@e�����*ocaml.text��kA@ ��lA@ �A�������	F Music_database module with Lwt: regroups data base related commands. @��:lib/Music_database_lwt.mliS���S�=@@@��S���S�=@@��S���S�=@���A�    �$tags��U?D�U?H@@@��Р'Unknown��VKO�VKV@�@@��VKM�VKV@@�Р&Artist��$WW[�%WWa@�@@��(WWY�)WWa@@�Р%Album��/Xbf�0Xbk@�@@��3Xbd�4Xbk@@�Р,Album_artist��:Ylp�;Yl|@�@@��>Yln�?Yl|@@�Р%Title��EZ}��FZ}�@�@@��IZ}�JZ}�@@�Р%Track��P[���Q[��@�@@��T[���U[��@@�Р$Name��[\���\\��@�@@��_\���`\��@@�Р%Genre��f]���g]��@�@@��j]���k]��@@�Р$Date��q^���r^��@�@@��u^���v^��@@�Р(Composer��|_���}_��@�@@���_����_��@@�Р)Performer���`����`��@�@@���`����`��@@�Р'Comment���a����a��@�@@���a����a��@@�Р$Disc���b����b��@�@@���b����b��@@�Р4Musicbrainz_artistid���c����c��@�@@���c����c��@@�Р3Musicbrainz_albumid���d����d�@�@@���d����d�@@�Р9Musicbrainz_albumartistid���e��e+@�@@���e��e+@@�Р3Musicbrainz_trackid���f,0��f,C@�@@���f,.��f,C@@�Р:Musicbrainz_releasetrackid���gDH��gDb@�@@���gDF��gDb@@�Р-Original_date���hcg��hct@�@@���hce��hct@@�Р+Artist_sort���iuy��iu�@�@@���iuw��iu�@@�Р1Album_artist_sort���j����j��@�@@���j����j��@@�Р*Album_sort�� k���k��@�@@��k���k��@@�Р%Count��l���l��@�@@��l���l��@���)ocaml.doc���A@ ���A@ �A�������	2 type for the Mpd database tags for find command. @��!m���"m��@@@��$m���%m��@@@@A@@��'U??�(l��@@��*U??�+l��@���Р-tag_to_string��3o���4o��@��@����$tags��=p �>p @@��@p �Ap @@����&string��Hp 
�Ip @@��Kp 
�Lp @@��Np �Op @@@���?���A@ ���A@ �A�������	3 Transform get the string representation of a tag. @��_q�`qI@@@��bq�cqI@@@��eo���fp @��ho���ip @���A�    �+search_tags��rsKP�ssK[@@@��Р#Any��zsK^�{sKa@�@@��~sK^�sKa@@�Р$File���sKd��sKh@�@@���sKb��sKh@@�Р$Base���sKk��sKo@�@@���sKi��sKo@@�Р.Modified_since���sKr��sK�@�@@���sKp��sK�@@�Р'Mpd_tag���sK���sK�@������$tags���sK���sK�@@���sK���sK�@@@@���sK���sK�@������2A@ ��3A@ �A�������	: type for the supplementary tags for the search commands. @���t����t��@@@���t����t��@@@@A@@���sKK��sK�@@���sKK��sK�@���Р4search_tag_to_string���v����v��@��@����+search_tags���w����w��@@���w����w��@@����&string���w����w�@@���w����w�@@���w����w�@@@�����pA@ ��qA@ �A�������	0 Get the string representation of a search_tag. @��x�x;@@@��x�	x;@@@��v���w�@��v���w�@���Р$find��z=A�z=E@��@�����*Client_lwt!t��#{GI�${GU@@��&{GI�'{GU@@��@����$list��0{Gp�1{Gt@��������+search_tags��<{GZ�={Ge@@��?{GZ�@{Ge@@�����&string��H{Gh�I{Gn@@��K{Gh�L{Gn@@@��N{GZ�O{Gn@@@��Q{GY�R{Gt@@���$sort����$tags��]{G~�^{G�@@��`{G~�a{G�@@���&window�������#int��o|���p|��@@��r|���s|��@@�����#int��{|���||��@@��~|���|��@@@���|����|��@@��@����$unit���|����|��@@���|����|��@@�����#Lwt!t���}����}��@�����&result���}����}��@�����$list���}����}��@������$Song!t���}����}��@@���}����}��@@@���}����}��@@���������(Protocol)ack_error���}����}��@@���}����}��@@�����#int���}����}��@@���}����}��@@�����&string���}����}��@@���}����}��@@�����&string���}����}��@@���}����}��@@@���}����}��@@@���}����}��@@@���}����}��@@���|����}��@@���|��� }��@@��{Gx�}��@@��{GY�}��@@��{GI�	}��@@@�������A@ ���A@ �A�������
  A Find songs in the db that match exactly the a list of pairs (tag, exact_pattern). The
    exact_pattern is a string and the tah can be any tag supported by MPD, or
    one of the special parameters:
    - any            checks all tag values
    - file           checks the full path (relative to the music directory)
    - base           restricts the search to songs in the given directory
                     (also relative to the music directory)
    - modified-since compares the file's time stamp with the given value
                     (ISO 8601 or UNIX time stamp)
@��~��� G	4	6@@@��~��� G	4	6@@@��z==� }��@��"z==�#}��@���Р'findadd��+ I	8	<�, I	8	C@��@�����*Client_lwt!t��7 J	E	G�8 J	E	S@@��: J	E	G�; J	E	S@@��@����$list��D J	E	n�E J	E	r@��������+search_tags��P J	E	X�Q J	E	c@@��S J	E	X�T J	E	c@@�����&string��\ J	E	f�] J	E	l@@��_ J	E	f�` J	E	l@@@��b J	E	X�c J	E	l@@@��e J	E	W�f J	E	r@@�����#Lwt!t��o J	E	��p J	E	�@������(Protocol(response��z J	E	v�{ J	E	�@@��} J	E	v�~ J	E	�@@@��� J	E	v�� J	E	�@@��� J	E	W�� J	E	�@@��� J	E	G�� J	E	�@@@@��� I	8	8�� J	E	�@��� I	8	8�� J	E	�@���Р&search��� N

�� N

@��@�����*Client_lwt!t��� O

�� O

@@��� O

�� O

@@��@����$list��� O

8�� O

<@��������+search_tags��� O

"�� O

-@@��� O

"�� O

-@@�����&string��� O

0�� O

6@@��� O

0�� O

6@@@��� O

"�� O

6@@@��� O

!�� O

<@@���$sort����$tags��� O

F�� O

J@@��� O

F�� O

J@@���&window�������#int��� P
K
Y�� P
K
\@@��� P
K
Y�� P
K
\@@�����#int��� P
K
_�� P
K
b@@��� P
K
_�� P
K
b@@@��� P
K
Y�  P
K
b@@��@����$unit��	 P
K
g�
 P
K
k@@�� P
K
g� P
K
k@@�����#Lwt!t�� Q
l
�� Q
l
�@�����&result�� Q
l
��  Q
l
�@�����$list��( Q
l
y�) Q
l
}@������$Song!t��3 Q
l
r�4 Q
l
x@@��6 Q
l
r�7 Q
l
x@@@��9 Q
l
r�: Q
l
}@@���������(Protocol)ack_error��G Q
l
�H Q
l
�@@��J Q
l
�K Q
l
�@@�����#int��S Q
l
��T Q
l
�@@��V Q
l
��W Q
l
�@@�����&string��_ Q
l
��` Q
l
�@@��b Q
l
��c Q
l
�@@�����&string��k Q
l
��l Q
l
�@@��n Q
l
��o Q
l
�@@@��q Q
l
�r Q
l
�@@@��t Q
l
q�u Q
l
�@@@��w Q
l
q�x Q
l
�@@��z P
K
g�{ Q
l
�@@��} P
K
P�~ Q
l
�@@��� O

@�� Q
l
�@@��� O

!�� Q
l
�@@��� O

�� Q
l
�@@@���w��A@ ��A@ �A�������	� Search for any song that contains WHAT. Parameters have the same meaning
   as for find, except that search is not case sensitive. @��� R
�
��� SA@@@��� R
�
��� SA@@@��� N

�� Q
l
�@��� N

�� Q
l
�@���Р)searchadd��� UCG�� UCP@��@�����*Client_lwt!t��� VRT�� VR`@@��� VRT�� VR`@@��@����$list��� VR{�� VR@��������+search_tags��� VRe�� VRp@@��� VRe�� VRp@@�����&string��� VRs�� VRy@@��� VRs�� VRy@@@��� VRe�� VRy@@@��� VRd�� VR@@�����#Lwt!t��� VR��� VR�@������(Protocol(response��� VR��� VR�@@��� VR��� VR�@@@��� VR��� VR�@@�� VRd� VR�@@�� VRT� VR�@@@�������A@ ���A@ �A�������	� Search for any song that contains WHAT in tag TYPE and adds them to
   current playlist.
   Parameters have the same meaning as for findadd, except that search is not
   case sensitive. @�� W��� ZF[@@@�� W��� ZF[@@@�� UCC� VR�@�� UCC� VR�@���Р+searchaddpl��' \]a�( \]l@��@�����*Client_lwt!t��3 ]np�4 ]n|@@��6 ]np�7 ]n|@@��@����&string��@ ]n��A ]n�@@��C ]n��D ]n�@@��@����$list��M ]n��N ]n�@��������+search_tags��Y ]n��Z ]n�@@��\ ]n��] ]n�@@�����&string��e ]n��f ]n�@@��h ]n��i ]n�@@@��k ]n��l ]n�@@@��n ]n��o ]n�@@�����#Lwt!t��x ]n��y ]n�@������(Protocol(response��� ]n��� ]n�@@��� ]n��� ]n�@@@��� ]n��� ]n�@@��� ]n��� ]n�@@��� ]n��� ]n�@@��� ]np�� ]n�@@@������A@ ��A@ �A�������	� Search for any song that contains WHAT in tag TYPE and adds them to the
   playlist named NAME.  If a playlist by that name doesn't exist it is
   created. Parameters have the same meaning as for find, except that search is
   not case sensitive. @��� ^���� a��@@@��� ^���� a��@@@��� \]]�� ]n�@��� \]]�� ]n�@���A�    �*song_count��� c���� c��@@@��Р%songs��� c���� c��@@����#int��� c���� c��@@��� c���� c��@@��� c���� c��@@�Р(playtime��� c���� c��@@����%float��� c���� c��@@��� c���� c��@@��� c���� c��@@�Р$misc��� c���� c��@@����&string��� c���� c��@@��� c���� c��@@��� c���� c��@@@A@�����rA@ ��sA@ �A�������	3 basic type for the response of the count command. @�� d  � d 8@@@��
 d  � d 8@@@�� c��� c��@@�� c��� c��@���Р%count�� f:>� f:C@��@�����*Client_lwt!t��% gEG�& gES@@��( gEG�) gES@@��@����$list��2 gEg�3 gEk@��������$tags��> gEX�? gE\@@��A gEX�B gE\@@�����&string��J gE_�K gEe@@��M gE_�N gEe@@@��P gEX�Q gEe@@@��S gEW�T gEk@@���%group����$tags��_ gEv�` gEz@@��b gEv�c gEz@@��@����$unit��l gE~�m gE�@@��o gE~�p gE�@@�����#Lwt!t��y h���z h��@�����&result��� h���� h��@�����$list��� h���� h��@�����*song_count��� h���� h��@@��� h���� h��@@@��� h���� h��@@�����&string��� h���� h��@@��� h���� h��@@@��� h���� h��@@@��� h���� h��@@��� gE~�� h��@@��� gEo�� h��@@��� gEW�� h��@@��� gEG�� h��@@@������4A@ ��5A@ �A�������
  � Get a count of songs with filters. For examples: count group artist will
   return for each artist the number of sons, the total playtime and the
   name of the artist in misc.
   Counts the number of songs and their total playtime in the db matching TAG
   exactly. The group keyword may be used to group the results by a tag. The
   following prints per-artist counts:
   count group artist
   count genre metal date 2016 group artist
 @��� i���� qhk@@@��� i���� qhk@@@��� f::�� h��@��� f::�� h��@���Р$list��� tnr�� tnv@��@�����*Client_lwt!t��� uxz�� ux�@@��� uxz�� ux�@@��@����$tags��� ux��� ux�@@��� ux��� ux�@@��@����$list�� ux�� ux�@��������$tags�� ux�� ux�@@�� ux�� ux�@@�����&string�� ux�� ux�@@�� ux�� ux�@@@�� ux��  ux�@@@��" ux��# ux�@@�����#Lwt!t��, v���- v��@�����&result��5 v���6 v��@�����$list��> v���? v��@�����&string��G v���H v��@@��J v���K v��@@@��M v���N v��@@�����&string��V v���W v��@@��Y v���Z v��@@@��\ v���] v��@@@��_ v���` v��@@��b ux��c v��@@��e ux��f v��@@��h uxz�i v��@@@���Y���A@ ���A@ �A�������	� Get a list based on some filer. For example "list album artist "Elvis Presley""
    will return a list of the album names of Elvis Presley that exists in the
    music database. @��y w���z yq�@@@��| w���} yq�@@@�� tnn�� v��@��� tnn�� v��@���Р&update��� {���� {��@��@�����*Client_lwt!t��� |���� |��@@��� |���� |��@@��@����&option��� |���� |��@�����&string��� |���� |��@@��� |���� |��@@@��� |���� |��@@�����#Lwt!t��� |���� |��@������(Protocol(response��� |���� |��@@��� |���� |��@@@��� |���� |��@@��� |���� |��@@��� |���� |��@@@���Ű�PA@ ��QA@ �A�������
  a Update the music database: find new files, remove deleted files, update
    modified files. URI is a particular directory or song/file to update. If
    you do not specify it, everything is updated.
    Prints "updating_db: JOBID" where JOBID is a positive number identifying
    the update job. You can read the current job id in the status response. @��� }���� ��6@@@��� }���� ��6@@@��� {���� |��@��� {���� |��@���Р&rescan��� �8<�� �8B@��@�����*Client_lwt!t�� �DF� �DR@@�� �DF� �DR@@��@����&option�� �D]� �Dc@�����&string�� �DV� �D\@@�� �DV� �D\@@@�� �DV�  �Dc@@�����#Lwt!t��) �Dy�* �D~@������(Protocol(response��4 �Dg�5 �Dx@@��7 �Dg�8 �Dx@@@��: �Dg�; �D~@@��= �DV�> �D~@@��@ �DF�A �D~@@@���1���A@ ���A@ �A�������	4 Same as update, but also rescans unmodified files. @��Q ��R ��@@@��T ��U ��@@@��W �88�X �D~@��Z �88�[ �D~@�����n���A@ ���A@ �A�������"/*@��m ����n ���@@@��p ����q ���@@��s ����t ���@���������A@ ���A@ �A�������"/*@��� �>>�� �>E@@@��� �>>�� �>E@@��� �>>�� �>E@@