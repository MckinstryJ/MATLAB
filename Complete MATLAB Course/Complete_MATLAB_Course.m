% command without ; displays value to command window

% Setting values to variables
x = 5;

% Creating vector
v = [1, 2, 3];

% Creating 2x2 matrix
A = [1 2; 3 4];  % row by row

% Transpose - row switched to column
A';

% Column vector
v = [1; 2; 3];
v;

% indexing matrix - all of first row
A(1, :);

% size of matrix
size(A);

% range of numbers
1:10;

% range to variable
w = 1:10;

% range to matrix
A = [1:10; 1:10];

% Math operations on matrices
A = [1:5; 1:5];
B = [2:6; 2:6];
C = [3:7; 3:7];
A + B;  % elementwise addition
A - B;  
A * B';  % dot product
A / B;  % (1, 1) finds determinat (B * inv(A))
A \ B;  % inv(A) * B aka solving Ax = b

% normal division works
1 / 3;

% multiple operations
A + B - C;

% element wise multiplication
A.*B;

% inner product
A*B';
dot(A, B);

% outer product
A'*B;
% outer(A, B)

% Trig functions
sin(0);
cos(0);
sin(A);  % sin of every element
exp(0);
log(1);
sqrt(9);

% Constants
pi;
exp(1);  % e^1
sqrt(-1);  % i

% identity matrix
I = [1 0 0; 0 1 0; 0 0 1];
eye(3);

% matrix of zeros
zeros(3);  % 3x3
zeros(3, 2);  %3x2

% self created functions
my_sinh(2);
my_sinh(A);  % sinh for each element
is_even(2);  % returns 1 if even

% solve linear equations (Ax = b)
A = [3 2 -1; 2 -2 4; -1 .5 -1];
b = [1 -2 0];
inv(A)*b';  % values where x, y, z point to interception of 3 planes
A \ b';

% determinte of matrix
det(A);

% eigenvalues - linear transformations that gives us all in A
[V, D] = eig(A);
% solving for (A - lambda I)v = 0
% det(A - lam I) = 0
% (a-lam)(d-lam) = 0 => ad -alam -dlam + lam^2

A*V - V * D;  % close to 0 for all (true)

% norm - squared and sqrt (close to orgin)
norm(A*V - V*D);

% manahatten distance
norm(A*V - V*D, 1);

% for list
for i=1:10
    disp(i);
end

% mean squared error (MSE)
E = randn(1000, 1);  % normally dist random numbers (row, col)

% summed squared error
SSE = 0;
for i=1:1000
    SSE = SSE + E(i)^2
end
MSE = SSE / 1000;
% for loops are slow!

% using dot product
E'*E/1000;

% if else with "is even" 
X = 1:10;
Y = zeros(1, 10);
for i=1:10  % can do x strictly with x=X
    if mod(X(i), 2) == 0
        Y(i) = 1;
    else
        Y(i) = 0;
    end
end

% find value in list
found = 0;
i = 0;
while ~found
    i = i + 1
    if X(i) == 8
        disp('found it');
        found = 1;
    end
end

for x=X
    if x == 8
        disp('found it!!!');
        break;
    end
end

% string row vector
my_string = "Hello";
class(my_string);  % states the vector type

% struct
my_struct.name = "John";
my_struct.age = 25;
class(my_struct);
isfield(my_struct, 'name');  % returns 1 if field exists
rmfield(my_struct, 'age');  % remove age field
setfield(my_struct, 'gender', 'f');  % set new field
my_struct.contact.email = 'm@gmail.com';  % struct within struct
new_s = struct('name', 'Bob', 'email', 'bob@gmail.com');  % all in one line

% cell - making heterogenous datastruct
my_cell{1} = 'hello world';
my_cell{'A'} = [1 2; 3 4];

% plotting
y = [1, 1, 2, 3, 5, 8, 13, 21];  % automatically x scale
x = [.2, .3, .4, .5, .6, .7, .8, .9];  % manually state x tix labels
plot(x, y);

% plot two functions
x = linspace(0, 8, 8);  % automatic x axis vector
y2 = [1, 2, 3, 4, 5, 6, 7, 8];
plot(x, y, '--', x, y2, '.');

% bar plot
x = 1:10;
y = sin(x);
bar(x,y);

% normal dist
x = randn(1000, 1);
hist(x, 50);  % more bins

% pie chart
x = 1:10;
pie(x);

% scatter plot
x = linspace(0, 2*pi, 1000);
y = 10*sin(x) + rand(1, 1000);
plot(x, y);
scatter(x, y);

% read files
% M = csvread('ticker_list.csv', 1, 0);  % has to be numeric csv file

% saves workspace
% save('workspace.mat');

% multiple plots in one frame
y2 = 2*sin(x) + rand(1, 1000);
% subplot(2, 1, 1);
% plot(x, y);
% subplot(2, 1, 2);
% plot(x, y2);

% 3D plots
Z = randn(100, 100);
surf(Z);
% contour
contour(Z);

% titles, labels
% plot(x, y);
title("title here")
xlabel("x axis")
ylabel("y axis");

% Fourior Transform
x = linspace(0, 2*pi, 1000);
% plot(x, real(fft(sin(x))), x, sin(x));
y2 = sin(x.*x);
% spectrogram(y2);

% csv file of stock data
stock_data = readtable('TSLA.csv')
plot(stock_data.Date, stock_data.Open)

% probability of value > average
sum(stock_data.Open > mean(stock_data.Open)) / length(stock_data.Open)
hist(stock_data.Open)

% percentage change
pct = 100 * diff(stock_data.Open(:, 1))./stock_data.Open(1:end-1, 1);
hist(pct, 50)

% prob of value >< average
sum(stock_data.Open > mean(stock_data.Open) | stock_data.Open < mean(stock_data.Open)) / length(stock_data.Open)

% random variables
randi(10)  % value of uniform dis from 0 to N
randi(10, 3)  % 3 by 3 matrix of uni rand values
randi(10, 3) + 10  % 3 by 3 between 10-20

% custom distribution
test_biased_coin(.25, 100);

% probablity that 2 people share a birthday in a room
plot(birthday(60));  % reaches 100 at about 60

% if dist is between range then F(x) = integral from -inf to inf = 1.0

% simple metrics
mean(stock_data.Open)
var(stock_data.Open)
std(stock_data.Open)
% z scores of prices
z = (stock_data.Open - mean(stock_data.Open)) / std(stock_data.Open)
x = 1:length(z)
scatter(x, z)

% hypothesis testing (null / alternative)
R1 = randn(100, 1);
R2 = (randn(20, 1) + 1) * 2;
[h, p] = ttest2(R1, R2);
% failed to reject alternative
% p value of close to 0 (less than 5% normally to reject)

% covariance
cov(stock_data.Open)