
# centralized-mode --- Minor mode

## Why?

When working with large monitors, if you don't set a margin for your window in
Emacs things will be placed too far left. 

Would be nice to have a solution that could place things in a centralized area
that is closer to your position (if you sit in the middle of the monitor).

## What?

Although there are a few modes trying to solve this problem (darkroom-mode and
olivetti-mode), I was noticing serious degradation of speed in moving cursor
around.

This unfinished work is an attempt to create a minor mode, simple enough to do
the job without losing speed when moving cursor.

## Install

1. Close the repo in your machine
2. Load the file using  `(load-file "~/location/centralized-mode.el")`
3. To activate in a buffer just run M-x centralized-mode (I have it bound to key
   combination)
   
## Next steps

Next step is to come up with a solution to load it everywhere and everytime
without having to call a function interactively.

I had this working with olivetti-mode is the past but for some reason, but it's
not functioning properly

```
(define-globalized-minor-mode my-global-centralized-mode centralized-mode
    (lambda () (centralized-on)))
(my-global-centralized-mode 1)

```
