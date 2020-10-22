function test_biased_coin(p_heads, n)
% testing biased coin with given probabily and n times
    A = zeros(n, 1);
    for i=1:n
        A(i) = biased_coin(p_heads);
    end
    hist(A);
end
