function y = own_trimmf( x,params)
% triangular MF
% own_trimmf function takes x, a, b and c values and produce
% y that just same as the gbellmf command in the fuzzy toolbox
a = params(1);
b = params(2);
c = params(3); 
y = max(min(((x-a)/(b-a)),((c-x)/(c-b))),0);
% plot(x,y)
% title('Triangular MF')
end

