# Helm

## Helm charts

Each object requires a custom yaml configuration file.
Helm charts provides an abstractions of the objects to deploy.
Objects are different and it is like a puzzle. It needs to fit communication/labels/namespaces...
It provides a `values.yaml` with default stuff required.
Also templates to a more complex logic.
All this parametrization is embembed in the configuration files, creating new templates.
This values can be reuse in each object.yaml file. Maximizing reusability and reducing error-prone


## Reference

- [Helm best practices](https://helm.sh/docs/chart_best_practices/)
- [Helm dashboard](https://github.com/komodorio/helm-dashboard)
- [Helm 101](https://kube.academy/courses/helm-101)