clear all;
close all;
clc;
format compact;

[numer_indeksu, Edges, I, B, A, b, r] = page_rank()

% Print the most important site
[val, idx] = max(r);
fprintf('Najbardziej istotna strona: %d\n', idx);