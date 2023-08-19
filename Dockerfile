FROM alpine/git

LABEL "repository"="http://github.com/NathanielHill/fail-if-changes"
LABEL "homepage"="http://github.com/NathanielHill/fail-if-changes"

ADD entrypoint.sh /
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["sh", "/entrypoint.sh"]
