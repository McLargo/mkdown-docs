# Input data

In order to train a machine learning model, you need to provide it with input
data. Usually, data is divided into sets:

- training data: set of examples used to fit the parameters of the model.
- validation data: set used to provide an evaluation of a model fit on
  the training dataset while tuning model parameters.
- testing data: set used to provide an evaluation of a final model fit on the
  training dataset.

It is important to split the data into these three sets to ensure that the model
is able to generalize well to unseen data.

Be aware of overfitting: when a model learns the detail and noise in the
training, it can be less flexible when it comes to new data.

The data collected, even if is coming from different sources must be consistent
and in the same format. The data must be cleaned and preprocessed before
training the model. This includes removing duplicates, handling missing values,
normalizing the data, and transforming categorical variables into numerical
features (most models work better with numerical features).

## References

- [Parquet](https://parquet.apache.org/docs/).
