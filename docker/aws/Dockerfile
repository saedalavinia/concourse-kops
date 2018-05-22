FROM alpine
RUN apk -v --update --no-cache add \ 
        curl  \
        python \
        && \
    curl -O https://bootstrap.pypa.io/get-pip.py && \
    python get-pip.py && \
    pip install awscli --upgrade && rm get-pip.py && \
    apk -v --purge del curl && \
    rm /var/cache/apk/*
ENTRYPOINT ["aws"]