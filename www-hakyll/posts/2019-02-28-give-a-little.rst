---
title: Give a Little, Zone Tolerances
---

The Problem
-----------
Comp pilots fly with different makes and models of vario and can expect some
error when the instrument makes its distinctive sound that the flight has
flown into the turnpoint cylinder, tagging the zone. A glance at the screen
can confirm this as it switches to display the distance and track to the next
turnpoint.

A Workaround
------------
To compensate the pilots for these inaccuracies, the GAP rules have some give
around turnpoints. Instruments have improved over the years and the tolerance
in the rules is being `tightened up`_. The tolerance was set at half a
percent of the turnpoint radius but this is reducing to a tenth of a percent
or 5m, whichever is the smaller.

Added Options
-------------
Aside from the tracklogs, the :code:`extract-input` command from flare-timing
is able to extract all the inputs it needs from the competition
:code:`*.fsdb` except for the Earth model used and the amount of tolerance
allowed around control zones. These are supplied as command line options:

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
            <p class="title">Task map zoomed to extents</p>
            <p>Not visible yet at this zoom, the solid fill shows the extent of
            the zone proper while the border line traces the zone with added
            give.
            </p>
            <figure class="image">
              <img src="/images/2019-02-28/forbes-2018-7-tyler.png">
            </figure>
          </div>
        </article>
        <article class="tile is-child notification is-warning">
          <div class="content">
            <p class="title">Zoomed in tagging BUMF</p>
            <p>This pilot is cutting it fine. They're tagging the cylinder
            with added give.
            </p>
            <div class="content">
              <figure class="image">
                <img src="/images/2019-02-28/forbes-2018-7-bumf.png">
              </figure>
            </div>
          </div>
        </article>
      </div>
    </div>
    <div class="tile is-parent is-vertical">
      <article class="tile is-child notification is-success">
        <div class="content">
          <p class="title">Give before zone</p>
          <p>An exit cylinder has the give border line drawn inside of the
          fill. A pilot flying to the edge of an exit cylinder leaves the
          zone with added give before they leave the zone proper.
          </p>
          <figure class="image">
            <img src="/images/2019-02-28/forbes-2018-7-start.png">
          </figure>
        </div>
      </article>
      <article class="tile is-child notification is-danger">
        <div class="content">
          <p class="title">Zoomed in tagging WELLIN</p>
          <p>At this zoom level, we can see that the filled area is not flown
          through but the border line around the turnpoint cylinder is.
          </p>
          <div class="content">
            <figure class="image">
              <img src="/images/2019-02-28/forbes-2018-7-wellin.png">
            </figure>
          </div>
        </div>
      </article>
    </div>
  </div>

.. _tightened up: https://ozreport.com/1545743801