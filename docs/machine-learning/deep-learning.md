# Deep Learning

Deep learning is an advance machine learning technique that emulates the way the
human brain learns. The key is to create an artificial neural network, which is
a mathematical model that is inspired by the structure and function of
biological neural networks.

## Neural Networks

Are make of several layers of interconnected nodes, called neurons. As other
machine learning models, neural networks are trained on a set of data to learn
the relationship between the input data and the output and predict new values.
Each layer of the network is made of nodes that are connected to the nodes in
the previous layer. The first layer is called the **input layer**, the last
layer is called the **output layer**, and the layers in between are called
**hidden layers**.

## Training a Neural Network

The algorithm used to train the model involves iteratively feeding the feature
values *x* in the training data forward through the layers to calculate output
values for *ŷ*, validating the model to evaluate how far off the calculated *ŷ*
values are from the known y values (which quantifies the level of error, or
loss, in the model), and then modifying the weights (*w*) to reduce the loss.

The process for inferencing a predicted class using this network is:

- The feature vector observation is fed into the input layer of the neural
  network, which consists of a neuron for each x value.
- The functions for the first layer of neurons each calculate a weighted sum by
  combining the *x* value and *w* weight, and pass it to an activation function
  that determines if it meets the threshold to be passed on to the next layer.
- Each neuron in a layer is connected to all of the neurons in the next layer
  and the results of each layer are fed forward through the network until they
  reach the output layer.
- The output layer produces a vector of values; in this case, using a softmax or
  similar function to calculate the probability distribution for the classes.
  The model predicts the value with the highest probability.

## How does a Neural Network Learn?

Weights are the key to the learning process in a neural network. Initially,
weights are assigned randomly. During training, the model learns the weights
that will result in the most accurate predictions. A loss function is used to
compare the predicted output with the actual output (loss is the absolute
difference between the predicted and actual values).

With an optimization algorithm, it evaluates the influence of the weights on the
loss, and adjusted the weights (up or down) to minimize the error between the
predicted output and the actual output. The process of adjusting the weights is
called **backpropagation**, replacing the previous weights with the new ones.
The process is repeat until the loss is minimized and the model predicts the
output with the highest accuracy.
