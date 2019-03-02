---
title: Point Fractions Fitting the Curve 
---

# Equations for Points
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

# Reach a line

<div class="columns">
<div class="column is-one-third">
  <p>Reach is the furthest distance flown irrespective of where the pilot
  lands or how difficult the course was. The equation for allocating
  reach points is a simple ratio.
  </p>
  <p id="eqn-reach"></p>
  <p>When [not
  including](https://github.com/BlockScope/flare-timing/commit/310171b9dcb3fb736c5db7827b5571725d23a80f)
  the pilots making it to the end of the speed section, bringing only the
  distances of pilots that had landed out as inputs to the equation, the
  scatter plot of awarded fractions for reach points were not lying along the
  expected line.
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

# Time points

<div class="columns">
<div class="column is-one-third">
  <p id="eqn-time"></p>
  <p>I'd made an
  [error](https://github.com/BlockScope/flare-timing/commit/302433eac39966e0785d5fc638b4fbdcfdf155b1)
  in transcribing the above equation for allocating the fraction of time points
  to each pilot.
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

# Leading points

<div class="columns">
<div class="column is-one-third">
  <p id="eqn-leading"></p>
  <p>I'd made an similar
  [error](https://github.com/BlockScope/flare-timing/commit/293296baf019816b0e9131c0c069f13282220c83)
  with leading points.
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
