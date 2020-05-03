kothic-js-mapcss
================

(Documentation provided by [nickw1](https://github.com/nickw1), based on personal experience)

This is a script and makefile to convert a MapCSS stylesheet into a JavaScript
file suitable for use with kothic.js.

Several Python modules need to be installed. You should install pip (the 
Python package manager) first. Use Python 2.x rather than Python 3.x. e.g.

`apt-get install pip`

Once pip is installed, you need to install several dependences:

- `ply`
- `setuptools`
- `wheel`
- `pycairo`
- `pillow`

You also need `mapcss_parser`, which can be obtained from https://github.com/Miroff/mapcss-parser.

`rsvg` is also needed, but this appears to not be available as a pip package. I attempted and failed to install from source, but this is only needed if you are working with SVG images. Your mileage may vary. However, if you are not working with SVG, you can simply comment out (with a hash) the

`import rsvg`

from `scripts/mapcss_converter.py`
