# encoding: UTF-8

FROM = bluebeluga/alpine
REGISTRY = docker.io
REPOSITORY = bluebeluga/mkdocs

PUSH_REGISTRIES = $(REGISTRY)

export SIGIL_VERSION=0.4.0
export SIGIL_SHA256=c503bc15fba88d08fe7ba350fc02e61c4757d13f349f56cf5b7977f8139d5843
