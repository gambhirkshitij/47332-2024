# **To install:**

Clone repository:

```bash
git clone https://github.com/gambhirkshitij/47332-2024
```

Navigate into `47332-2024` folder and run command:

```bash
cd 47332-2024

python3 setup.py install
```

<!-- After Egg is created, run following command to install dependencies:

```bash
pip3 install -r pump_controller.egg-info/requires.txt
``` -->

Finally, copy the `config.json` file into the folder that you are working in or create your own `config.json`. Now you are ready to use the Pump Controller library!

# **To use:**

### ArduinoBot

```python
from pump_controller import PumpController
from pump_controller import get_serial_port, list_serial_ports
from pump_controller import visualize_rgb

# Initialize arduinobot
arduinobot = PumpController(get_serial_port())

# Prime pumps and hoses
for pump in ['R', 'G', 'B', 'Y', 'W']:
    arduinobot.purge_pump('R', 3) # Run the red pump for 3 seconds
    arduinobot.drain(5) # Drain the test cell for 5 seconds

# Mix a target color and store
arduinobot.change_target([0.1, 0.2, 0.3, 0.4])

print(arduinobot.target_mixture)
print(arduinobot.target_color)

# Mix another color
new_mixture = [0.4, 0.3, 0.2, 0.1]
rgb_measurement = arduinobot.mix_color(new_mixture)

# Visualize new color against target color
visualize_rgb(mixture = new_mixture, rgb = rgb_measurement, pump_controller=arduinobot)
```

### SilicoBot

```python
from pump_controller import SilicoPumpController
from pump_controller import visualize_rgb

# Initialize silicobot
silicobot = SilicoPumpController(noise_std = 1)

# Mix a target color and store
silicobot.change_target([0.1, 0.2, 0.3, 0.4])

print(silicobot.target_mixture)
print(silicobot.target_color)

# Mix another color
new_mixture = [0.4, 0.3, 0.2, 0.1]
rgb_measurement = silicobot.mix_color(new_mixture)

# Visualize new color against target color
visualize_rgb(mixture = new_mixture, rgb = rgb_measurement, pump_controller=silicobot)
```

# API Reference

[Find the API Reference here](https://www.student.dtu.dk/~s193903/47332/#PumpControllerhttps://)
