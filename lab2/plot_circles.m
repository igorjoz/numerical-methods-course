function plot_circles(a, circles, ~)
    figure;
    axis equal;
    axis([0 a 0 a]);
    hold on;
    
    for i = 1:size(circles, 2)
        if circles(1,i) > 0 % Rysowanie tylko okręgów z niezerowym promieniem
            plot_circle(circles(1,i), circles(2,i), circles(3,i));
            pause(0.1); % Opcjonalnie, dla wizualizacji kolejności rysowania
        end
    end
    
    hold off;
end
