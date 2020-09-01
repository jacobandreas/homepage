<h2> Bands of Bands </h2>

Regré Shun runs a gym and collected data about members of an exercise program.
They’ve heard that the number of hours you exercise is linearly related to the
risk of heart disease in the future, so they decide to do a quick linear
regression problem (i.e., order = 1). Their output $\theta$ and $\theta_0$,
however, seem to imply that the more hours one exercises, the higher the risk of
heart disease. This is confusing since Regré always thought exercise was good
for you! So, they call you up for help and you ask to look at the data. Here’s
what you see: 

<div class="inline_imgs">
<center>
<img src=ex1_data/simpsons_fit.png width=400>
</center>
</div>

<b> 4A) </b> What do you observe about this data? Did Regré calculate their
model correctly? Does exercise increase your risk of disease?

<b> 4B) </b> When you look carefully, you can see that there appear to be
“bands” in the data (see figure below). It turns out these bands correspond to
age groups. How might that affect heart disease risk?

<div class="inline_imgs">
<center>
<img src=ex1_data/simpsons_color.png width=400>
</center>
</div>


<b> 4C) </b> Knowing this, how could you change your model? Would using multiple
models help? If you wanted to use a single model, what could you do? (It's okay
if you don't have perfect answers to these questions! The checkoff is meant as
an avenue to discuss!)

<b> 4D) </b> In this case, Regré Shun had the idea to look more carefully at the
data since it didn't agree with their intuition. What might have happened if
they had run a regression analysis on some data, and the results did agree with
their intuition, but their intuition was wrong? What if they had no intuition
about their data or a way to visualize it? Does your answer have any
implications for using machine learning tools in practice? Are there situations
where we care more about these questions than in others?

<b>Food for Thought</b><br>

The phenomenon illustrated above is called “Simpson’s Paradox”. It is a
statistical phenomenon where a trend appears in several different subgroups in
data, but disappears -- and sometimes reverses -- when the subgroups are
combined.  Here's what the data looks like when viewed in three-dimensions --
note we can still fit a linear model to this (a plane)!

<div class="inline_imgs">
<center>
<img src=ex1_data/3d_simpsons_fit.png width=400>
</center>
</div>

Here are some places where you can read more about Simpson's Paradox:

<ul>

<li> <a href="http://mathworld.wolfram.com/SimpsonsParadox.html"> Introduction to Simpson's Paradox </a>

“Simpson's paradox can arise when causal relations are ignored, but disappears when they are properly accounted for.”

<li> <a href="https://math.stackexchange.com/questions/83756/more-examples-of-simpsons-paradox-barring-the-ones-on-wikipedia-titanic-and/83785#83785"> 
On the effect of race on death-penalty sentences in Florida murder cases. </a> 

<li> <a href="https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5936043/"> Technical discussion of Simpson's Paradox</a>. Look at Section 3 for a good, well-explained example.

</ul>

<h3>Discussion Guide</h3>

<ul>
  <li> A) subparts seem to have negative slope, whereas overall trend claims positive slope. The data overall have that trend, but there appear to be subparts.
  <li> B) Older people have higher risk for heart disease
  <li> C) Could use several models, one per risk group; could include age/risk group in addition to amount of exercise as a feature in a single model
  <li> D) [meant for discussion] could cause serious consequences in contexts where these models are used to give advice about lifestyle changes; it’s important to consider logic and other physical models and make sure we are not contradicting those.
</ul>
