# Pul base image.
FROM alpine-3.15-v4

# Install xterm.
RUN add-pkg xterm

# Copy the start script.
# COPY startapp.sh /startapp.sh

# Set the name of the application.
RUN set-cont-env APP_NAME "Xterm"

CMD ["/usr/bin/xterm"]