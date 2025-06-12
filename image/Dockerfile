FROM     docker.io/redhat/ubi9
ARG      token
WORKDIR  /actions
RUN      useradd github && dnf install libicu -y
RUN      curl -o actions-runner-linux-x64-2.325.0.tar.gz -L https://github.com/actions/runner/releases/download/v2.325.0/actions-runner-linux-x64-2.325.0.tar.gz
RUN      tar xzf ./actions-runner-linux-x64-2.325.0.tar.gz
RUN      chmod 777 /actions
ENV      TOKEN=${token}
USER     github
RUN      ./config.sh --unattended --url https://github.com/cDevOps80 --token ${TOKEN} --name runner-2 --runnergroup Default --work _work --replace
CMD      ["./run.sh"]


