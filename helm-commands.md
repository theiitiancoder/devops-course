
# Helm Commands Cheat Sheet

## Helm Basics

### 1. Install a Chart

```sh
helm install [release_name] [chart]
```
**Example:**
```sh
helm install my-release bitnami/nginx
```

### 2. Upgrade a Release
```sh
helm upgrade [release_name] [chart]
```
**Example:**
```sh
helm upgrade my-release bitnami/nginx
```

### 3. Rollback a Release
```sh
helm rollback [release_name] [revision]
```
**Example:**
```sh
helm rollback my-release 1
```

### 4. Uninstall a Release
```sh
helm uninstall [release_name]
```
**Example:**
```sh
helm uninstall my-release
```

## Chart Management

### 5. Create a New Chart
```sh
helm create [chart_name]
```
**Example:**
```sh
helm create mychart
```

### 6. Package a Chart
```sh
helm package [chart_path]
```
**Example:**
```sh
helm package ./mychart
```

### 7. Lint a Chart
```sh
helm lint [chart_path]
```
**Example:**
```sh
helm lint ./mychart
```

## Repository Management

### 8. Add a Repository
```sh
helm repo add [repo_name] [repo_url]
```
**Example:**
```sh
helm repo add bitnami https://charts.bitnami.com/bitnami
```

### 9. Update Repositories
```sh
helm repo update
```
**Example:**
```sh
helm repo update
```

### 10. List Repositories
```sh
helm repo list
```
**Example:**
```sh
helm repo list
```

## Release Management

### 11. List All Releases
```sh
helm list
```
**Example:**
```sh
helm list
```

### 12. Get Release Status
```sh
helm status [release_name]
```
**Example:**
```sh
helm status my-release
```

### 13. Get Release History
```sh
helm history [release_name]
```
**Example:**
```sh
helm history my-release
```

## Template and Debugging

### 14. Template a Chart
```sh
helm template [release_name] [chart]
```
**Example:**
```sh
helm template my-release bitnami/nginx
```

### 15. Debug a Release
```sh
helm get all [release_name]
```
**Example:**
```sh
helm get all my-release
```

## Customizing and Configuration

### 16. Inspect Values
```sh
helm show values [chart]
```
**Example:**
```sh
helm show values bitnami/nginx
```

### 17. Use Custom Values
```sh
helm install [release_name] [chart] -f [values_file]
```
**Example:**
```sh
helm install my-release bitnami/nginx -f custom-values.yaml
```

### 18. Set Values Inline
```sh
helm install [release_name] [chart] --set [key1=value1,key2=value2,...]
```
**Example:**
```sh
helm install my-release bitnami/nginx --set service.type=NodePort
```

## Advanced Commands

### 19. Helm Dependency Update
```sh
helm dependency update [chart_path]
```
**Example:**
```sh
helm dependency update ./mychart
```

### 20. Helm Plugin Install
```sh
helm plugin install [plugin_url]
```
**Example:**
```sh
helm plugin install https://github.com/databus23/helm-diff
```

## Other Useful Commands

### 21. Search Charts
```sh
helm search repo [keyword]
```
**Example:**
```sh
helm search repo nginx
```

### 22. Test a Release
```sh
helm test [release_name]
```
**Example:**
```sh
helm test my-release
```


