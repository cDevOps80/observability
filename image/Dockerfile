FROM     docker.io/redhat/ubi9
WORKDIR  /actions
RUN      useradd github && dnf install libicu -y && \
         curl -o actions-runner-linux-x64-2.325.0.tar.gz -L https://github.com/actions/runner/releases/download/v2.325.0/actions-runner-linux-x64-2.325.0.tar.gz && \
RUN      tar xzf ./actions-runner-linux-x64-2.325.0.tar.gz && rm -rf actions-runner-linux-x64-2.325.0.tar.gz
RUN      chown -R  github:github /actions
COPY     build.sh .
RUN      chmod 777 build.sh
USER     github
CMD      ["bash", "build.sh"]




