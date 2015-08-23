import time
from libmproxy.script import concurrent
from pprint import pprint


@concurrent  # Remove this and see what happens
def request(context, flow):
    print("start  request: %s%s" % (flow.request.host, flow.request.path))

def clientconnect(context, connectionHandler):
    pprint(connectionHandler.config.authenticator.__dict__)
