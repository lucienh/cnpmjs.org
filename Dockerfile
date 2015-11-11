# cnpmjs Dockerfile
# Pull base image.
FROM java

ENV NODE_PKG_NAME node-v4.2.2-linux-x64

COPY . /opt/cnpmjs/

# Install node.
RUN \
  cd /opt/cnpmjs/soft/ && \
  gzip -d $NODE_PKG_NAME.tar.gz && \
  tar xvf $NODE_PKG_NAME.tar && \
  rm -f $NODE_PKG_NAME.tar* && \
  mv $NODE_PKG_NAME /opt/node

#RUN apt-get update && apt-get install -y nodejs

ENV NODE_HOME /opt/node
ENV PATH $NODE_HOME/bin:$PATH

# Define working directory.
WORKDIR /opt/cnpmjs

# Define default command.
CMD ["node","--harmony","dispatch.js"]

# Expose ports.
#   - 7001: registry
#   - 7002: web
EXPOSE 7001 7002
