# Doccano

doccano is an open source text annotation tool for humans. It provides annotation features for text classification, sequence labeling and sequence to sequence tasks. So, you can create labeled data for sentiment analysis, named entity recognition, text summarization and so on. Just create a project, upload data and start annotating. You can build a dataset in hours.

## Install chart

- Add the repo to helm

```
helm repo add rsecob https://rsecob.github.io/helm-charts
```

- Install chart with helm
```
helm install --name doccano rsecob/docanno
```

## Configuration
| Parameter                          | Description                                                                                                    | Default           |
|------------------------------------|----------------------------------------------------------------------------------------------------------------|-------------------|
| replicaCount                       | Number of replicas in the deployment                                                                           | 1                |
| podAnnotations                     | Custom annotations for the pod                                                                                 | null              |
| podLabels                          | Custom labels for the pod                                                                                      | null              |
| image.repository                   | Controller container image repository                                                                          | doccano/doccano   |
| image.pullPolicy                   | Controller container image pull policy                                                                         | Always            |
| serviceAccount.enabled             | Enable or disable service account                                                                              | true              |
| serviceAccount.annotations         | Custom annotations for the service account                                                                     | null              |
| serviceAccount.name                | Custom name for service account                                                                                | null              |
| podSecurityContext                 | Definition of pod security context                                                                             | null              |
| securityContext                    | Definition of security context                                                                                 | null              |
| port                               | Service port                                                                                                   | 8000              |
| debug                              | Enable or disable debug mode                                                                                   | false             |
| allowSignUp                        | Enable or disable signup                                                                                       | false             |
| admin.email                        | Email of admin                                                                                                 | admin@example.com |
| admin.username                     | Username of admin                                                                                              | admin             |
| admin.password                     | Password of admin                                                                                              | admin             |
| admin.exisitingSecret              | Use existing secret for loading admin credentials                                                              | null              |
| admin.existingSecretUsernameKey    | Username key in existing secret                                                                                | username          |
| admin.existingSecretPaswordKey     | Password key in existing secret                                                                                | password          |
| database.type                      | Type of database to use (sqlite for ephemeral local storage) or external databases (mysql, mssql, or postgres) | sqlite            |
| database.host                      | Host of database                                                                                               | null              |
| database.port                      | Port of database                                                                                               | null              |
| database.dbname                    | Database name                                                                                                  | null              |
| databae.username                   | Username for database                                                                                          | null              |
| database.password                  | Password for database                                                                                          | null              |
| database.existingSecret            | Use existing secret for loading database credentials                                                           | null              |
| database.existingSecretUsernameKey | Username key in existing secret                                                                                | username          |
| database.existingSecretPaswordKey  | Password key in existing secret                                                                                | password          |
| service.type                       | Type of service                                                                                                | ClusterIP         |
| service.port                       | Port of service                                                                                                | port              |
| ingress.enabled                    | Enable or disable ingress policy                                                                               | false             |
| ingress.annotations                | Custom annotations for ingress                                                                                 | null              |
| ingress.hosts                      | Definition of ingress hosts                                                                                    | []                |
| ingress.tls                        | Definition of ingress tls                                                                                      | []                |
| resources                          | Resources request for pod                                                                                      | null              |
| nodeSelector                       | Node selector for pod                                                                                          | null              |
| tolerations                        | Tolerations for pod                                                                                            | []                |
| affinity                           | Affinity for pod                                                                                               | null              |