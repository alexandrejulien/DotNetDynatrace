<h1 align="center">DotnetDynatrace</h1>
<h2 align="center"> ASP.NET Core | Dynatrace OneAgent container</h2>

The purpose of this repository is to include Dynatrace One Agent APM in a ASP.NET Core container.

This is not a image container because of self registry Dynatrace dependency but you can build you own with this template.

## Build-with
- Asp.Net Core Runtime (from Microsoft)
- Dynatrace OneAgent (from Dynatrace)

## Dynatrace OneAgent Stage
Dynatrace is APM solution. This container cannot build directly because you have to pull your Dynatrace OneAgent from your own Dynatrace Environment.

**You must fill the environment ID in docker args and use "docker login" on your own instance and build, you cannot use directly this container image**

[This article explains the multi-stage solution from Dynatrace](https://www.dynatrace.com/support/help/setup-and-configuration/setup-on-container-platforms/docker/set-up-oneagent-on-containers-for-application-only-monitoring#tabgroup--uninstall--docker-multi-stage-image-builds)

## Usage

```cmd
docker build . --build-arg DYNATRACE_ENVIRONMENT_ID=XXXXX
```
## Copyright and license

Code and documentation copyright 2022 the authors. Code released under the [MIT License].
