FROM mitmproxy/mitmproxy

WORKDIR /srv/banditio
RUN mitmdump --help
# Default command
CMD ["mitmdump", "--conf", "/srv/banditio/mitmdump.conf"]
#CMD ["bash"]
