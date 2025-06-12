FROM     docker.io/redhat/ubi9
ARG      token
WORKDIR  /actions
RUN      useradd github && \
         curl -o actions-runner-osx-x64-2.325.0.tar.gz -L https://github.com/actions/runner/releases/download/v2.325.0/actions-runner-osx-x64-2.325.0.tar.gz && \
         tar xzf ./actions-runner-osx-x64-2.325.0.tar.gz
ENV      TOKEN=${token}
USER     github
RUN      ./config.sh --unattended --url https://github.com/cDevOps80 --token ${TOKEN} --name runner-2 --runnergroup Default --work _work --replace
CMD      ["./run.sh"]


