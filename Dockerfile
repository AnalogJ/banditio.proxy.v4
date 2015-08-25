FROM mitmproxy/mitmproxy

WORKDIR /srv/
RUN apt-get update && apt-get install -y supervisor


#install the parsepy library
RUN pip install git+https://github.com/dgrtwo/ParsePy.git
RUN pip install pytz tornado websocket-client

#clone the application code.
#RUN git clone https://github.com/AnalogJ/banditio.proxy.v4.git "banditio.proxy"
ADD . /srv/banditio.proxy
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

RUN git clone https://github.com/AnalogJ/banditio.engine.git "banditio.engine"

EXPOSE 8000 9000
RUN ls /srv/banditio.proxy


# Default command
#CMD ["mitmdump", "--conf", "/srv/banditio.proxy/mitmdump.conf"]
CMD ["/usr/bin/supervisord"]
#CMD ["bash"]