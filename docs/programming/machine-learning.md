# Machine Learning

Machine learning is a field of computer science that uses statistical techniques
to give computer systems the ability to "learn" (e.g., progressively improve
performance on a specific task) with data, without being explicitly programmed.

## Input data

In order to train a machine learning model, you need to provide it with input
data. Usually, data is divided into sets:

- training data: set of examples used to fit the parameters of the model.
- validation data: set used to provide an evaluation of a model fit on
  the training dataset while tuning model parameters.
- testing data: set used to provide an evaluation of a final model fit on the
  training dataset.

Be aware of overfitting: when a model learns the detail and noise in the
training, it can be less flexible when it comes to new data.

A popular file format to store input data is
[Parquet](https://parquet.apache.org/docs/).

## Algorithms

### Two Tower Neural Networks

Two Tower Neural Networks are a type of neural network architecture that
generates embedding vectors for the user and for all the content to
retrieve/rank. An embedding vector contains the attributes and relationships of
an item.

With this architecture, called "Two Tower" because it has two separate towers:
one for the user and one for the content. With both embedding vectors in place
(user vector and content vector) the model can predict the probability the user
will engage with the content.

This system can be put in place outside regular business hours, and the results
can be cached, making the inference extremely efficient.

### Collaborative Filtering

Collaborative filtering is a technique used by recommender systems to make
predictions about the interests of a user by collecting preferences from many
users (collaborating). The underlying assumption is that if a user A has the
same opinion as a user B on an issue, A is more likely to have B's opinion on a
different issue than that of a randomly chosen user.

## References

- [Vector Embedding](https://www.pinecone.io/learn/vector-embeddings/)
- [Collaborative Filtering](https://developers.google.com/machine-learning/recommendation/collaborative/basics)
