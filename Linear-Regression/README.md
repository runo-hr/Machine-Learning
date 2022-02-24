# Linear Regression
<blockquote>
  README pending update
</blockquote>

## What is Linear Regression?
Regression is predicting a continuous or real output given some inputs.  
Linear regression is mapping the relationship between the inputs and a continuous output with a straight line.    
The mapping function is known as the hypothesis.  

### Hypothesis  

![hypothesis](images/hypothesis.png) 

For linear regression, the hypoothesis function is the equation of a straight line.  

In the hypothesis above, there is only one input variable x.  
The parameters theta are a measure of how strongly the the inputs influence the output.  
Theta 0 is the bias term.  
These parameters are learned by the linear regression algorithm as it is being trained thorough gradient descent.

### Gradient descent
To understand gradient descent, we must first understand the cost function.  
Say you start with random values of theta and predict the output usinf the hypothesis function. The error between the hypothesis and the actual output is the cost or loss. A variety of loss functions are available. If we choose mean squared error as our loss function, the cost function, J becomes:  

![cost](images/cost.png)  

Gradient descent tries to minimize the cost function.  
![goal](images/goal.png)  

![cost-graph](https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.researchgate.net%2Ffigure%2FA-graph-of-a-cost-function-modified-from_fig1_329920042&psig=AOvVaw3BFKDEdBH5VSlP6y-DLSZ7&ust=1645817290752000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCIi2yKmJmfYCFQAAAAAdAAAAABAD) 