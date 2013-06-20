import xmlrpclib
server = xmlrpclib.ServerProxy("http://localhost:8090")
server.set("This is setting data")
words = server.get()
print "Getting:" + words
