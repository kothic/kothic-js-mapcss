# kothic-js-mapcss

Scripts for converting MapCSS stylesheets into JavaScript style files for
Kothic JS-compatible renderers.

This repository is useful when you want a separate preprocessing step that turns
MapCSS into checked-in JavaScript style modules. The broader Kothic ecosystem has
several related implementations and forks, so treat this as reusable legacy
tooling rather than the only supported path.

The maintained converter now lives in
[`kothic/kothic`](https://github.com/kothic/kothic). It uses the current Python
MapCSS parser and emits the same `MapCSS.loadStyle(...)` style-module shape for
Kothic JS-compatible renderers. Prefer that path for new work:

```sh
python3 -m src.kothic_js \
  --mapcss path/to/style.mapcss \
  --output path/to/style.js \
  --name style-name
```

or through the main Kothic CLI:

```sh
python3 -m src.komap \
  --renderer js \
  --stylesheet path/to/style.mapcss \
  --style-name style-name \
  --output-file path/to/style.js
```

[`kothic-node`](https://github.com/kothic/kothic-node) is another option in the
same family: it includes a MapCSS parser and can avoid this separate conversion
step for Node.js based workflows.

## Requirements

This repository is a Python 2 era tool. The converter imports:

- `ply`
- `setuptools`
- `wheel`
- `pycairo`
- `pillow`
- `mapcss_parser` from <https://github.com/Miroff/mapcss-parser>

The converter also imports `rsvg` when generating sprites from SVG icons. If you
only work with styles that do not need SVG conversion, that import path may not
be exercised.

## Usage

Run the Makefile from the repository root:

```sh
make
```

The Makefile runs `scripts/mapcss_converter.py` over the checked-in styles and
writes generated JavaScript and sprite outputs under `debug/styles/`.

For a single style, call the converter directly:

```sh
python scripts/mapcss_converter.py \
  --mapcss styles/surface.mapcss \
  --output debug/styles/surface.js \
  --name surface
```

## History

The dependency notes were originally contributed by
[`nickw1`](https://github.com/nickw1) in pull request #5.
