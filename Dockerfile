ARG BUILD_FROM
# hadolint ignore=DL3003
FROM $BUILD_FROM

# Set shell
#SHELL ["/bin/bash", "-o", "pipefail", "-c"]

# Setup base
# hadolint ignore=DL3003

RUN apk add --no-cache --virtual .build-dependencies \
      build-base \
	  cmake \
      git \
	  glib
	  
RUN apk add --no-cache \
	  python3 \
	  python3-dev \
      protobuf-dev \
	  pulseaudio \
      pulseaudio-dev \
	  alsa-lib \
	  alsa-plugins-pulse \
	  alsa-lib-dev \
	  py3-pip \
	  py3-dbus \
	  py3-gobject3 \
	  py3-musicbrainzngs \
	  py3-websocket-client \
	  py3-requests \
	  mpd \
	  snapcast \
	  librespot --repository https://dl-cdn.alpinelinux.org/alpine/edge/testing/
	  
RUN apk del --no-cache --purge .build-dependencies \
	  cmake \
	  python3-dev \
    && rm -fr \
        /tmp/* \
        /usr/.crates.toml \
        /usr/.crates2.json

ENTRYPOINT [ "/init" ]
CMD []
COPY root /

# Build arguments
ARG BUILD_ARCH
ARG BUILD_DATE
ARG BUILD_DESCRIPTION
ARG BUILD_NAME
ARG BUILD_REF
ARG BUILD_REPOSITORY
ARG BUILD_VERSION

# Labels
LABEL \
    io.hass.name="${BUILD_NAME}" \
    io.hass.description="${BUILD_DESCRIPTION}" \
    io.hass.arch="${BUILD_ARCH}" \
    io.hass.type="addon" \
    io.hass.version=${BUILD_VERSION} \
    maintainer="Franck Nijhof <frenck@addons.community>" \
    org.opencontainers.image.title="${BUILD_NAME}" \
    org.opencontainers.image.description="${BUILD_DESCRIPTION}" \
    org.opencontainers.image.vendor="Home Assistant Community Add-ons" \
    org.opencontainers.image.authors="Franck Nijhof <frenck@addons.community>" \
    org.opencontainers.image.licenses="MIT" \
    org.opencontainers.image.url="https://addons.community" \
    org.opencontainers.image.source="https://github.com/${BUILD_REPOSITORY}" \
    org.opencontainers.image.documentation="https://github.com/${BUILD_REPOSITORY}/blob/main/README.md" \
    org.opencontainers.image.created=${BUILD_DATE} \
    org.opencontainers.image.revision=${BUILD_REF} \
    org.opencontainers.image.version=${BUILD_VERSION}

