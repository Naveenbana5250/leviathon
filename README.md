# Leviathan – Defense Team Phase 1
![CI](https://github.com/Naveenbana5250/leviathon/actions/workflows/build-sign-push.yml/badge.svg)

Kyverno enforced (6 guardrails) and Cosign trust in-cluster. CI builds/pushes/signs; Docker Hub auth/sign fix in progress.

## Contents
- policies/phase1-policies.yaml
- policies/verify-images.yaml
- policies/test-pods.yaml
- policies/dnscheck.yaml
- .github/workflows/build-sign-push.yml

## Quick test
kubectl apply -f policies/phase1-policies.yaml
kubectl apply -f policies/test-pods.yaml

## Run CI
Use Actions → “Build, Push & Sign Docker Image”. After success, deploy:
kubectl run good-ci --image=docker.io/${DOCKER_USER}/myapp@<DIGEST> --limits=cpu=200m,memory=256Mi --requests=cpu=100m,memory=128Mi
