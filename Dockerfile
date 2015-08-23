FROM mitmproxy/mitmproxy

WORKDIR /srv/banditio

#install the parsepy library
RUN pip install git+https://github.com/dgrtwo/ParsePy.git
RUN pip install pytz

# Default command
CMD ["mitmdump", "--conf", "/srv/banditio/mitmdump.conf"]
#CMD ["bash"]
