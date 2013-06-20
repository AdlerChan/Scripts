import SimpleXMLRPCServer
import os

class CRpcServer:
    def __init__(self):
        self.port = "0"

    def kill_port(self,port):
	self.port = port
	cmd = """ps axu | grep -v 'grep' | egrep "%s"|awk '{system("kill -9 "$2)}'""" % port
	os.system(cmd)
        return 0

obj = CRpcServer()
server = SimpleXMLRPCServer.SimpleXMLRPCServer(("0.0.0.0", 8090))
server.register_instance(obj)


print "Listening on port 8090"
server.serve_forever()
