FROM     docker.io/redhat/ubi9
WORKDIR  /actions
RUN      useradd github && dnf install libicu -y && \
         curl -o actions-runner-linux-x64-2.325.0.tar.gz -L https://github.com/actions/runner/releases/download/v2.325.0/actions-runner-linux-x64-2.325.0.tar.gz && \
         tar xzf ./actions-runner-linux-x64-2.325.0.tar.gz && rm -rf actions-runner-linux-x64-2.325.0.tar.gz
RUn      curl -L -o /etc/yum.repos.d/hashi.repo https://rpm.releases.hashicorp.com/RHEL/hashicorp.repo && \
         dnf install terraform -y
RUN      chown -R  github:github /actions
COPY     build.sh .
RUN      chmod 777 build.sh
USER     github
CMD      ["bash", "build.sh"]




