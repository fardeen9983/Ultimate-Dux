Every computer system connected to the internet is assigned an IP address of the form a.b.c.d where each letter represent a number 0-255.

For ease of access the IP addresses are resolved to human readable format through Domain Name Services.

The computer systems connected to the internet which server client requests through some protocols are called servers. Each computer has a large pool of ports which are basically service entry/exit points. Ports can be used for communicating and exchanging data across a network  

Socket programming allows a program to latch onto the ports of the client and server and thus establish secure communication across the network

Various popular ports and their services and their python modules

HTTP    :   Web Pages           :   80  :   httplib, urllib, xmlrpclib
    
FTP     :   File Transfer       :   119 :   ftplib, urllib

SMTP    :   Sending emails      :   25  :   smtplib

POP3    :   Fetching mail       :   110 :   poplib

IMAP4   :   Fetching mail       :   143 :   imaplib

Telnet  :   Remote connection   :   23  :   telnetlib

Gopher  :   Document Transfer   :   70  :   gopherlib, urllib