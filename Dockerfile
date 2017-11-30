FROM debian

ADD escalate /bin/escalate

RUN chmod 755 /bin/escalate
RUN chmod u+s /bin/escalate
RUN chmod g+s /bin/escalate

RUN echo secret > /tmp/secret
RUN chmod 600 /tmp/secret

CMD sleep 1000000
