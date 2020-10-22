function [ face ] = biased_coin(p_heads)
% biased coin of given probability
    if rand < p_heads
        face = 'h';
    else
        face = 't';
    end
end

