  % reset plot and variables
clc; clf;
hold on;

% x samples for factorial function
n = 0:0.01:99; %resolution 10.000
nF = 0:100;
ylim([-5 80]);
xlim([0 40]);

plot(nF,factorial(nF),'--'); % O(n!)
plot(n,power(2,n)); % O(2^n)
plot(n,power(n,2),':'); % O(n^2)
plot(n, times(log(n), n)); % O(n log n)
plot(n, n); % O(n)
plot(n, log(n)); % O(flog n)
plot(n, 1); % O(1)

legend( ...
    'O(n!)', ...
    'O(2^n)', ...
    'O(n^2)', ...
    'O(n log n)', ...
    'O(n)',...
    'O(log n)', ...
    'O(1)'...
    );
