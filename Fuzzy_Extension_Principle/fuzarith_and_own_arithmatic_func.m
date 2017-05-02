clc
clear all
close all
%% Discrete
A = [0.6 1 0.8];
Ax = [1 2 3];
B = [0.8 1 0.7];
Bx = [5 6 7];

AA = [A;Ax];
BB = [B;Bx];
own_Csum_discrete = arithmatic_sum_discrete(AA,BB);
own_Cprod_discrete = arithmatic_product_discrete(AA,BB);
figure 
subplot(1,2,1); stem(own_Csum_discrete(:,1),own_Csum_discrete(:,2))
title('Discrete Fuzzy Addition, A+B')
subplot(1,2,2); stem(own_Cprod_discrete(:,1),own_Cprod_discrete(:,2))
title('Discrete Fuzzy Product, A*B')

%% Continuous
N = 101;
minx = -20;
maxx = 20;
x = linspace(minx,maxx,N);
A = trapmf(x,[-2 0 2 7]);
B = trapmf(x,[2 5 8 12]);

AA = [A;x];
BB = [B;x];
% addition of two fuzzy sets
own_Csum = arithmatic_sum_discrete(AA,BB);
Csum = fuzarith(x,A,B,'sum');
figure
subplot(1,2,1);plot(x,A,'b--',x,B,'m:',own_Csum(:,1),own_Csum(:,2))
title('(own)Fuzzy Addition, A+B')
legend('A','B','A+B')
subplot(1,2,2);plot(x,A,'b--',x,B,'m:',x,Csum)
title('Fuzzy Addition, A+B')
legend('A','B','A+B')
% product of two fuzzy sets
own_Cprod = arithmatic_product_discrete(AA,BB);
Cprod = fuzarith(x,A,B,'prod');
figure
subplot(1,2,1);plot(x,A,'b--',x,B,'m:',own_Cprod(:,1),own_Cprod(:,2))
title('(own)Fuzzy Product, A*B')
legend('A','B','A*B')
subplot(1,2,2);plot(x,A,'b--',x,B,'m:',x,Cprod)
title('Fuzzy Product, A*B')
clc
clear all
close all
%% Discrete
A = [0.6 1 0.8];
Ax = [1 2 3];
B = [0.8 1 0.7];
Bx = [5 6 7];

AA = [A;Ax];
BB = [B;Bx];
own_Csum_discrete = arithmatic_sum_discrete(AA,BB);
own_Cprod_discrete = arithmatic_product_discrete(AA,BB);
figure 
subplot(1,2,1); stem(own_Csum_discrete(:,1),own_Csum_discrete(:,2))
title('Discrete Fuzzy Addition, A+B')
subplot(1,2,2); stem(own_Cprod_discrete(:,1),own_Cprod_discrete(:,2))
title('Discrete Fuzzy Product, A*B')

%% Continuous
N = 101;
minx = -20;
maxx = 20;
x = linspace(minx,maxx,N);
A = trapmf(x,[-2 0 2 7]);
B = trapmf(x,[2 5 8 12]);

AA = [A;x];
BB = [B;x];
% addition of two fuzzy sets
own_Csum = arithmatic_sum_discrete(AA,BB);
Csum = fuzarith(x,A,B,'sum');
figure
subplot(1,2,1);plot(x,A,'b--',x,B,'m:',own_Csum(:,1),own_Csum(:,2))
title('(own)Fuzzy Addition, A+B')
legend('A','B','A+B')
subplot(1,2,2);plot(x,A,'b--',x,B,'m:',x,Csum)
title('Fuzzy Addition, A+B')
legend('A','B','A+B')
% product of two fuzzy sets
own_Cprod = arithmatic_product_discrete(AA,BB);
Cprod = fuzarith(x,A,B,'prod');
figure
subplot(1,2,1);plot(x,A,'b--',x,B,'m:',own_Cprod(:,1),own_Cprod(:,2))
title('(own)Fuzzy Product, A*B')
legend('A','B','A*B')
subplot(1,2,2);plot(x,A,'b--',x,B,'m:',x,Cprod)
title('Fuzzy Product, A*B')
legend('A','B','A*B')