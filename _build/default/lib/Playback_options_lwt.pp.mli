Caml1999N018����         	   <lib/Playback_options_lwt.mli����  ?  /  ^  ]�����1ocaml.ppx.context��&_none_A@ �A����������)tool_name���.migrate_driver@@����,include_dirs����"[]@@����)load_path!����
%@%@����,open_modules*����.@.@����+for_package3����$None8@8@����%debug=����%falseB@B@����'cookiesG����"::L����������,library-name@W@����#Mpd@��.<command-line>A@@�A@E@@@`@�����Je@e@@e@e@@@e@@e@e�����*ocaml.text��kA@ ��lA@ �A�������	B functions that configure all the playbackoptions in a Lwt thread.@��<lib/Playback_options_lwt.mliS���S�>@@@��S���S�>@@��S���S�>@���Р'consume��U@D�U@K@��@�����*Client_lwt!t��U@M�U@Y@@��U@M� U@Y@@��@����$bool��)U@]�*U@a@@��,U@]�-U@a@@�����#Lwt!t��6U@w�7U@|@������(Protocol(response��AU@e�BU@v@@��DU@e�EU@v@@@��GU@e�HU@|@@��JU@]�KU@|@@��MU@M�NU@|@@@���)ocaml.doc���A@ ���A@ �A�������	� Sets consume state to STATE, STATE should be false or true.
    When consume is activated, each song played is removed from playlist. @��_V}}�`W�	@@@��bV}}�cW�	@@@��eU@@�fU@|@��hU@@�iU@|@���Р)crossfade��qY�rY@��@�����*Client_lwt!t��}Y�~Y&@@���Y��Y&@@��@����#int���Y*��Y-@@���Y*��Y-@@�����#Lwt!t���YC��YH@������(Protocol(response���Y1��YB@@���Y1��YB@@@���Y1��YH@@���Y*��YH@@���Y��YH@@@���a��*A@ ��+A@ �A�������	! Sets crossfading between songs. @���ZII��ZIo@@@���ZII��ZIo@@@���Y��YH@���Y��YH@���Р)mixrampdb���\qu��\q~@��@�����*Client_lwt!t���\q���\q�@@���\q���\q�@@��@����#int���\q���\q�@@���\q���\q�@@�����#Lwt!t���\q���\q�@������(Protocol(response��\q��\q�@@��\q��\q�@@@��\q��	\q�@@��\q��\q�@@��\q��\q�@@@�������A@ ���A@ �A�������
   Sets the threshold at which songs will be overlapped.
    Like crossfading but doesn't fade the track volume, just overlaps. The
    songs need to have MixRamp tags added by an external tool. 0dB is the
    normalized maximum volume so use negative values, I prefer -17dB.
    In the absence of mixramp tags crossfading will be used.
    See http://sourceforge.net/projects/mixramp @��]��� b3@@@��"]���#b3@@@��%\qq�&\q�@��(\qq�)\q�@���A�    �*mixrampd_t��2d5:�3d5D@@@@A@������A@ ���A@ �A�������	K Type for the command mixrampdelay, it can be integers for seconds or nan. @��CeEE�DeE�@@@��FeEE�GeE�@@@��Id55�Jd5D@@��Ld55�Md5D@���Р,mixrampdelay��Ug���Vg��@��@�����*Client_lwt!t��ag���bg��@@��dg���eg��@@��@����*mixrampd_t��ng���og��@@��qg���rg��@@�����#Lwt!t��{g���|g��@������(Protocol(response���g����g��@@���g����g��@@@���g����g��@@���g����g��@@���g����g��@@@���E��A@ ��A@ �A�������	� Additional time subtracted from the overlap calculated by mixrampdb. A
    value of "nan" disables MixRamp overlapping and falls back to crossfading. @���h����i*{@@@���h����i*{@@@���g����g��@���g����g��@���Р&random���k}���k}�@��@�����*Client_lwt!t���k}���k}�@@���k}���k}�@@��@����$bool���k}���k}�@@���k}���k}�@@�����#Lwt!t���k}���k}�@������(Protocol(response���k}���k}�@@���k}���k}�@@@���k}���k}�@@���k}���k}�@@���k}���k}�@@@������nA@ ��oA@ �A�������	; Sets random state to STATE, STATE should be true or false @��l���l��@@@��l���l��@@@��	k}}�
k}�@��k}}�k}�@���Р&repeat��n���n�@��@�����*Client_lwt!t��!n��"n�@@��$n��%n�@@��@����$bool��.n��/n�@@��1n��2n�@@�����#Lwt!t��;n�1�<n�6@������(Protocol(response��Fn��Gn�0@@��In��Jn�0@@@��Ln��Mn�6@@��On��Pn�6@@��Rn��Sn�6@@@������A@ ���A@ �A�������	< Sets repeat state to STATE, STATE should be false or true. @��co77�do7x@@@��fo77�go7x@@@��in���jn�6@��ln���mn�6@���Р&setvol��uqz~�vqz�@��@�����*Client_lwt!t���qz���qz�@@���qz���qz�@@��@����#int���qz���qz�@@���qz���qz�@@�����#Lwt!t���qz���qz�@������(Protocol(response���qz���qz�@@���qz���qz�@@@���qz���qz�@@���qz���qz�@@���qz���qz�@@@���e��.A@ ��/A@ �A�������	3 Sets volume to VOL, the range of volume is 0-100. @���r����r��@@@���r����r��@@@���qzz��qz�@���qzz��qz�@���Р&single���t����t��@��@�����*Client_lwt!t���t����t�	@@���t����t�	@@��@����$bool���t�	��t�	@@���t�	��t�	@@�����#Lwt!t���t�	%��t�	*@������(Protocol(response��t�	�t�	$@@��	t�	�
t�	$@@@��t�	�t�	*@@��t�	�t�	*@@��t���t�	*@@@���Ű��A@ ���A@ �A�������	� Sets single state to STATE, STATE should be 0 or 1. When single is
    activated, playback is stopped after current song, or song is repeated if
    the 'repeat' mode is enabled. @��#u	+	+�$w	�	�@@@��&u	+	+�'w	�	�@@@��)t���*t�	*@��,t���-t�	*@���A�    �+gain_mode_t��6y	�	��7y	�	�@@@@A@������A@ ���A@ �A�������	2 gain_mode type for the command replay_gain_mode. @��Gz	�	��Hz	�
.@@@��Jz	�	��Kz	�
.@@@��My	�	��Ny	�	�@@��Py	�	��Qy	�	�@���Р0replay_gain_mode��Y|
0
4�Z|
0
D@��@�����*Client_lwt!t��e|
0
F�f|
0
R@@��h|
0
F�i|
0
R@@��@����+gain_mode_t��r|
0
V�s|
0
a@@��u|
0
V�v|
0
a@@�����#Lwt!t��|
0
w��|
0
|@������(Protocol(response���|
0
e��|
0
v@@���|
0
e��|
0
v@@@���|
0
e��|
0
|@@���|
0
V��|
0
|@@���|
0
F��|
0
|@@@���I��A@ ��A@ �A�������	� Sets the replay gain mode. One of off, track, album, auto.
    Changing the mode during playback may take several seconds, because the
    new settings does not affect the buffered data.
    This command triggers the options idle event. @���}
}
}�� @<p@@@���}
}
}�� @<p@@@���|
0
0��|
0
|@���|
0
0��|
0
|@@