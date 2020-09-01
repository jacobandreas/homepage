<h2>Adversarial examples</h2>

So far we've been using gradient descent to modify model <i>parameters</i> to
increase accuracy. But we can also use gradient descent to modify model
<i>inputs</i>&mdash;for example, to answer questions like "what would I have to
change about this input to obtain a different classifier output?"

Here's an extremely simple example. Suppose we take two inputs from section 1
and assign them labels:

<pre>
xA = np.array([[1, 0, 1, 0, 0, 0]]).T
yA = 0

xB = np.array([[0, 1, 0, 1, 0, 0]]).T
yB = 1
</pre>

We train a logistic regression model on this dataset, and obtain the
following weight vector:

<pre>
theta = np.array([[-1, 1, -1, 1, 0, 0]]).T
</pre>

Remember that the output of a logistic regression classifier has the form
$f(x) = \sigma(\theta^\top x)$.

<b>2.A)</b>
What is $\nabla_\theta f(x)$? (Remember that $\frac{\partial}{\partial z}
\sigma(z) = \sigma(z) (1 - \sigma(z))$. Don't forget the chain rule!) In which
direction does the gradient point?

<b>2.B)</b>
What is $\nabla_x f(x)$? In which direction does the gradient point?

<b>2.C)</b>
The code below implements gradient descent on $x_A$ or $x_B$ for this problem.
In other words, we start by providing $x_A$ or $x_B$ as input to the model, then
<i>change the input</i> in order to increase the probability of a different
target label.

What do the modified inputs look like? If you provide a large enough value to
`iters` to change the classification decision, do inputs look more like examples
from the input class or the target class?

<b>2.D)</b>
Next, we'll apply the same technique to a digit classification problem. Instead
of a logistic regression model, using a two-layer neural network with a softmax
output to perform 10-way classification (digits range from 0 to 9). This model
should get about 95% accuracy on the test set.

Just like before, we'll start with an input from one class, and modify the image
to increase the probability that our model labels it as some other class. See
what happens for different values (between 0 and 9) of `input_class` and
`target_class`.

(i) Can you find examples where the classifier output changes?  Do the modified
images look more like examples from the original class or the target class? 

(ii) Is this classifier reliable? How do you reconcile these
results with the reported test accuracy?

<b>2.E)</b>
Modified inputs designed to trick machine learning models, like the ones you
produced in the previous section, are known as <i>adversarial examples</i>. They
exist for text, images, and even real-world objects:

<img src=ex3_data/adv_image.png><br>
(Ian Goodfellow et al., 2014)

<img src=ex3_data/adv_text.png width=600><br>
(Robin Jia et al., 2017)

<img src=ex3_data/adv_object.jpg><br>
(Shang-Tse Chen et al., 2018)

Making machine learning models robust to these kinds of attacks is a <a
href="https://www.npr.org/2019/09/18/762046356/u-s-military-researchers-work-to-fix-easily-fooled-ai">major open area of research</a>. 
What are some real-world consequences of the existence of adversarial examples
like the ones above?

<h3>Discussion Guide</h3>

<ul>
  <li>2.A) sigma(theta.dot(x)) * (1 - sigma(theta.dot(x))) * x.
    Points in the direction of x.
  <li>2.B) sigma(theta.dot(x)) * (1 - sigma(theta.dot(x))) * theta. Points
    in the direction of theta.
  <li>2.C) If you increase iters enough to change the classification
    decision, inputs look more like the target class than the input class.
  <li>2.D) (i) Classifier output usually changes with very high
    confidence, but the images look almost indistinguishable from the
    original versions. (ii) The modified images aren't from the training
    distribution, so the 95% number can still be true. But it should be
    extremely surprising that images so similar to training images can
    confuse the classifier so much.
  <li>2.E) Some examples: stickers on stop signs that cause cars to crash;
    undetectable spam emails and comments, violent / adult images
    bypassing automatic content filtres.
</ul>
