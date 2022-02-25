# Linear Regression
<blockquote>
  README pending update
</blockquote>

## What is Linear Regression?
Regression is predicting a continuous or real output given some inputs.  
Linear regression is mapping the relationship between the inputs and a continuous output with a straight line.    
The mapping function is known as the hypothesis.  

### **Hypothesis**  

![hypothesis](images/hypothesis.png) 

For linear regression, the hypoothesis function is the equation of a straight line.  

In the hypothesis above, there is only one input variable x.  
The parameters or weights theta, are a measure of how strongly the the inputs influence the output.  
Theta 0 is the bias term.  
These parameters are learned by the linear regression algorithm as it is being trained thorough gradient descent.

### __Gradient descent__
To understand gradient descent, we must first understand the cost function.  
Say you start with random values of theta and predict the output usinf the hypothesis function. The error between the hypothesis and the actual output is the cost or loss. A variety of loss functions are available. If we choose mean squared error as our loss function, the cost function, J becomes:  

![cost](images/cost.png)  

Gradient descent tries to minimize the cost function.  
![goal](images/goal.png)  

![costgraph](https://www.researchgate.net/publication/329920042/figure/fig1/AS:708069117939712@1545828241440/A-graph-of-a-cost-function-modified-from.png)  


![3d-cost](https://i.stack.imgur.com/Rq40j.png) 

THe cases above are ideal and the gradient descent algorithm doesnt get stuck in a local minima ( the cost function curve is smooth or convex).  

The algorithm can get stuck in local minima as shown below.  

![local-minimas](https://fromthegenesis.com/wp-content/uploads/2018/06/GDS_5.png)  

![local-minima-3d](https://d1m75rqqgidzqn.cloudfront.net/wp-data/2020/06/12190927/8.png)  

#### Gradient Descent algorithm

![goal2](images/goal2.png)  

To minimize the cost function gradient descent updates the parameters theta until the cost is at a minimum.

![algorithm](images/descent-algorithm.png)  

*__steps__*  
* Begin with random parameters
* Make a hypothesis
* Find the mean squared error between the hypothesis and the actual output.
* Divide by 2 to get the cost. This is done because minimizing the cost for half the training samples will accomplish the same as doing it for all.  
* Find the partial derivative of  the cost with respect to each of the parameters.  
  ![partial](images/partial-derivative.png)
* Multiply the derivative by the learning rate, alpha. The learning rate determines how much the parameters will change with every iteration of gradient descent.  
* Simultaneously update all the parameters.  

  ![update](images/simultaneous-update.png)  

* Repeat until cost is at a minimum.  
  ![repeat](images/until-convergence.png)  

  Notice that when j is 0 ,ie theta is the bias, the partial derivative yields a constant 1, since theta_0 is not a coefficient of an input.  

This method of gradient descent is known as batch gradient descent. Each step of gradient descent uses all the training examples.    