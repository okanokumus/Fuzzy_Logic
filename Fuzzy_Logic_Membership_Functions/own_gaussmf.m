function y = own_gaussmf( x,params)
% own_gaussmf function takes x, sigma and c values and produce
% y that just same as the gaussmf command in the fuzzy toolbox
sigma = params(1);
c= params(2);
y= exp(1).^((-(x-c).^2)/(2*(sigma.^2)));
% plot(x,y)
% title('Gaussian MF')
end

