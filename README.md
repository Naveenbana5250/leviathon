# Leviathan – Defense Team Phase 1

Kyverno deployed via Helm; six guardrail policies enforced.
Unsigned images blocked for docker.io/naveenbana5250/* via Cosign public key in cluster.
CI (build→push→sign) implemented; fixing Docker Hub auth/sign to complete.

Repo contents:
- policies/phase1-policies.yaml
- policies/verify-images.yaml
- policies/test-pods.yaml
- policies/dnscheck.yaml
- .github/workflows/build-sign-push.yml

Test:
kubectl apply -f policies/phase1-policies.yaml
kubectl apply -f policies/test-pods.yaml
