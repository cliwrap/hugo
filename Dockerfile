FROM wtanaka/alpine-37-uid
MAINTAINER http://wtanaka.com/dockerfiles
EXPOSE 1313
ENV HUGO_VERSION 0.53
ENV HUGO_BINARY hugo_${HUGO_VERSION}_linux-64bit

# Download and Install hugo
RUN mkdir /usr/local/hugo
ADD https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/${HUGO_BINARY}.tar.gz /usr/local/hugo/
RUN tar xzf /usr/local/hugo/${HUGO_BINARY}.tar.gz -C /usr/local/hugo/ \
	&& ln -s /usr/local/hugo/hugo /usr/local/bin/hugo \
	&& rm /usr/local/hugo/${HUGO_BINARY}.tar.gz
