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

## Local k8s cluster

minikube quickly sets up a local Kubernetes cluster on macOS, Linux, and Windows. Easy to install and start working.

Install and run minikube to have a local cluster for k8s in local. If minikube is running, automatically context/namespace is updated to use then one's from minikube. If you are working with other k8s cluster, keep in mind this change. Always doble-check for namespace or context before deploying to the cluster. To work with cluster outside local, either you stop minikube or change namespace. Careful, when you stop minikube, context/namespace are set to null, so your kube commands won't be pointing to any context. You need to explicitly set again context.

`minikube` command is just a proxy of `kubectl` commands, with a different command format but doing the same underneath.

## Helm charts

Each object requires a custom yaml configuration file.
Helm charts provides an abstractions of the objects to deploy.
Objects are different and it is like a puzzle. It needs to fit communication/labels/namespaces...
It provides a `values.yaml` with default stuff required.
Also templates to a more complex logic.
All this parametrization is embembed in the configuration files, creating new templates.
This values can be reuse in each object.yaml file. Maximizing reusability and reducing error-prone

## Readiness and liveness, startup probes

Kubernetes simply observes the pod's lifecycle and starts to route traffic to
the pod when the containers move from the Pending to Succeeded state. That
means, Kubernetes mark a pod as healthy and ready to get request as soon as this
happens. But application may receive traffic before is actually ready, because
it needs to make database connection or load some data. There is a gap between
when the app is ready and when Kubernetes thinks is ready. Risk of receive
traffic and return 500 errors. Similar case happens when Kubelet watches for
application crashes and restarts the pod to recover.

3 different probes:

- Readiness probes are used to let kubelet know when the application is ready to
  accept new traffic. It runs during the pod's entire lifecycle, to deal when
  the application is temporarily unavailable (wait for it to recover).
- Liveness probe, determines the health, and kills the pod if it fails the
  liveness check (deadlock situation, since the underlying process continues to
  run from Kubernetes's perspective).
- Startup probes are similar to readiness probes but only executed at startup.
  They are optimized for slow starting containers or applications with
  unpredictable initialization processes.

## References

- [k9s commands](https://gist.github.com/McLargo/ae633d1ff481c20c21433074169d283c#file-k9s-md)
- [minikube handbook](https://minikube.sigs.k8s.io/docs/handbook/)
- [minikube/kubectl commands](https://gist.github.com/McLargo/ae633d1ff481c20c21433074169d283c#file-minikube-md)
- [kubernetes probes](https://blog.devgenius.io/understanding-kubernetes-probes-5daaff67599a)
- [liveness probes tips](https://srcco.de/posts/kubernetes-liveness-probes-are-dangerous.html)
