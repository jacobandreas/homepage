<h2>Reviewing the Reviews</h2>

In this part, we will be thinking about social consequences of deploying machine
learning models. Recall the food reviews dataset from <a
href=https://lms.mitx.mit.edu/courses/course-v1:MITx+6.036+2019_Fall/courseware/Week3/week3_homework/1>Week
3 Homework</a>. The code for this question loads weights from a pretrained
logistic regression model, which classifies reviews as positive or negative, on
a bag-of-words representation for each review. It then prints out the weights
associated with certain words: [“yummy”, “Indian”, “Mexican”, “Chinese”,
“European”, “gross"].

Using this <a href =
"https://colab.research.google.com/drive/1-GVTgNYDvoHoEgmG1pkWT9N_N45GKBuu#forceEdit=true&sandboxMode=true">Colab
Notebook</a> , please investigate the weights of the words printed out. What do
you notice? Try out other words by changing the list of words passed in.
Consider trying words from this list; do the weights match your expectations of
what they should be like?: ["disgusting", "favourite",  "caffeine", "stinks"]

You can also download the code <a href="ex0_data.zip">here</a>.

<b>3A)</b> How will a classifier with these weights handle “This is Indian food”
relative to “This is European food”? Why does this happen?  Consider the
following statistics about the number of positive and negative reviews for each
of these words.

<table>
    <tr>
        <th></th>
        <th>+</th>
        <th>-</th>
    </tr>
    <tr>
        <td>yummy</td>
        <td>96</td>
        <td>28</td>
    </tr>
    <tr>
        <td>Indian</td>
        <td>2</td>
        <td>1</td>
    </tr>
    <tr>
        <td>Mexican</td>
        <td>1</td>
        <td>1</td>
    </tr>
    <tr>
        <td>Chinese</td>
        <td>1</td>
        <td>2</td>
    </tr>
    <tr>
        <td>European</td>
        <td>0</td>
        <td>1</td>
    </tr>
    <tr>
        <td>gross</td>
        <td>20</td>
        <td>69</td>
    </tr>
</table>

<b>3B)</b> When is this desirable behavior? When is it not? What if we're
helping Yelp build a restaurant recommendation system? What if we are doing a
research project in which we are trying to understand how different cuisines are
perceived?

<b>3C)</b> What changes could we make in 
<ul>
    <li> dataset
    <li> training procedure
    <li> post-processing
</ul>
to achieve something different from what is happening in (a)? 

<b>3D)</b> If we made the changes you came up with in (c), how would this affect
performance on
<ul>
<li> the training set?
<li> the test set?
<li> a different set of food reviews?
</ul>

<b>3E)</b>
Is it important that we used logistic regression in this problem? Or would the
lessons we learned apply to other linear classifiers?

<b>Food for Thought</b><br>
In considering the questions above, you can see that machine learning doesn’t
end with training the model and showing it has a high accuracy. We need to think
about whether the behavior of our models is fair. Here, we were looking at food
reviews, and we already started to see evidence of bias. Now what if we were
building a classifier to look at a resume and decide whether or not to interview
someone? Some companies tried this: 

<a href="https://qz.com/1427621/companies-are-on-the-hook-if-their-hiring-algorithms-are-biased/">Hiring Algorithms</a>
“After an audit of the algorithm, the resume screening company found that the
algorithm found two factors to be most indicative of job performance: their name
was Jared, and whether they played high school lacrosse.”

<h3>Discussion Guide</h3>

<ul>
  <li> A) Neutral statement about Indian food would score higher than the neutral statement about European food. But both statements are entirely neutral, so this is not good behavior. Might be due to infrequent presence of these terms and due to existing correlations between term and sentiment
  <li> B) Yelp might not want to distinguish in this way, whereas researcher studying trends would want to see.
  <li> C) <ul> 
            <li> balance the number of positive and negative examples with words relating to ethnicity
            <li> remove all words denoting ethnicity or any other characteristic on which we want to enforce neutrality when doing the BOW encoding
            <li> In post-processing, we can check and ignore classifications for statements with protected words (and handle manually)
          </ul>
  <li> C) less well on both the training and the test set because we removed a seemingly-important correlation; better on a held-out test set where people don’t have the same preferences
</ul>
