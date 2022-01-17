#! /bin/bash

godot --export HTML5.release export/HTML5.release/index.html
butler push export/HTML5.release/ sigmastar/gwj41:html

