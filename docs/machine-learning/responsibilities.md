# MLE Responsibilities

The responsibilities of a machine learning engineer (MLE) can vary depending on
the organization and the specific role. See below a list of the most frequent
responsibilities of a MLE.

## Data collection

The data collection is the first step in the machine learning process. Where and
how is the data coming from, how is it collected, and how is it stored.

It is important to understand the data, the raw material. First phase is to
analyze the data, confirm data is heterogeneous, diverse and with quality.

The data can come from many different sources, such as databases, APIs, or
events.

## Data preprocessing

Cleaning, transforming, and preparing the data for training the model.
Optimizing the data for the model, by removing duplicates, handling missing
values, coherence and normalize the data.

Registry how the data is cleaned and transformed, so that it can be reproduced
and used in the future. This can include things like data validation,
transformation...

Dataset versioning is important, to keep track of the different versions of the
data and how they are used in the model. Tools like MLFlow can help with this.

## Feature engineering

Select the features that are going to be used in the model. It is the process of
using domain knowledge to extract features from the data. This can involve
selecting, modifying, or creating new features that will help the model learn
better.

Things like the importance of the features, how they are going to be used in the
model, defining the weights of the features when making the inference.

Also, categorizing the data, so that the model can process it correctly (models
works better with numbers rather than strings).

Again, registry and versioning the features is vital that are going to be used
by the model, so that they can be reproduced and used in the future.

hyperparameters are parameters set before the training process begins and are
not learned from the data.

## Model training

Same logic that applies to the training has to be applied to the inference in
production. It must be the same distribution of data.

Classic models are deterministic. The model is not going to work the same way if
the data is not the same.

Other models are probabilistic, like neural networks. The model is going to
work the same way, but the predictions are going to be different.

A model cannot do predictions of what it has not seen.

Some models/algorithms are:

- decision trees
- random forest
- linear regression
- [neural networks](algorithms.md#two-tower-neural-networks)

More common frameworks for training the models are:

- scikit-learn
- tensorflow
- pytorch

## Model evaluation

Evaluate the model to see how well it is performing. This can include metrics
and other things like:

- accuracy
- precision
- recall
- F1 score
- auc
- confusion matrix

The interpretability on ML models is the ability to understand how a complex
model takes their decisions.

- LIME: Local Interpretable Model-Agnostic Explanations is a technique that provides
  explanations at the individual level about the predictions of any machine
  learning classifier, helping to understand which features influence a specific
  prediction.
- SHAP: SHapley Additive exPlanations is a unified approach to explain the
  output of any machine learning model. It connects game theory with local
  explanations, providing a way to understand the contribution of each feature
  to the final prediction.

## Production/model deployment

Not only the model, but the whole process of deploying the solution in
production. How the inference is going to be done, where the model is going to
be stored, how to registry the inference, how is exposed the model (api,
events...)

Model packaging is the process of taking the trained model and preparing it for
deployment. Some common formats for model packaging include:

- pickle (is just a serialization format, it doesn't have to be a model only, it
  can be anything.)
- onnx
- torchscript

Inference is the process of using the trained model to make predictions on new
data. This can be done in real-time or in batch mode, depending on the
requirements of the application. Registry each inference, so it can be measured
and evaluated. This can include things like logging the input data, the
predictions, and the performance of the model.

Again, versioning is important, to keep track of the different versions of the
model and how they are used in the application. Some common tools for model
versioning are: MLFlow, BentoML, TorchServe...

There are different ways to deploy the model:

- [blue/green](../devops/deployment-strategies.md#blue-green-deployment)
- [canary](../devops/deployment-strategies.md#canary-deployment)
- shadow deployment: both models are deployed in production, but results are not
  exposed to users, just to get and analyze metrics.
- [A/B testing](../devops/deployment-strategies.md#ab-testing)

### Feedback loop

Feedback loop is the way to improve the model in production, with new data. It
is the process to evaluate the model, seeing if the predictions are correct or
not.

THe retraining/feedback loop can be done in different ways:

- online
- batch
- incremental

## Observability

As we discussed in the previous sections, registry is key to be able to evaluate
the model. With all the monitoring and observability, we can see how the model is
performing in production.

Over the time, models can degrade, and the performance can be affected. This is
important to monitor, so that we can take action and retrain the model if
necessary.

With the registry predictions of the model yo are able to evaluate the model at
any time and prevent model drift.

- data drift: when the input data changes or the distribution of the data
  changes.
- concept drift: when it is a change between the input and output data.
- model drift: degradation of the model over time.
- covariate shift: when properties of the input data change between the training
  and testing phases of a model.

Having this in mind, add alerts, dashboards, and other tools to monitor the
model in production to prevent this from happening.

## References

[Machine learning community](https://huggingface.co/)
