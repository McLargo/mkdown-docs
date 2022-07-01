# Serverless Computing

Instead of run our application in our servers, this approach is focus on let others run (and charge depending on how many resource are used) our code.

Servers are hard to maintain, needs to be up-to-date, always up and running. Serverless is less headache. We can forget about security, upgrade, scalability...

Some providers of **Functions as a Service (FaaS)** are AWS, Google and Azure. They can handle out of the box most of the events, including http requests, database events, queuing services, monitoring alerts, file uploads, scheduled events, cronjobs...

It is based on a microservice architecture, not monolith. There is no context shared among them.

Cold start is the bigger cons. As the cointainer is brought up alive when there is a request, there may be some latency between request and execution.

Today, this time has improved a lot. It depends on language, size of the function...

## References

- [Serveless](https://serverless-stack.com/chapters/what-is-serverless.html)
