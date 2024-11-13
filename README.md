# Range Sensor Simulation with Gaussian Noise

## Overview
This MATLAB script simulates a range sensor's measurements with Gaussian noise, demonstrating the statistical properties of noisy sensor readings. It generates multiple measurements and visualizes their distribution.

## Features
- Simulates range sensor measurements with Gaussian noise
- Calculates statistical properties of measurements
- Visualizes measurement distribution with histogram
- Compares measured data with theoretical Gaussian fit

## Parameters
- `true_distance`: Actual distance to obstacle (10 meters)
- `sensor_noise_mean`: Mean of sensor noise (0 meters)
- `sensor_noise_std`: Standard deviation of noise (0.5 meters)
- `num_measurements`: Number of simulated measurements (100)

## Output
- Console output showing:
  - True distance
  - Mean measurement
  - Standard deviation of measurements
- Visual output:
  - Histogram of measurements
  - Fitted Gaussian probability density function
![Range_sensor](https://github.com/user-attachments/assets/3de845e1-b1ff-4ce0-8288-7bcea2001e0a)

## Usage
1. Set desired simulation parameters
2. Run the script
3. Observe the statistical results and visualization

## Visualization Details
- Histogram shows distribution of measurements
- Red curve shows theoretical Gaussian fit
- X-axis represents distance in meters
- Y-axis shows probability density
