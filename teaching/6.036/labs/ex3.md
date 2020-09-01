<h2>RL Roomba</h2>

You have invested in a Roomba but you are not satisfied by just automating your
vacuum cleaning. Indeed, you want to put to use your newfound reinforcement
learning skills to increase the efficiency of the vacuuming process. You have
access to the Roomba’s <b> speed </b> and sensor information, including whether
the <b> bumper sensors on the front </b> have collided with something.

Considering the following simplified state/action space. [Note that this is
probably an insufficient state space to learn anything useful. It has been
simplified to this in order to make it easy for you to write down the reward
function within the time constraints of the lab session]:

States: Roomba is `[stopped, moving slow, moving fast]`, oriented in an angle in
`[0, 360)` and the bumper sensor has either `[detected bump, no bump]`. This
gives us a total of 6 states, each a tuple of `(speed, sensor)`.

Actions: `[maintain, accelerate forward, accelerate backward, stop]`

** 4A) ** Specify a reward function that incentivizes moving fast in any
direction and disincentivizes bumping into things. Think of bumping into things
as roughly twice as bad as moving slowly.

** 4B) ** In words (one or two bullet points suffice; no need to write a
function mapping!), what kind of policy do you think the agent will learn?

** 4C) ** Someone tried exactly this! [Read about their experience
here](https://twitter.com/smingleigh/status/1060325665671692288) and reflect.
Would your reward function cause this kind of behavior, as well? Is this
intended?

** 4D) ** If your reward function doesn’t cause that kind of behavior – great!
Are there other “loopholes” you might find in it? (Don’t spend more than 2-3
minutes looking for loopholes.) If it does, how might you fix it?


<b>Food for thought</b>

In this case, a Roomba started moving backward which is at worst inconvenient
and at best funny. This is a really common problem in reinforcement learning;
see more examples
[here](https://docs.google.com/spreadsheets/d/e/2PACX-1vRPiprOaC3HsCf5Tuum8bRfzYUiKLRqJmbOoC-32JorNdfyTiRRsR7Ea5eWtvsWzuxo8bjOxCG84dAg/pubhtml).
Think about what issues might arise if the problem were more serious or higher
impact than gaming.

<h3>Discussion Guide</h3>
<ol>

<li> Some guiding questions to consider here are whether accelerating forward or
maintaining the same speed is a good idea when bumping into something.

<li> We’d expect the policy to make the Roomba move faster as long as it hasn’t
bumped into things and back off when it has bumped into something.

<li> Note that this is linked to the fact that the accelerate backward row has a
positive reward in almost every state! Backing away is generally profitable, and
because there are no bump sensors on the back, it is beneficial to move
backward, so that even if something is bumped, the sensors aren’t triggered.

<li> One potential loophole to check for is reward function in the (stopped,
bump) state – if it is positive, the Roomba might just bump into something,
stop, and then keep stopping.

</ol>
