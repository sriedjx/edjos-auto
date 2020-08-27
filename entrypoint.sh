#!/bin/sh -l

token="$TOKEN"
context="$CONTEXT"
url="$URL"

rancher login --token $token --context $context $url
rancher $*
