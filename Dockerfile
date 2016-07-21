FROM mitmproxy/mitmproxy

WORKDIR /srv/

#install the python libraries required
RUN pip install pytz tornado websocket-client

#clone the application code.
#RUN git clone https://github.com/AnalogJ/banditio.proxy.v4.git "banditio.proxy"
ADD . /srv/banditio.proxy

EXPOSE 8000
RUN ls /srv/banditio.proxy


# Default command
CMD ["mitmdump", "--conf", "/srv/banditio.proxy/mitmdump.conf"]
#CMD ["/usr/bin/supervisord"]
##CMD ["bash"]