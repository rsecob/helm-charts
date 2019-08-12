# Metatron Single Helm
Helm charts for a single node of Metatron Discovery

# Installation
- Add the repo to helm
```
helm repo add rsecob https://rsecob.github.io/helm-charts
```

- Install the chart
```
helm install --name metatron-single rsecob/metatron-single
```

# Improvements
This was created over 24 hours to be able to deploy a single node of metatron discovery. There is room for improvements. Contributions are welcolmed.
- Ingress
- Deep storage set up (Mysql)
- Scalability
- Ingestion loader over SSH
- More customization in general

