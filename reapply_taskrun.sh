#!/usr/bin/env bash

set -e

kubectl delete -f buildyaml/task.yaml;
kubectl apply -f buildyaml/task.yaml;
kubectl delete -f buildyaml/resources.yaml;
kubectl apply -f buildyaml/resources.yaml;
kubectl delete -f buildyaml/taskrun.yaml;
kubectl apply -f buildyaml/taskrun.yaml;

kubectl get pods -w

