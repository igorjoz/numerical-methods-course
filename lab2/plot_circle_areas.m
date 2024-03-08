% 3. task
function plot_circle_areas(circle_areas)
    % The function generates a plot of the circle_areas vector and saves it to a file.

    figure; % Create new window for the plot
    plot(circle_areas, 'o-');   % Generates a line plot with circle markers
    xlabel('Circle number');    % X axis description
    ylabel('Total area of circles up to this one');  % Y axis description
    title('Cumulative area of circles');             % Plot title
    
    % Saving the plot to a PNG file
    %saveas(gcf, 'zadanie3.png');
end
