---
title: About
---
This website **flaretiming.com** is a place for publishing the results of
scoring competitions with a suite of command line apps, collectively called
flare-timing_.

FS_ is the official software for scoring competitions. This involves
collecting inputs, scoring and producing :code:`*.html` artefacts that can be
pushed to a web server to publish the results. For recording inputs FS has
forms for setting up the competition parameters and registering pilots. These
are saved to the :code:`*.fsdb` file. When pilots download their track logs
after a flight, FS copies these `*.kml` and :code:`*.igc` files to disk and
saves the relative file location in the :code:`*.fsdb` associating it with
pilot and task. When FS does the scoring, the results are also written to the
:code:`*.fsdb` file.

The apps of flare-timing when run in sequence are a reference implementation
of GAP. Scoring starts with taking as inputs the :code:`*.fsdb`, :code:`*.kml`
and :code:`*.igc` saved by FS.

A competition is scored by running these apps in sequence:

1. Extract the inputs with extract-input_.
2. Trace the shortest path to fly a task with task-length_.
3. Find pairs of fixes crossing over zones with cross-zone_.
4. Interpolate between crossing fixes for the time and place where a track tags a zone with tag-zone_.
5. Index fixes from the time of first crossing with align-time_.
6. Discard fixes that get further from goal and note leading area with discard-further_.
7. Mask a task over its tracklogs with mask-track_.
8. Group and count land outs with land-out_.
9. Score the competition with gap-point_.

As well as producing the final scores for each pilot in a task, these apps also
produce intermediate workings that can be checked by hand to ensure that the
scoring is being done correctly, in accordance with the rules of GAP.

.. _FS: http://fs.fai.org
.. _flare-timing: https://github.com/BlockScope/flare-timing
.. _extract-input: https://github.com/BlockScope/flare-timing/blob/master/lang-haskell/flare-timing/prod-apps/extract-input
.. _task-length: https://github.com/BlockScope/flare-timing/blob/master/lang-haskell/flare-timing/prod-apps/task-length
.. _cross-zone: https://github.com/BlockScope/flare-timing/blob/master/lang-haskell/flare-timing/prod-apps/cross-zone
.. _tag-zone: https://github.com/BlockScope/flare-timing/blob/master/lang-haskell/flare-timing/prod-apps/tag-zone
.. _align-time: https://github.com/BlockScope/flare-timing/blob/master/lang-haskell/flare-timing/prod-apps/align-time
.. _discard-further: https://github.com/BlockScope/flare-timing/blob/master/lang-haskell/flare-timing/prod-apps/discard-further
.. _mask-track: https://github.com/BlockScope/flare-timing/blob/master/lang-haskell/flare-timing/prod-apps/mask-track
.. _land-out: https://github.com/BlockScope/flare-timing/blob/master/lang-haskell/flare-timing/prod-apps/land-out
.. _gap-point: https://github.com/BlockScope/flare-timing/blob/master/lang-haskell/flare-timing/prod-apps/gap-point
