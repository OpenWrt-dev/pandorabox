LuaQ               �   %  � @܀  �C� A�  ��  � E A�  ܃   �	�C� A�  ��  �D E A�  ܃  @�I���A �C����AD �C����A� �C��C� A�  ��  �� E A  ܃  ����C� A�  ��  �D E A�  ܃  ����C� A�  �� � E AE  ܃   �	��	�E�� �C�ƃ����܃ �  @��C� A�  ��  � E AE � EE �� \ ܃  ���� �D  � D  ���D D�ɃȃD� ��  ��  � EE �	 \� �E �E	 � �  A�	 ��	 �
 `� �KEJ�   
\E _��KD� ��  �  A�
 �E ��
 � \�  ��ɂʃKD�� � \D KD� ��  �  A �E �E � \�   �	�ʃKDJ� � \D E� KD���  �  A� �E � �� �E F � \�  I�ʃ�D� A� �D � ƃ������ � @��D �D � �C  �C� A� ��  �� E A  ܃  @�I�ΜI�΃�C� A� ��  � E AE  ܃  ����Ϝ��σ � @      get_interface 
   taboption    general    Value    ipaddr 
   translate    IPv4 address 	   datatype    ip4addr    netmask    IPv4 netmask    value    255.255.255.0    255.255.0.0 
   255.0.0.0    gateway    IPv4 gateway 
   broadcast    IPv4 broadcast    DynamicList    dns    Use custom DNS servers    cast    string    luci    model    network 	   has_ipv6 
   ip6assign    IPv6 assignment length L   Assign a part of given length of every public IPv6-prefix to this interface     	   disabled    64    max(64)    ip6hint    IPv6 assignment hint L   Assign prefix parts using this hexadecimal subprefix ID for this interface. 	!   	@   	      depends    ip6addr    IPv6 address    ip6gw    IPv6 gateway    s 
   ip6prefix    IPv6 routed prefix A   Public prefix routed to this device for distribution to clients.    tools    proto    opt_macaddr    Override MAC address 	   advanced    mtu    Override MTU    placeholder    1500 
   max(9200)    metric    Use gateway metric    0 	   uinteger                 