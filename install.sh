#!/bin/bash

echo "Installing PumpController"

python3 setup.py install

echo "Installing Dependencies"

pip3 install -r pump_controller.egg-info/requires.txt

echo "Done!"