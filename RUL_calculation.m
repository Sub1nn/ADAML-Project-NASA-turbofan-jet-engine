clear; close all; clc
%% 


table_data = load("train_FD001.txt");

% Extract all data for column1(engineId) and column2(cycle count) 
iteration = table_data(:, 1);
cycle_count = table_data(:, 2);

% Initialize RUL vector preallocating with zeros
RUL = zeros(size(cycle_count));

% filter engine IDs
unique_engines = unique(iteration);

% calculate RUL for each engine
for i = 1:length(unique_engines)
    engine_id = unique_engines(i);

    % Find indices for the current engine
    engine_indices = find(iteration == engine_id);

    % Determine the last cycle after which failure occurs
    max_cycle = max(cycle_count(engine_indices));

    % Calculate RUL for all cycles of this engine
    RUL(engine_indices) = max_cycle - cycle_count(engine_indices);
    
    % Print the first 50 cycles for the each engine
    fprintf('RUL for first 50 Cycles for Engine ID %d:\n', engine_id);
    for cycle_idx = 1:min(50, length(engine_indices)) 
        % tracking current cycle number
        current_cycle = cycle_count(engine_indices(cycle_idx)); 
        % tracking current RUL
        current_RUL = RUL(engine_indices(cycle_idx));  
        
        % Print the cycle number, engine ID, and RUL
        fprintf('Cycle %d: Engine ID %d, RUL: %d\n', current_cycle, engine_id, current_RUL);
    end
    
    fprintf('\n'); % Adds a new line between engines for better readability
end

% Plot of the first 50 RUL values with circle markers at each data point
figure;
grid on;
plot(RUL(1:50), 'o-');
title('First 50 RUL Values');
xlabel('Index');
ylabel('RUL');




