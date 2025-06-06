
# Kubernetes Security Scan

This project contains the results of a Kubernetes security scan conducted using **Kubescape**.

## Tool Used

**Kubescape** - An open-source Kubernetes security scanner.

## Setup (for reference)

A local Kubernetes cluster was set up using **Minikube**. After installation, the following command was used to scan the cluster:

```bash
kubescape scan framework nsa --format json --output results.json
```

## Output

The scan results are saved in `results.json`, which contains a list of findings categorized by:
- Resource Name
- Namespace
- Control Name (what security aspect was checked)
- Status (e.g., failed, warning)
- Severity (e.g., critical, high, medium)
- Suggested Remediation

## Example Finding (from results.json)

```json
{
    "resource": "Deployment/nginx-deployment",
    "namespace": "default",
    "control": "Privileged Container",
    "status": "failed",
    "severity": "critical",
    "remediation": "Avoid running containers with privileged access."
}
```

## Notes

This sample output demonstrates a typical report structure generated by Kubescape. It is intended for educational or illustrative purposes.
