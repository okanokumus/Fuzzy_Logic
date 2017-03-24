function y = own_trapmf( x,params)
% trapezodial MF
% own_trapmf function takes x, a, b, c and d values and produce
% y that just same as the gbellmf command in the fuzzy toolbox
a = params(1);
b = params(2);
c = params(3); 
d = params(4); 
y = max(min(min(((x-a)/(b-a)),1),((d-x)/(d-c))),0);
% plot(x,y)
% title('Trapezoidal-shaped MF')
end


