function [ mf_output ] = pass_fuzzy_to_crisp_set( x, mf, xp, x_interval )
% given fuzzy sets and corresponding membership degrees are passed
% to crisp sets using the result of defuzz command.

% x: the range in x axes like x= 0:0.01:10
% mf: membership function
% xp: is the result of defuzz command in the beside of this xp is generally
% called defuzzified value.
% mf(xp) is called as lamda cut or alpha-cut value.

mf_output = mf >= mf(ceil(xp*x_interval));
figure('Name','crisp sets','NumberTitle','off')
plot(x,mf_output)

end

