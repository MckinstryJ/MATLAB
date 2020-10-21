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
det(A)

% eigenvalues - linear transformations that gives us all in A
[V, D] = eig(A);
% solving for (A - lambda I)v = 0
% det(A - lam I) = 0
% (a-lam)(d-lam) = 0 => ad -alam -dlam + lam^2
