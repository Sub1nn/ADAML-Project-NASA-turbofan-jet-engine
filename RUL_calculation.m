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

% loop through first 50 cycles for each engine and print the current 
% cycle number, engine ID and RUL

disp('First 50 RUL values with Engine IDs:');
% Initialize a cycle counter
current_cycle = 0; 
for idx = 1:length(RUL)
    if idx > 1 && iteration(idx) ~= iteration(idx - 1)
        current_cycle = 0; % Reset the cycle counter when engine ID changes
    end
    
    current_cycle = current_cycle + 1; % Increment the cycle count for the current engine
    fprintf('Cycle %d: Engine ID %d, RUL: %d\n', current_cycle, iteration(idx), RUL(idx));
    
    if current_cycle >= 100  % Stop after printing the first 50 cycles
        break;
    end
end

% Plot of the first 50 RUL values with circle markers at each data point
figure;
grid on;
plot(RUL(1:50), 'o-');
title('First 50 RUL Values');
xlabel('Index');
ylabel('RUL');




