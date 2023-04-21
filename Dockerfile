FROM ghcr.io/runatlantis/atlantis:dev-alpine-d88857b
LABEL maintainer="Wongue Kim <wkim@axon.com>"

ARG terraform_version="1.2.6"
ARG terragrunt_version="v0.38.6"

# copy a terraform binary of the version you need
RUN terraform --version

#
#RUN tfenv install ${terraform_version} \
#    && tfenv use ${terraform_version} \
#    && chmod -R 0777 /opt/tfenv

####################
# Terragrunt
####################
RUN wget -nv https://github.com/gruntwork-io/terragrunt/releases/download/${terragrunt_version}/terragrunt_linux_amd64 -O /usr/local/bin/terragrunt \
  && chmod +x /usr/local/bin/terragrunt
