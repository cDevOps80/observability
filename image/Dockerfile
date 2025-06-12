FROM     docker.io/redhat/ubi9
WORKDIR  /actions
ENV      TOKEN=
ENV      NAME=
RUN      useradd github && dnf install libicu -y
RUN      curl -o actions-runner-linux-x64-2.325.0.tar.gz -L https://github.com/actions/runner/releases/download/v2.325.0/actions-runner-linux-x64-2.325.0.tar.gz
RUN      tar xzf ./actions-runner-linux-x64-2.325.0.tar.gz
COPY     build.sh .
RUN      chmod -R  github:github /actions
USER     github
CMD      ["./build.sh"]




