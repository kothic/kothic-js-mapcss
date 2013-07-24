all: mapcss

mapcss:
	python scripts/mapcss_converter.py --mapcss styles/mapnik.mapcss --output debug/styles/mapnik.js --icons-path styles --output-sprite debug/styles/mapnik.png --name mapnik
	python scripts/mapcss_converter.py --mapcss styles/osmosnimki-maps.mapcss --output debug/styles/osmosnimki.js --icons-path styles/icons/ --output-sprite debug/styles/osmosnimki.png --name osmosnimki
	python scripts/mapcss_converter.py --mapcss styles/surface.mapcss --output debug/styles/surface.js --name surface
