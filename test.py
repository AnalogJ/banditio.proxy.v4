from websocket import create_connection
import json
print "before open connection"
ws = create_connection("ws://localhost:9000/ws/all",sslopt={"check_hostname": False})
print "Sending 'Hello, World'..."
ws.send(json.dumps({"id":1000, "msg":"Hello, World"}))
print "Sent"
print "Receiving..."
result = ws.recv()
print "Received '%s'" % result
ws.close()