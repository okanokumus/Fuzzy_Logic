function [ mf_output ] = pass_fuzzy_to_crisp_set( x, mf, xp, x_interval )
% given fuzzy sets and corresponding membership degrees are passed
% to crisp sets using the result of defuzz command.

% x: the range in x axes like x= 0:0.01:10
% mf: membership function
% xp: is the result of defuzz command in the beside of this xp is generally
% called defuzzified value.
% mf(xp) is called as lamda cut or alpha-cut value.
% x_interval: sampling frequency
mf_output = mf >= mf(ceil((xp-x(1))*x_interval));

% k = ceil((xp-x(1))*x_interval) 
% when we define x= xi:x_sampling:xf it gives us 1x((xf-xi)*x_sampling+1) matrix.
% and line 13 is to find which element in the x matrix holds on xp value.
% where is the location of xp in the interval of x that depends on the sampling frequency.

figure('Name','crisp sets','NumberTitle','off')
plot(x,mf_output)

end

