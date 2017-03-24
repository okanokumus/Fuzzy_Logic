function y = own_gbellmf( x,params)
% generealized bell MF
% own_gbellmf function takes x, a, b and c values and produce
% y that just same as the gbellmf command in the fuzzy toolbox
a = params(1);
b = params(2);
c = params(3); 
y= 1 ./ (1+abs((x-c)/a).^(2*b)); 
% plot(x,y)
% title('Generalized Bell MF')
end

