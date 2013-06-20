import socket

s = socket.socket(socket.AF_INET,socket.SOCK_STREAM)
port = socket.getservbyname("http","tcp")

s.connect(("www.google.com",port))
print "Connect from",s.getsockname()
print "Connect to",s.getpeername()
print "file descriptor",s.fileno()
s.close()
