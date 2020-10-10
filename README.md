# Spcomm
基于dephi 7实现的多功能串口工具，集合了串口收发/多字符串发送、TCP功能、HID功能、DES、AES、SM4、XOR、HASH、CRC、MD5功能等

VM下的XP系统环境：
链接: https://pan.baidu.com/s/1v_DA3uTcsMU7X_srS_qsQw 
提取码: aqwi

Email:357853730@qq.com

2020-08-19

1、升级到6.2

2、UTF8显示重新放回接收显示区

3、在更多功能中加入GBK2UTF8功能

2020-08-19

1、升级到6.0

2、扩展功能和显示区域可以进行自由拉申


2020-08-19

1、升级到5.4

2、修复一次性发送超过8K数据发不全的问题（需要将spcom控件的BUF也加大）。

2020-06-28

1、升级到5.3

2、修复截图保存的位置错误的问题

3、在数据显示窗口的菜单中增加对扩展功能的快捷按钮

2020-06-14

1、升级到5.2

2、串口号和波特率HINT属性改为显示

3、多字符串发送条数增加至99条


2020-06-02

1、升级到5.1

2、修复发送窗口中的工菜单里的复制功能无法使用的问题

3、在显示窗口的菜单中添加 粘贴 功能

4、优化一下串口接收的数据使用16进制显示的方式

5、优化一些数据计算功能，不再限制长度

2020-05-25

1、升级到5.0

2、对TCP数据进行备份

3、在MORE中添加截图和打开计算器功能

2020-05-19

1、升级到4.9

2、修复读取ini文件时末尾的回车换行丢失的问题

3、优化串口接收时，如果勾选了时间戳功能，每个换行后会多一行时间的问题。

2020-05-11

1、升级到4.8

2、调整扩展功能中的控件排版

3、原始数据进行保存后，重新开始备份


2020-05-08

1、升级到4.7

2、在国密中增加SM3算法

3、去掉TCP功能中对输入的IP和端口的检测

4、去掉状态栏中”双击可发送文件“的提示，改为在输入框中进行提示

2020-05-07

1、升级到4.6

2、修复发送区为空时点发发送键会发送乱码的问题

3、增加对回车换行的转换

4、保存一些参数至本地


2020-04-29

1、升级到4.5

2、发送时可添加校验位

3、修复奇偶位和数据位选项交叉出错的问题

2020-04-28

1、升级到4.4

2、优化多字符串发送方式

3、优化其它体验

2020-04-26
1、升级到4.3

2、因RICHEDIT无法解决会自动换行的问题，还原为MEMO显示

3、优化其它体验

2020-04-16

1、升级到4.3

2、使用RICHEDIT代替MDMO，提升效率

3、修复SOCKET测试时，服务器中的自动回复选项不显示的问题

4、优化其它体验
1、升级到4.1

2、使用RICHEDIT代替MDMO，提升效率

3、修复SOCKET测试时，服务器中的自动回复选项不显示的问题

4、优化其它体验


2020-04-03

1、升级到4.0

2、多字符串发送时，将焦点设定在发要送的控件上

3、在底部提示双击可发送文件字样


2020-03-10

1、升级到3.9

2、修复因加了DES/MAC算法后，CBC加密错误的问题

2020-03-10

1、升级到3.8

2、在发送界面增加折叠该窗口的功能，扩大显示区域

3、优化一些界面

2020-03-06

1、升级到3.7

2、完善位异或功能

3、在DES运算中增加有关DES MAC的计算

2020-03-04

1、升级到3.6

2、新增按位异或功能

2020-01-19

1、升级到3.5

2、在HASH项中增加crc值的计算

2020-01-16

1、升级到3.4

2、在HASH项中增加MD5值的计算

3、优化检测COM口的方式


2020-01-13
1、升级到3.3

2、清除log的时候加入提示信息

3、当log为空的时候不进行保存的动作


2020-01-07
1、升级到3.2

2、修改界面

2020-01-07
1、升级到3.1

2、修改界面

2019-12-31
1、升级到3.0

2、修改界面

2019-12-17
将读取数据时的单字符超时时间改为6ms


2019-09-04
1、升级到2.9

2、将921600的波特率添加到选项栏

3、优化HEX显示方式

4、将串口缓存BUF增大

2019-06-17

1、升级到2.8

2、点击扩展时不再去检查网络，改为在TCP服务器上点击获取IP时才去检查网络

2019-03-22

1、升级到2.7

2、兼容UTF8的显示

2018-11-29

1、升级到2.6

2、对TDES优化，可以输入IV，和使用192bit密钥

2018-10-15

1、修复显示不正常的问题


2018-10-12

1、升级到2.5

2、修复AES进行CBC计算时出错的问题

2018-07-18
1、从10万行自动保存改为5万行

2、修改自动保存时的方式，避免出现memo不显示的问题


2018-06-01
1、升级到2.4

2、修复做DES的时候的错误提示

2018-04-02
1、升级到2.3

2、计算哈希256时可计算单个文件的哈希值


2018-04-02
1、升级到2.2

2、增加AES加解密功能

2018-03-28

1、调整窗体长宽和高

2018-03-28

1、修复当选择输入数据为HEX时，输入的是中文，会引起出错的问题


2018-03-27

1、升级到2.1

2、增加hash256功能

3、HEX输入长度有问题时提示补0

2018-03-23

1、升级到2.0

2、增加SM4功能

2018-03-09

1、升级到1.09

2、修复计算DES的时候，数据末尾为0时返回失败的情况

2017-09-13
修改发送区界面，更方便操作、直观

2017-05-09

1、增加外网IP获取的准确率


2017-05-09

1、增加230400、460800两个波特率

2、选择波特率时可以手动输入

2017-03-28

程序关闭时，如果memo中有字符才提示是否关闭，没有则直接关闭

2017-03-16

将皮肤控件改5.6的版本，解决程序退出时返回错误的提示

V1.8 2017-03-10

1、在扩展板里增加DES的加解密功能

2、增加字符形式的16进制数转换成ASCII码的功能


V1.7 2016-09-07

1、indy的 TIdIPWatch 控件的historyenabled设为false，这样将不在桌面显示iphist.dat文件

V1.7-DEBUG 2016-08-04
1、使用vclskin2.60 For Delphi7 Cracked皮肤，去掉XPmain，避免按ALT后button消失的现象。
2、修复关闭串口后、端口会变的问题


V1.6  2016-07-03

1、增加多字符串能发送的分包总数（大屏幕下可发送更多）

2、添加实时保存功能


V1.5   2016-06-26

1、增加多字符串能发送的分包总数

2、将多字符串保存功能移到关闭应用的时候


V1.4   2016-06-17

1、优化TCP服务器功能

2、修复自动回复发送的字节数不显示在状态栏的问题

3、如果能连外网，则在TCP服务器上显示的是外网IP，否则显示本地IP

4、增加退出前再次确认操作


V1.3   2016-05-29

1、增加TCP功能


V1.2    2016-05-19

1、在扩展功能中增加HID收发的功能


V1.1    2016-05-16

1、优化列举串口列表操作

------------------------------------------------------------------------------------------------

V1.0    2016-05-13

1、自动检测串口数，并列举出来，如无串口则显示1-16的串口

2、发送区增加右键功能，可选择清除；点击、回车发送，双击可发送文件

3、点击扩展按键，可以循环发送16组不能的字符串数据

4、接收超过20万行自动保存程序目录下的log文件中，自动保存后会清空数据，并且重新接收。也可手动保存

5、接收时可选择是否带时间戳、是否需要转化成HEX显示、可暂停

6、对发送的数据可进行异或、累加和校验

7、可显示发送、接收的字节、当前窗口的总行数
