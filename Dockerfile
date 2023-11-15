FROM alpine

RUN apk add gnupg perl wget fontconfig --no-cache && \
wget -qO- "https://yihui.name/gh/tinytex/tools/install-unx.sh" | /bin/sh

ENV PATH="${PATH}:/root/bin"
RUN tlmgr install preprint titlesec marvosym enumitem hyperref fancyhdr babel

WORKDIR /data
VOLUME ["/data"]
