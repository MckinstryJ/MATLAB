function [ A ] = birthday( n )
% probability that n people in a room share a birthday
    A = ones(n, 1);
    p = 1;
    for i=1:n
        A(i) = 1 - p;
        p = p * (365 - i) / 365;
    end
end