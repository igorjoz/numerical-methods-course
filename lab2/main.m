clear all;
close all;
clc;
format compact;

a = 100;        % max square size
r_max = 50;      % max radius
n_max = 50;    % max elements

% 1. part
%[circles, index_number] = generate_circles(a, r_max, n_max);


% 2. part
%[circles, index_number, circle_areas] = generate_circles(a, r_max, n_max);
%plot_circle_areas(circle_areas);
%print -dpng zadanie3.png 

% 3. part
[circles, index_number, circle_areas, rand_counts, counts_mean] = generate_circles(a, r_max, n_max);
plot_circles(a, circles, index_number); 
print -dpng zadanie1.png
%plot_counts_mean(counts_mean)


plot_circle_areas(circle_areas);
print -dpng zadanie3.png