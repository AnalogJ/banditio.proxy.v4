from models.entry import Entry


entry = Entry()

entry.test = 'hello'
print entry.test
#
# headers = [
#                {
#                    "name": "Host",
#                    "value": "www.cnn.com"
#                },
#                {
#                    "name": "User-Agent",
#                    "value": "curl/7.43.0"
#                },
#                {
#                    "name": "Accept",
#                    "value": "*/*"
#                },
#                {
#                    "name": "Proxy-Connection",
#                    "value": "Keep-Alive"
#                },
#                {
#                    "name": "accept-encoding",
#                    "value": "identity"
#                }
#            ]
#
#
# print {header['name']: header['value'] for header in headers}