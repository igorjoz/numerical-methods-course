function [numer_indeksu, Edges, I, B, A, b, r] = page_rank()
    numer_indeksu = 193257;

    % Macierz pełna Edges dla zmodyfikowanej sieci
    % bez użycia sparse (rzadka), bo ma być pełna
    Edges = [1, 1, 2, 2, 2, 3, 3, 3, 3, 4, 4, 5, 5, 6, 6, 7, 8;
             4, 6, 3, 4, 5, 5, 6, 7, 8, 5, 6, 4, 6, 4, 7, 6, 6];
    N = 8;      % Liczba stron w zmodyfikowanej sieci
    d = 0.85;   % Damping factor

    % Macierz jednostkowa I
    % Sparse identity matrix
    I = speye(N);

    % Macierz sąsiedztwa B
    B = sparse(Edges(2,:), Edges(1,:), ones(1, length(Edges)), N, N);

    % Macierz diagonalna A
    L = sum(B);
    A = spdiags(1./L(:), 0, N, N);

    % Prawa strona równania (2)
    b = ones(N,1) * (1 - d) / N;

    % Rozwiązanie równania liniowego
    M = I - d * B * A;
    % PageRank dla N liczb
    r = M \ b;

    plot_PageRank(r)
end