#! /bin/bash

godot --no-window --export HTML5.release export/HTML5.release/index.html 
godot --no-window --export Linux.release export/Linux.release/thalassonauts.x86_64 
godot --no-window --export Windows.release export/Windows.release/thalassonauts.exe 
butler push export/HTML5.release/ sigmastar/thalassonauts:html
butler push export/Linux.release/ sigmastar/thalassonauts:linux
butler push export/Windows.release/ sigmastar/thalassonauts:windows


