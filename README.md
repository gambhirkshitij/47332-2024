# **To install:**

Navigate into `47332-2024` folder and run command:

```bash
cd 47332-2024

python3 setup.py install
```

After Egg is created, run following command to install dependencies:

```bash
pip3 install -r pump_controller.egg-info/requires.txt
```


# **To use:**

### ArduinoBot

```python
from pump_controller import PumpController
from pump_controller import get_serial_port, list_serial_ports
from pump_controller import visualize_rgb

# Initialize arduinobot
arduinobot = PumpController(get_serial_port())

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
silicobot = PumpController(get_serial_port())

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
