import SimpleXMLRPCServer
class CRpcServer:
    def __init__(self):
        self.data = "empty"


    def set(self, strData):
        self.data = strData
        print "Setting Data as: [%s]" % strData
        return 0                   
        
    def get(self):
        print "Getting Data as: [%s]" % self.data
        return self.data
    
obj = CRpcServer()
server = SimpleXMLRPCServer.SimpleXMLRPCServer(("0.0.0.0", 8090))
server.register_instance(obj)


print "Listening on port 8090"
server.serve_forever()
