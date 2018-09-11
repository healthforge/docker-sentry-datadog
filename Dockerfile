FROM sentry:latest

ENV OPTIONS_FILE metricsOptions.txt

# Install datadog package and set env variables
RUN set -x && pip install datadog
COPY $OPTIONS_FILE /tmp/
RUN cat /tmp/$OPTIONS_FILE >> /etc/sentry/sentry.conf.py
RUN rm /tmp/$OPTIONS_FILE