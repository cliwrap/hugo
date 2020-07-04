FROM cliwrap/alpine-37
MAINTAINER http://wtanaka.com/dockerfiles
EXPOSE 1313
ENV HUGO_VERSION 0.63.2
ENV HUGO_BINARY hugo_extended_${HUGO_VERSION}_linux-64bit
ENV HUGO_DONWLOAD_LOCATION /usr/local/hugo/hugo-bin.tar.gz

# Download and Install hugo
# git is to support https://gohugo.io/variables/git/
RUN apk add --no-cache \
    git \
    libc6-compat \
    libstdc++
RUN mkdir /usr/local/hugo
ADD https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/${HUGO_BINARY}.tar.gz ${HUGO_DONWLOAD_LOCATION}
RUN tar xzf ${HUGO_DONWLOAD_LOCATION} -C /usr/local/hugo/ \
	&& ln -s /usr/local/hugo/hugo /usr/local/bin/hugo \
	&& rm ${HUGO_DONWLOAD_LOCATION}
