LuaQ                �     A@  � E   ��  \� �   ��  �� �    ܀   AA � E  �� \� � �� � BC    �C ��ł � E �C \� � �� � ܂  ���DC ܂ ����Ƃ��D�B ��D��A� �� �B܂ ����E�� �B�C � W�E  ����B  ��� F�CF�CC  � ������@�E�� �B�C � C   �E�� �B�� �   � �T �� �E � \�  �  ���J � �C �� � bC PC���A�C���D�H� AD �    �   ��C���H� E� F��� �D �� � �AI���I��J��D
 �C���J���
 E � \ �C  �C��
 A� � �� �� �  � ��    �CL� A� �C �CL AD �C �CL� A� �C �CL AD �C �CL� A� �C �C  	���C��
 AD � �� � ��    	Bɟ	BP�	�P��C��
 A � �D � ��    	BI�	ң� �� �� 	����� ��R�S�CS�     �C �C��
 A� � �� �� �  � ��    	BI�	Bԣ� �� �� 	����C��
 A� � �� � ��    	Bɟ	U�	�P��C��
 AD � �� � ��    	�գ�� ��R�S�CS��     �C �C��
 A � �D �� � � � ��    	BI�� �� �� 	���	Bԣ�C��
 A� � � �� � E � ��    	�I�	�ף�� ��� � ����	� KEX	\  ��KFLˆX܆ ���܆ 
� K�X\� K��\� �GY	� "G  �\F !�  ����  ���C��
 A� � �� �� �  � ��    	Bڣ	BI�� �� �� 	����C��
 A� � � �� � E � �C  #  @_�E�� �B�C � C   �E�� �B�� �   � �T ��� �E �� \�  �J � �C �� � bC PC���A�K�H�� � BA� �D \� ���AI���I�FJ���C
 \C�F�J����
  A  \C  KC�� D E �� \ \�   �	BI�KCL�C  A�  \C  KCL�  AD  \C  KCL��  A�  \C  KC���
 � E �� \ \�   �KCL��  A  \C  KCL� D \C KCL�� � \C KCL� D \C KCL�� � \C d 	B�KC��C � E �� \ \�   �KCL�C � \C KCL� \C�KCL�C \C�KCL�� \C�KCL�� \C�KCL�  \C�KCL�C  \C�KCL��  \C�KCL��  \C�KCL�! \C�KCL�C! \C�KCL��! \C�KCL��! \C�KCL�" \C�KCL�C" \C�KCL��" \C�KCL��" \C�KCL�# \C�KCL�C# \C�KCL�� \C�KCL��# \C�KCL��# \C�KCL�$ \C�KCL�C$ \C�KCL��$ \C�KCL��$ \C�KCL�% \C�KCL�C% \C�KCL��% \C�KCL��% \C�KCL�& \C�KCL�C& \C�KCL��& \C�KCL��& \C�KCL�' \C�KCL�C' \C�KCL��' \C�KC���
 D E �� \ \�   �	Bɟ	B��	BP�	�P�KC���
 ( E �D( \ \�   �	��E �� \� 	B��E� F��F�F���C    \C KC���
  E �) \ \�   �	ңE �� \� 	B��E� F��F�FC���    \C KC���
 � E �� \ \�   �	B�E �� \� 	B��KC���
 � E �� \ \�   �	Bɟ	B��	BI�	�P�KC���
 D E ��) \ \�   �	ңE �� \� 	B��E� F��F�FC���    \C KC���
  E �D \ \�   �	B�E �� \� 	B��KC�� D E �* \ \�   �	Bj�KCL��*  A�*  \C  KCL�C*  A+  \C  KCL�C+  A�+  \C  KCL��+  A,  \C  KC���
 � E � \� � �D � \C  �  � �      require 	   luci.sys 
   luci.util    luci.dispatcher    nixio    luci.tools.firewall    luci.model.network    arg 	          Map 	   firewall 
   translate    Firewall - Traffic Rules �   This page allows you to change advanced properties of the 
	           traffic rule entry, such as matched source and destination 
			   hosts. 	   redirect 
   build_url    admin/network/firewall/rules    init    uci    get    target    SNAT    luci    http    name    _name 	       (Unnamed SNAT)    SNAT %s    title    %s - %s    foreach    zone    section    NamedSection 
   anonymous 
   addremove     opt_enabled    Button 	   opt_name    Value    Name    option    proto 	   Protocol s   You may specify multiple by selecting "-- custom --" and 
		           then entering protocols separated by space.    value    all    All protocols    tcp udp    TCP+UDP    tcp    TCP    udp    UDP    icmp    ICMP 	   cfgvalue    src    Source zone 	   nocreate    default    wan 	   template    cbi/firewall_zonelist    src_ip    Source IP address    rmempty 	   datatype    neg(ipaddr)    placeholder    any    sys    net    ipv4_hints 	   src_port    Source port d   Match incoming traffic originating from the given source 
			port or port range on the client host.    neg(portrange)    dest    Destination zone    lan    dest_ip    Destination IP address    neg(ip4addr) 
   dest_port    Destination port I   Match forwarded traffic to the given destination port or 
			port range.    src_dip    SNAT IP address .   Rewrite matched traffic to the given address.    ip4addr    ipairs    get_interfaces    ipaddrs    host    string    %s (%s) 
   shortname 
   src_dport 
   SNAT port h   Rewrite matched traffic to the given source port. May be 
			left empty to only rewrite the IP address. 
   portrange    Do not rewrite    extra    Extra arguments 8   Passes additional arguments to iptables. Use with care!    (Unnamed Rule)    rule 
   ListValue    family    Restrict to address family    IPv4 and IPv6    ipv4 
   IPv4 only    ipv6 
   IPv6 only    Any    DynamicList 
   icmp_type    Match ICMP type    echo-reply    destination-unreachable    network-unreachable    host-unreachable    protocol-unreachable    port-unreachable    fragmentation-needed    source-route-failed    network-unknown    host-unknown    network-prohibited    host-prohibited    TOS-network-unreachable    TOS-host-unreachable    communication-prohibited    host-precedence-violation    precedence-cutoff    source-quench    network-redirect    host-redirect    TOS-network-redirect    TOS-host-redirect    echo-request    router-advertisement    router-solicitation    time-exceeded    ttl-zero-during-transit    ttl-zero-during-reassembly    parameter-problem    ip-header-bad    required-option-missing    timestamp-request    timestamp-reply    address-mask-request    address-mask-reply 	   allowany    src_mac    Source MAC address    list(macaddr) 
   mac_hints    Source address    list(neg(portrange))    allowlocal    Destination address    Action    ACCEPT    DROP    drop    accept    REJECT    reject    NOTRACK    don't track        >   I    	   F @ Z@    �F@@ Z   @��  �   ƀ� � � @��@� ��A@ �� �  � �@  �� �       network    name    imatch    wan                     _   e        E   F@� �   \�  Z   @ ��� @ ���  �  ^   �       Value 	   cfgvalue    tcpudp    tcp udp                     s   u    
   �   � @   J �  �� bA PA���@  �       value    %s (%s)                     �   �    
   �   � @   J �  �� bA PA���@  �       value    %s (%s)                     �   �        E   F@� �   \�  Z   @ ��� @ ���  �  ^   �       Value 	   cfgvalue    tcpudp    tcp udp                          
   �   � @   J �  �� bA PA���@  �       value    %s (%s)                          
   �   � @   J �  �� bA PA���@  �       value    %s (%s)                     2  4   
   �   � @   J �  �� bA PA���@  �       value    %s (%s)                             