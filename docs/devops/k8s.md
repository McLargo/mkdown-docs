# Kubernetes

It is a high-disponiblity platform. It support different application available to be consume

Instead of monolithic application, microservices oriented.

1 Pod -> 1 or more docker container -> 1 image -> 1 service

If a pod dies, controller (object) automatically enable another with configuration expected.

Main concept is objects. It can be of several types.

Master-node, it has the control .
Quorum, master-node must be a odd number of instances.
Cluster between master/worker nodes

Service - > deployment -> replicaset -> POD

Service can be:
- cluster IP (DNS)
- load balancer
- node ports

Ingress, it is like a callback.
Storage or persistent

Other concepts:
- label
- memory
- cpu
- rback
-namespaces

## Helm charts

Each object requires a custom yaml configuration file.
Helm charts provides an abstractions of the objects to deploy.
Objects are different and it is like a puzzle. It needs to fit communication/labels/namespaces...
It provides a `values.yaml` with default stuff required.
Also templates to a more complex logic.
All this parametrization is embembed in the configuration files, creating new templates.
This values can be reuse in each object.yaml file. Maximizing reusability and reducing error-prone

## References

- [k9s commands](https://gist.github.com/McLargo/87380a47a148f6b4c2964db96e876e8e)
