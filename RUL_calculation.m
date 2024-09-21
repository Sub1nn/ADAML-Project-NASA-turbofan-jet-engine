clear; close all; clc

table_data = load("train_FD001.txt");

% Extract all data for column1(engineId) and column2(cycle count) 
iteration = table_data(:, 1);
time = table_data(:, 2);

% Initialize RUL vector preallocating with zeros
RUL = zeros(size(time));

% filter engine IDs
unique_engines = unique(iteration);

% calculate RUL for each engine
for i = 1:length(unique_engines)
    engine_id = unique_engines(i);

    % Find indices for the current engine
    engine_indices = find(iteration == engine_id);

    % Determine the last cycle after which failure occurs
    max_cycle = max(time(engine_indices));

    % calculate RUL for all cycles of this engine
    RUL(engine_indices) = max_cycle - time(engine_indices);
end

% Determine the engine IDs for the first 50 RUL values
first_50_indices = 1:50;
first_50_engine_ids = iteration(first_50_indices);

% Display the unique engine IDs in the first 50 RUL values
unique_first_50_engines = unique(first_50_engine_ids);
disp('Engine IDs for the first 50 RUL values:');
disp(unique_first_50_engines);

% loop through first 50 cycles and print the current cycle number, engine
% ID and RUL
disp('First 50 RUL values with Engine IDs:');
for idx = 1:50
    fprintf('Cycle %d: Engine ID %d, RUL: %d\n', idx, iteration(idx), RUL(idx));
end

% Plot of the first 50 RUL values with circle markers at each data point
figure;
grid on;
plot(RUL(1:50), 'o-');
title('First 50 RUL Values');
xlabel('Index');
ylabel('RUL');




