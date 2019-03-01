---
title: Give a Little, Zone Tolerances
---

The Problem
-----------
Comp pilots fly with different varios and some error is expected when the
instrument sounds to the pilot that the flight has touched the next turnpoint
on course.

A Workaround
------------
To compensate the pilots for these inaccuracies, the GAP rules have some give.
Instruments have improved over the years and the tolerance in the rules is
being `tightened up`_. The tolerance was set at
half a percent of the turnpoint radius but this is reducing to a tenth of
a percent or 5 m, whichever is the smaller.

Added Options
-------------
Aside from the tracklogs, the `extract-input` command from flare-timing is able
to extract all the inputs it needs from the competition `*.fsdb` except for the
Earth model used and the amount of tolerance allowed around control zones.
These are supplied as command line options:

.. code-block:: console

    > extract-input --help
    ...
    Give when crossing zones:
        --give-fraction=NUM  How much give as a fraction, eg. 0.05% = 0.0005?
        --give-distance=NUM  How much give in metres?
    Earth math:
      -p --pythagorus         Pythagorus' method on a plane
      -h --haversines         Haversines on a sphere
      -v --vincenty           Vincenty's method on an ellipsoid

Borderline, Border and Line
---------------------------
Some pilots are cutting it fine as can be seen in these screenshots following
Tyler Borradaile around the course as he tags turnpoints **BUMF** and
**WELLIN** with only one fix inside the radius with the added give and no fixes
inside the turnpoint cylinder zone proper.

.. raw:: html

  <div class="tile is-ancestor">
    <div class="tile is-vertical is-6">
      <div class="tile is-parent is-vertical">
        <article class="tile is-child notification is-info">
          <div class="content">
            <p class="title">Task Map Zoomed to Extents</p>
            <p>Not visible yet at this zoom, the solid fill shows the extent of
            the zone proper while the border line traces the zone with added
            give.
            </p>
            <figure class="image">
              <img src="/images/forbes-2018-7-tyler.png">
            </figure>
          </div>
        </article>
        <article class="tile is-child notification is-warning">
          <div class="content">
            <p class="title">Zoomed in to Tag BUMF</p>
            <p>Much the same thing happens at the next turnpoint. This pilot is
            cutting it fine. They're tagging the cylinder with added give.
            </p>
            <div class="content">
              <figure class="image">
                <img src="/images/forbes-2018-7-bumf.png">
              </figure>
            </div>
          </div>
        </article>
      </div>
    </div>
    <div class="tile is-parent is-vertical">
      <article class="tile is-child notification is-success">
        <div class="content">
          <p class="title">Give before Zone</p>
          <p>An exit cylinder has the give borderline drawn inside of the
          fill. A pilot flying to the edge of an exit cylinder leaves the zone
          with added give before they leave the zone proper.
          </p>
          <figure class="image">
            <img src="/images/forbes-2018-7-start.png">
          </figure>
        </div>
      </article>
      <article class="tile is-child notification is-danger">
        <div class="content">
          <p class="title">Zoomed in to Tag WELLIN</p>
          <p>At this zoom level, we can see that the filled area is not flown
          through but the line around the turnpoint cylinder is.
          </p>
          <div class="content">
            <figure class="image">
              <img src="/images/forbes-2018-7-wellin.png">
            </figure>
          </div>
        </div>
      </article>
    </div>
  </div>

.. _WELLIN: /images/forbes-2018-7-wellin.png
.. _BUMF: /images/forbes-2018-7-bumf.png
.. _TYLER: /images/forbes-2018-7-tyler.png
.. _tightened up: https://ozreport.com/1545743801