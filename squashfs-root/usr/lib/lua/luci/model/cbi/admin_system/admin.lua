LuaQ               �      A@  � E�  �  �@ � ܀ A A�  \�  G�  E�  K@� ŀ � A \��G  E  I�ÆE  I ćE  K�� �� A EA � \ \�  G@ E@ I ĊE  K�� �� � EA �� \ \�  G� E� I ĊE  �   I� �E�  �@  I���F�F �� \� Z    (�E�  �@ �@ � ܀ A A�  \�  G  E  K@� ŀ A EA � \ \�  G  E  I ćE  I ĆE  K�� �� � EA �� \� �A �� � \�  G@ E@ I@I�E@ I D�E@ I ēE  K�� �� A
 EA �A
 \� �A ��
 � \�  G 
 E 
 I ˕E 
 I�˖E  K�� �  A EA �� \� �A �� � \�  G� E� I@M�E� I�M�E� �� � MI���E� I�C�E  K�� �  � EA �� \� �A � � \�  G@ E@ I@M�E@ I�M�E@ �@ � MI���E  K�� �  � EA �� \� �A � � \�  G@ E@ I@M�E@ I�M�E@ �@ ��MI���E  K@� ŀ � EA �� \� �A �� � \�  G@ E@ I�ÆE@ I ćE@ I Q�E@ ��  I� �E@ K�� ŀ � A \��G@ E@ I�M�E@ I�ҤE@ I�C�E@ ��      I���E@ �      I� �E�  �  ^ � � M      require 	   nixio.fs    m    Map    system 
   translate    Router Password <   Changes the administrator password for accessing the device    s    section    TypedSection    _dummy     
   addremove  
   anonymous    pw1    option    Value 	   Password 	   password    pw2    Confirmation    cfgsections 
   on_commit    access    /etc/config/dropbear    m2 	   dropbear    SSH Access �   Dropbear offers <abbr title="Secure Shell">SSH</abbr> network shell access and an integrated <abbr title="Secure Copy">SCP</abbr> server    Dropbear Instance    ni 
   Interface >   Listen only on the given interface or, if unspecified, on all 	   template    cbi/network_netlist 	   nocreate    unspecified    pt    Port @   Specifies the listening port of this <em>Dropbear</em> instance 	   datatype    port    default 	      pa    Flag    PasswordAuth    Password authentication D   Allow <abbr title="Secure Shell">SSH</abbr> password authentication    enabled    on 	   disabled    off    rmempty    ra    RootPasswordAuth     Allow root logins with password 4   Allow the <em>root</em> user to login with password    gp    GatewayPorts    Gateway ports ;   Allow remote hosts to connect to local SSH forwarded ports    s2 	   SSH-Keys U   Here you can paste public SSH-Keys (one per line) for SSH public-key authentication.    cbi/tblsection    keys 
   TextValue    _data    wrap    rows 	   	   cfgvalue    write                    
 � A   "@�    �       _pass                        '     2   E   K@� ��  \����  �@@�  ���Z   �	��    	�� � � �@��  � ����� ���@ ƀ����� �A AB�B�B@� ܀� �@��  � A� � � �����  � A � � �� ��  � AA � � �� �       pw1 
   formvalue    _pass    pw2 	       luci    sys    user 
   setpasswd    dispatcher    context 	   authuser    m    message 
   translate    Password successfully changed! %   Unknown Error, password not changed! A   Given password confirmation did not match, password not changed!                     b   d         
 � A   "@�    �       _keys                     k   m     	       @ A@  � @    ��     �    	   readfile    /etc/dropbear/authorized_keys                         o   s    	   �   ���   � �A  K�@��   \ �@   �    
   writefile    /etc/dropbear/authorized_keys    gsub    
    
                             