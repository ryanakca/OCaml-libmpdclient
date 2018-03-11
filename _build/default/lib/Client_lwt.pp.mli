Caml1999N018����            2lib/Client_lwt.mli����  B  �  �  ������1ocaml.ppx.context��&_none_A@ �A����������)tool_name���.migrate_driver@@����,include_dirs����"[]@@����)load_path!����
%@%@����,open_modules*����.@.@����+for_package3����$None8@8@����%debug=����%falseB@B@����'cookiesG����"::L����������,library-name@W@����#Mpd@��.<command-line>A@@�A@E@@@`@�����Je@e@@e@e@@@e@@e@e�����*ocaml.text��kA@ ��lA@ �A�������	s Provides functions and type in order to communicate to the mpd server
 with commands and requests in Lwt threads. @��2lib/Client_lwt.mliS���TAo@@@��S���TAo@@��S���TAo@������#Lwt��Vqv�Vqy@A��Vqq�Vqy@@��Vqq�Vqy@������.Connection_lwt��!Wz�"Wz�@A��$Wzz�%Wz�@@��'Wzz�(Wz�@������&Status��1X���2X��@A��4X���5X��@@��7X���8X��@������(Protocol��AY���BY��@A��DY���EY��@@��GY���HY��@���A�    �!t��Q[���R[��@@@@A@���)ocaml.doc���A@ ���A@ �A�������	5 Type for a Mpd Client to be used with Lwt promises. @��c\���d\��@@@��f\���g\��@@@��i[���j[��@@��l[���m[��@���Р*initialize��u^���v^��@��@�����.Connection_lwt!t���^����^�@@���^����^�@@�����#Lwt!t���^���^�@�����!t���^���^�@@���^���^�@@@���^���^�@@���^����^�@@@���O��A@ ��A@ �A�������	* Initialize the client with a connection. @���_��_G@@@���_��_G@@@���^����^�@���^����^�@���Р%close���aIM��aIR@��@����!t���aIT��aIU@@���aIT��aIU@@�����#Lwt!t���aI^��aIc@�����$unit���aIY��aI]@@���aIY��aI]@@@���aIY��aIc@@���aIT��aIc@@@������hA@ ��iA@ �A�������2 Close the client @���bdd��bd{@@@�� bdd�bd{@@@��aII�aIc@��aII�aIc@���Р*mpd_banner��d}��d}�@��@����!t��d}��d}�@@��d}��d}�@@����&string��$d}��%d}�@@��'d}��(d}�@@��*d}��+d}�@@@���ٰ��A@ ���A@ �A�������	W Return the mpd banner that the server send at the first connection of the
    client. @��;e���<f��@@@��>e���?f��@@@��Ad}}�Bd}�@��Dd}}�Ed}�@���Р$idle��Mh���Nh��@��@����!t��Wh��Xh�@@��Zh��[h�@@�����#Lwt!t��dh�)�eh�.@������*Pervasives&result��oh��ph�(@�����&string��xh��yh�@@��{h��|h�@@�����&string���h���h�@@���h���h�@@@���h���h�(@@@���h���h�.@@���h���h�.@@@���?��A@ ��A@ �A�������
  � Wait for an event to occur in order to return. When a Client send this
 *  command to the Mpd server throught its connection, the Mpd server do
 *  not answer to any other command except the noidle command. The idea is
 *  to first cancel the promise that has send the "idle" command with
 *  Lwt.cancel and then send the noidle command to the Mpd server. An
 *  example can be found in samples/mpd_lwt_client_idle_noidle.ml. @���i//��n��@@@���i//��n��@@@���h����h�.@���h����h�.@���Р)idle_loop���p����p��@��@����!t���p����p��@@���p����p��@@��@��@����&string���p����p��@@���p����p��@@�����#Lwt!t���p���p�
@�����$bool���p� ��p�@@���p� ��p�@@@���p� ��p�
@@���p����p�
@@�����#Lwt!t���p���p�@�����$unit���p���p�@@��p��p�@@@��p��p�@@��p���p�@@��
p���p�@@@�������A@ ���A@ �A�������	� Loop on mpd event with the "idle" command
    the on_event function take the event response as argument and return
    true to stop or false to continue the loop @��q�s��@@@��q�s��@@@��!p���"p�@��$p���%p�@���Р$send��-u���.u��@��@����!t��7u���8u��@@��:u���;u��@@��@����&string��Du���Eu��@@��Gu���Hu��@@�����#Lwt!t��Qu���Ru��@������(Protocol(response��\u���]u��@@��_u���`u��@@@��bu���cu��@@��eu���fu��@@��hu���iu��@@@������A@ ���A@ �A�������	z Send to the mpd server a command. The response of the server is returned
    under the form of a Protocol.response type. @��yv���zwBt@@@��|v���}wBt@@@��u����u��@���u����u��@���Р'request���yvz��yv�@��@����!t���z����z��@@���z����z��@@��@����&string���z����z��@@���z����z��@@�����#Lwt!t���z����z��@������(Protocol(response���z����z��@@���z����z��@@@���z����z��@@���z����z��@@���z����z��@@@���u��BA@ ��CA@ �A�������
  ] Send to the mpd server a request. The response of the server is returned
    under the form of a Protocol.response type. A request is different from
    a command because a command generate an action from Mpd and returns "OK" or
    an error while a request does not generate an action from Mpd and returns
    "some data to analyse"OK or an error.@���{����	�
@@@���{����	�
@@@���yvv��z��@���yvv��z��@���Р&status��� A

�� A

@��@����!t��� A

�� A

@@��� A

�� A

@@�����#Lwt!t��  A

F� A

K@������*Pervasives&result�� A

4� A

E@������&Status!t�� A

"� A

*@@�� A

"� A

*@@�����&string��" A

,�# A

2@@��% A

,�& A

2@@@��( A

!�) A

E@@@��+ A

!�, A

K@@��. A

�/ A

K@@@���ݰ��A@ ���A@ �A�������	T Create a status request and returns the status under a Mpd.Status.s Lwt.t
    type.@��? B
L
L�@ C
�
�@@@��B B
L
L�C C
�
�@@@��E A

�F A

K@��H A

�I A

K@���Р$ping��Q E
�
��R E
�
�@��@����!t��[ E
�
��\ E
�
�@@��^ E
�
��_ E
�
�@@�����#Lwt!t��h E
�
��i E
�
�@������(Protocol(response��s E
�
��t E
�
�@@��v E
�
��w E
�
�@@@��y E
�
��z E
�
�@@��| E
�
��} E
�
�@@@���+���A@ ���A@ �A�������? Does nothing but return "OK". @��� F
�
��� F
�
�@@@��� F
�
��� F
�
�@@@��� E
�
��� E
�
�@��� E
�
��� E
�
�@���Р(password��� H
�
��� H
� @��@����!t��� H
��� H
�@@��� H
��� H
�@@��@����&string��� H
��� H
�@@��� H
��� H
�@@�����#Lwt!t��� H
�#�� H
�(@������(Protocol(response��� H
��� H
�"@@��� H
��� H
�"@@@��� H
��� H
�(@@��� H
��� H
�(@@��� H
��� H
�(@@@������VA@ ��WA@ �A�������	a This is used for authentication with the server. PASSWORD is simply the
    plaintext password. @��� I))�� Ju�@@@��� I))�� Ju�@@@��� H
�
��� H
�(@��� H
�
��� H
�(@���Р&noidle��� L���� L��@��@����!t�� M��� M��@@��
 M��� M��@@�����#Lwt!t�� M��� M��@������(Protocol(response�� M���  M��@@��" M���# M��@@@��% M���& M��@@��( M���) M��@@@���װ��A@ ���A@ �A�������	� This command is needed to stop listening after a Client.idle command.
    An example of usage can be seen in samples/mpd_lwt_client_idle_noidle.exe. @��9 N���: OW@@@��< N���= OW@@@��? L���@ M��@��B L���C M��@@