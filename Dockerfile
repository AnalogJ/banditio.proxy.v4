FROM mitmproxy/mitmproxy

WORKDIR /srv/
RUN apt-get update && apt-get install -y supervisor


#install the parsepy library
RUN pip install git+https://github.com/dgrtwo/ParsePy.git
RUN pip install pytz
RUN pip install tornado


#clone the application code.
RUN git clone https://github.com/AnalogJ/banditio.proxy.v4.git "banditio.proxy"
RUN git clone https://github.com/AnalogJ/banditio.engine.git "banditio.engine"

EXPOSE 8000 9000

RUN cp /srv/banditio.proxy/supervisord.conf /etc/supervisor/conf.d/supervisord.conf


# Default command
#CMD ["mitmdump", "--conf", "/srv/banditio.proxy/mitmdump.conf"]
CMD ["/usr/bin/supervisord"]
#CMD ["bash"]