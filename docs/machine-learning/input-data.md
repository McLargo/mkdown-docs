# Input data

In order to train a machine learning model, you need to provide it with input
data. Usually, data is divided into sets:

- training data: set of examples used to fit the parameters of the model.
- validation data: set used to provide an evaluation of a model fit on
  the training dataset while tuning model parameters.
- testing data: set used to provide an evaluation of a final model fit on the
  training dataset.

Be aware of overfitting: when a model learns the detail and noise in the
training, it can be less flexible when it comes to new data.

## References

- [Parquet](https://parquet.apache.org/docs/).
