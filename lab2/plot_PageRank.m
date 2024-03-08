function plot_PageRank(r)
% Załóżmy, że r zawiera obliczone wartości PageRank
bar(r);
title('PageRank values for given network');
xlabel('Page number');
ylabel('PageRank value');

% Zapis wykresu do pliku PNG
saveas(gcf, 'zadanie7.png');

% print -dpng zadanie7.png 
end
