FROM mitmproxy/mitmproxy

WORKDIR /srv/banditio

#install the parsepy library
RUN pip install git+https://github.com/dgrtwo/ParsePy.git
RUN pip install pytz


#clone the application code.
RUN git clone https://github.com/AnalogJ/banditio.proxy.v4.git .

# Default command
CMD ["mitmdump", "--conf", "/srv/banditio/mitmdump.conf"]
#CMD ["bash"]
