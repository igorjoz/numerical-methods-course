function plot_counts_mean(counts_mean)
    plot(counts_mean, 'o-'); % 'o-' tworzy wykres z punktami połączonymi linią
    title('Średnia liczba losowań potrzebnych do znalezienia i-tego okręgu');
    xlabel('Numer okręgu i');
    ylabel('Średnia liczba losowań counts mean');
    grid on; % Włączenie siatki na wykresie

    % Zapis wykresu do pliku PNG
    saveas(gcf, 'zadanie5.png');
end
