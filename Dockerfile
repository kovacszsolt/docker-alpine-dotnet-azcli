FROM mcr.microsoft.com/dotnet/aspnet:3.1-alpine
RUN \
  apk update && \
  apk add bash py-pip && \
  apk add --virtual=build gcc libffi-dev musl-dev openssl-dev python3-dev make && \
  pip --no-cache-dir install -U pip && \
  pip install azure-cli && \
  apk del --purge build