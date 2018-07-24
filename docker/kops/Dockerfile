FROM alpine
ARG KOPS_VERSION
ENV kops_version=$KOPS_VERSION
RUN apk --no-cache add curl python
RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
RUN chmod +x kubectl
RUN mv kubectl /usr/local/bin/kubectl
RUN curl -L -o kops https://github.com/kubernetes/kops/releases/download/${kops_version}/kops-linux-amd64
RUN chmod +x kops
RUN mv kops /usr/local/bin/kops
RUN curl -O https://bootstrap.pypa.io/get-pip.py
RUN python get-pip.py
RUN pip install awscli --upgrade 