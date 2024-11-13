% Parameters
true_distance = 10; % True distance to the obstacle (meters)
sensor_noise_mean = 0; % Mean of the sensor noise (meters)
sensor_noise_std = 0.5; % Standard deviation of the sensor noise (meters)
num_measurements = 100; % Number of measurements to simulate

% Preallocate array for measurements
measurements = zeros(1, num_measurements);

% Simulate measurements
for i = 1:num_measurements
    % Generate a noisy measurement
    noise = normrnd(sensor_noise_mean, sensor_noise_std); % Gaussian noise
    measurements(i) = true_distance + noise; % Noisy measurement
end

% Calculate mean and standard deviation of measurements
mean_measurement = mean(measurements);
std_measurement = std(measurements);

% Display results
fprintf('True Distance: %.2f m\n', true_distance);
fprintf('Mean Measurement: %.2f m\n', mean_measurement);
fprintf('Standard Deviation of Measurements: %.2f m\n', std_measurement);

% Plot the measurements
figure;
histogram(measurements, 'Normalization', 'pdf');
hold on;

% Plot Gaussian distribution based on mean and std
x = linspace(min(measurements), max(measurements), 100);
pdf = normpdf(x, mean_measurement, std_measurement);
plot(x, pdf, 'r-', 'LineWidth', 2);
xlabel('Distance (m)');
ylabel('Probability Density');
title('Histogram of Noisy Range Measurements');
legend('Measured Data', 'Gaussian Fit');
grid on;