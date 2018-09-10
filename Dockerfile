FROM sentry:latest

# Install datadog package and set env variables
RUN set -x && pip install datadog
ENV SENTRY_METRICS_BACKEND="sentry.metrics.datadog.DogStatsdMetricsBackend" \
    SENTRY_METRICS_OPTIONS="{'host': '172.17.0.1', 'port':8125, 'tags':{}}"
