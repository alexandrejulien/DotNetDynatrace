# Dynatrace OneAgent Stage
ARG DYNATRACE_ENVIRONMENT_ID
ARG DYNATRACE_ENVIRONMENT_URL=${DYNATRACE_ENVIRONMENT_ID}.live.dynatrace.com/linux/oneagent-codemodules:dotnet
FROM ${DYNATRACE_ENVIRONMENT_URL} AS oneagent
ENV LD_PRELOAD /opt/dynatrace/oneagent/agent/lib64/liboneagentproc.so

# Official Microsoft ASPNET Core Runtime Stage
FROM mcr.microsoft.com/dotnet/aspnet:6.0 AS dotnet
WORKDIR /app
VOLUME [/data]

# Final stage
FROM dotnet as final
COPY --from=oneagent  / /
