% 2. task
function [circles, index_number, circle_areas, rand_counts, counts_mean] = generate_circles(a, r_max, n_max)
    index_number = 193257;
    circles = zeros(3, n_max);      % Macierz okręgów
    area_vector = zeros(1, n_max);  % Wektor pól okręgów
    rand_counts = zeros(1, n_max);  % Wektor liczby losowań potrzebnych do znalezienia każdego okręgu
    counts_mean = zeros(1, n_max);  % Wektor średniej liczby losowań do znalezienia i okręgów

    circle_count = 0; % Licznik dodanych okręgów

    for i = 1:n_max
        valid = false;  % Flaga weryfikująca poprawność okręgu
        attempts = 0;   % Licznik prób dla danego okręgu
        
        while ~valid && attempts < 1000
            R = rand() * r_max;         % Losowy promień
            X = rand() * (a - 2*R) + R; % Losowa współrzędna X
            Y = rand() * (a - 2*R) + R; % Losowa współrzędna Y
            
            overlap = false;
            for j = 1:circle_count
                d = sqrt((circles(2,j) - X)^2 + (circles(3,j) - Y)^2);
                if d < circles(1,j) + R
                    overlap = true;
                    break;
                end
            end
            
            if ~overlap
                valid = true;
                circle_count = circle_count + 1;
                circles(:, circle_count) = [R; X; Y];
                area_vector(circle_count) = pi * R^2;
            end
            
            attempts = attempts + 1;
        end
        
        rand_counts(i) = attempts; % Zapisanie liczby prób potrzebnych do znalezienia i-tego okręgu
        
        % Obliczanie średniej liczby losowań do znalezienia pierwszych i okręgów
        if i == 1
            counts_mean(i) = rand_counts(i);
        else
            counts_mean(i) = mean(rand_counts(1:i));
        end
    end
    
    % Usuwanie niepotrzebnych elementów
    circles = circles(:, 1:circle_count);
    area_vector = area_vector(1:circle_count);
    rand_counts = rand_counts(1:circle_count);
    counts_mean = counts_mean(1:circle_count);

    % Obliczanie sum kumulacyjnych pól kół
    circle_areas = cumsum(area_vector)';
end
