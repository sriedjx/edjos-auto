#!/bin/sh -l

token="$TOKEN"
context="$CONTEXT"
url="#URL"

rancher login $URL --token $TOKEN --context $CONTEXT
rancher kubectl $*
