---
title: Point Fractions Fitting the Curve 
---

Equations for Points
--------------------
For each aspect of a task flight score there is an equation for points. The
independent variable might be something as simple as distance, time, or
arrival order or it might be a calculated variable such as leading
coefficient or relative difficulty. In all these equations the dependent
variable is the fraction of points to be allocated.

Graphing these equations as lines and then overlaying a scatter plot of the
fraction of points awarded to each pilot is a good visual check that the
scoring was done correctly.

Doing this helped me find bugs I had made not transcribing equations
correctly or not bring in all needed inputs.

Reach a line
------------

.. raw:: html

  <div class="columns">
    <div class="column is-one-third">
      <p>The equation for the allocation of points for reach, the linear
      distance flown irrespective of where the pilot lands or how difficult
      the courseline, is a simple ratio.
      </p>
      <p id="eqn-reach"></p>
      <p>When I was not including the pilots making it to the end of the
      speed section the awarded fraction of reach points were not lying along
      the expected line.
      </p>
    </div>
    <div class="column is-one-third">
      <p class="subtitle">Broken</p>
      <p class="image">
        <img src="/images/2019-03-01/reach-before.png">
      </p>
    </div>
    <div class="column is-one-third">
      <p class="subtitle">Fixed</p>
      <p class="image">
        <img src="/images/2019-03-01/reach-after.png">
      </p>
    </div>
  </div>

Time points
-----------

.. raw:: html

  <div class="columns">
    <div class="column is-one-third">
      <p id="eqn-time"></p>
      <p>I'd made an error in transcribing the above equation for allocating
      the fraction of time points to each pilot.
      </p>
    </div>
    <div class="column is-one-third">
      <p class="subtitle">Broken</p>
      <p class="image">
        <img src="/images/2019-03-01/time-before.png">
      </p>
    </div>
    <div class="column is-one-third">
      <p class="subtitle">Fixed</p>
      <p class="image">
        <img src="/images/2019-03-01/time-after.png">
      </p>
    </div>
  </div>

Leading points
--------------

.. raw:: html

  <div class="columns">
    <div class="column is-one-third">
      <p id="eqn-leading"></p>
      <p>I'd made an similar error with leading points.
      </p>
    </div>
    <div class="column is-one-third">
      <p class="subtitle">Broken</p>
      <p class="image">
        <img src="/images/2019-03-01/leading-before.png">
      </p>
    </div>
    <div class="column is-one-third">
      <p class="subtitle">Fixed</p>
      <p class="image">
        <img src="/images/2019-03-01/leading-after.png">
      </p>
    </div>
  </div>