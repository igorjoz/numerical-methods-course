function plot_circle_areas(circle_areas)
    % Funkcja generuje wykres wektora circle_areas i zapisuje go do pliku.

    figure; % Tworzy nowe okno dla wykresu
    plot(circle_areas, 'o-'); % Generuje wykres liniowy z markerami w postaci kółek
    xlabel('Numer okręgu'); % Opis osi X
    ylabel('Suma pól powierzchni do tego okręgu'); % Opis osi Y
    title('Sumaryczne pole powierzchni okręgów'); % Tytuł wykresu
    
    % Zapisanie wykresu do pliku PNG
    %saveas(gcf, 'zadanie3.png');
end