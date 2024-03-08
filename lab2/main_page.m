%[numer_indeksu, Edges, I, B, A, b, r] = page_rank()
page_rank()

% Wypisanie najbardziej istotnej strony
[val, idx] = max(r);
fprintf('Najbardziej istotna strona: %d\n', idx);