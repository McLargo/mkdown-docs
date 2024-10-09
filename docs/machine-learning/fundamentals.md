# Machine Learning

Machine learning is a field of computer science that uses statistical techniques
to give computer systems the ability to "learn" (e.g., progressively improve
performance on a specific task) with data, without being explicitly programmed.
In other words, an algorithm that uses data from past observations to predict
unknown outcomes or values.

A machine learning model is a mathematical model is a software application that
encapsulates a function to calculate an output value based on one or more input
values. The process of defining that function is known as **training**. After
the function has been defined, you can use it to predict new values in a process
called **inferencing**.

## Process

1. [Training data](../machine-learning/input-data.md): Consists of a set data
   from past observations. It includes the observed attributes or **features**
   (*x*) and the known values or **labels** (*y*).
2. An algorithm is applied to the data to determine the relationship between the
  features and the labels.
3. The result of the algorithm is a **model** that can be used to predict new
   values (*y = f(x)*). This process of training a model involves multiple
   iterations in which you use an appropriate algorithm to train a model,
   evaluate the model's predictive performance, and refine the model by
   repeating the training process with different algorithms and parameters until
   you achieve an acceptable level of predictive accuracy.
4. Training phase is now complete, so, the trained model can be used to predict
   new values in a process called **inferencing**. As the output of the model is
   a prediction, it is not guaranteed to be correct. It can be represented as a
   *ŷ*. You can compare the known labels in the validation dataset to the labels
   that the model predicted. Then aggregate the differences between the
   predicted and actual label values to calculate a metric that indicates how
   accurately the model predicted for the validation data.

## Supervised Learning

Is a type of machine learning where the model is trained on a labeled dataset,
we know the correct output for each example in the training dataset. The model
learns to map the input to the output. Depending on the type of output,
supervised learning can be divided into:

### Regression

The output return by the model is a numeric value.
You can apply linear regression as the algorithm to train the model, which works
by deriving a function that produces a straight line through the intersections
of the x and y values while minimizing the average distance between the line and
the plotted points.

You can create a visual representation of the linear regression model to see how
well the model fits the data. The line that the model generates is called the
regression line. The distance between the regression line and the actual data
points is called the residuals. The goal of linear regression is to minimize the
residuals. The smaller the residuals, the better the model fits the data.

But how good is the model? You can evaluate the model's performance by using the
validation dataset and compare the predicted values (*ŷ*) with the actual values
(*y*). You can plot the predicted values against the actual values to see how
well the model fits the data. And also, evaluate the model's efficiency with
metrics like:

- Mean Absolute Error (MAE): The *average* of the absolute errors between the
  predicted and actual values.
- Mean Squared Error (MSE): The *average* of the squared errors between the
  predicted and actual values.
- Root Mean Squared Error (RMSE): The *square root* of the average of the
  squared errors between the predicted and actual values.
- Coefficient of Determination (R²): The proportion of the variance in the
  validation results (R² = 1- ∑(y-ŷ)² ÷ ∑(y-ȳ)²). Value between 0 and 1. The
  close value is to 1, the better the model is fitting the validation data.

### Binary classification

The output is a binary value (true/false). The algorithm calculate the
*probability* for class assignment (true/false).

To train the model, there are many algorithms to use. One of the most common is
*logistic regression*, which derives a sigmoid function that maps the input
values to a probability value between 0 and 1. The sigmoid function is a
mathematical function that produces an S-shaped curve.

When representing the sigmoid function, the x-axis represents the input values,
and the y-axis represents the probability values. The sigmoid function produces
a curve that starts at 0 when x is negative infinity and ends at 1 when x is
positive infinity. The curve is steepest at x = 0, where the probability is 0.5.
The diagram includes an horizontal line to indicate the threshold value that
separates the two classes. For any values at this point or above, the model will
predict true (1); while for any values below this point it will predict false
(0).

To evaluate the model, you can use the validation dataset to compare the
predicted values with the actual values. Usually, by creating a matrix called
*confusion matrix* that shows the number of true positives, true negatives,
false positives, and false negatives.

ŷ=0 and y=0: True negatives (TN)
ŷ=1 and y=0: False positives (FP)
ŷ=0 and y=1: False negatives (FN)
ŷ=1 and y=1: True positives (TP)

With this matrix, you can calculate metrics like:

- Accuracy: The proportion of correct predictions to the total number of
  predictions: (TN+TP) ÷ (TN+FN+FP+TP).
- Recall: The proportion of true positives to the total number of actual
  positives: TP ÷ (TP+FN). Also call true positive rate (TPR).
- False positive rate (FPR): contrary as above metric. It is calculated as FP
  ÷(FP+TN).
- Precision: The proportion of true positives to the total number of predicted:
  TP ÷ (TP+FP).
- F1 score: The harmonic mean of precision and recall: 2 × (Precision × Recall)
  ÷ (Precision + Recall).
- Area Under the Curve (AUC): The area under the curve of the Receiver Operating
  Characteristic (ROC) curve. The ROC curve is a graphical representation of the
  true positive rate (sensitivity) against the false positive rate
  (1-specificity), comparing the model's performance at different **threshold**.
  The ROC curve for a perfect model would go straight up the TPR axis on the
  left and then across the FPR axis at the top.

### Multi-class classification

The output predicted is a value from a set of possible values. It follows the
same process as binary classification, but the output is a value from a set of
possible values.

To train a model for multi-class classification, you can use an algorithm to fit
the training data to a function that calculates a probability value for each
possible class. There are two kinds of algorithm you can use to do this:

- One-vs-Rest (OvR) algorithms: trains a function for each class, predicting the
  probability of that class against all the other classes. Each algorithm
  produces a sigmoid function that maps the input values to a probability value
  between 0 and 1. And the model trained using this algorithm will predict the
  output class with the highest probability.

- Multinomial algorithms: creates a single functions that returns a multi-class
  probability distribution. The output of the model is a vector of probabilities
  that contains the probability distribution for all classes.

No matter the algorithm you choose, the the model returns the most probable class.

You can evaluate the model's performance by using similar metrics as binary
classification, but you can use a confusion matrix with more rows and columns
(one for each class).

Same metrics as binary classification can be used to evaluate the model's. You
can calculate the accuracy, recall, precision, F1 score, and AUC for each class.
Additionally, you can calculate the overall values for the entire table.

## Unsupervised Learning

Is a type of machine learning where the model is trained on an **unlabeled
dataset**. The model learns to identify patterns in the data and group similar
data together. Clustering is a common unsupervised learning technique that
groups similar data into discrete clusters.

One algorithm you can use to train a model for clustering is the *K-means*,
consisting in the following steps:

- The feature x values are vectors in a n-dimensional space, where n is the
  number of features.
- Define the number of clusters (k) you want to group. Then, k points are
  randomly selected as the center of the cluster, as the initial centroids.
- Each point is assigned to the nearest centroid, creating k clusters.
- Each centroid is recalculated as the mean of all the points in the cluster.
- After the centroids are recalculated, the points are reassigned to the nearest
  centroid.
- The process is repeated until the centroids no longer change, or the maximum
  number of iterations is reached.

Since there is no labeled data, you can't evaluate the model's performance using
the same metrics as supervised learning. Instead, you can use the following
metrics:

- Average distance to cluster center: on average, how close is each point in the
  cluster is to the centroid of the cluster.
- Average distance to other center: on average, how close is each point in the
  cluster is to the centroid of all other clusters.
- Maximum distance to cluster center: the furthest distance between a point in
  the cluster and its centroid.
- Silhouette: A value between -1 and 1 that summarizes the ratio of distance
  between points in the same cluster and points in different clusters (The
  closer to 1, the better the cluster separation).

## References

- [Machine Learning Fundamentals](https://learn.microsoft.com/en-us/training/modules/fundamentals-machine-learning/)
