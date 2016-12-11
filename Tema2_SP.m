%perioada semnalului P
P = 40;
%frecventa f
fcv = 0;
%notam pulsatia omega cu w
w = ( 2*pi )/fcv;
%numarul de coeficienti
N = 50;
%pasul de esntionare
pe = P/50;
t = -P:pe:2*P;

%calculul coeficientilor
for x = -N:1:N
    if ( x==0 ) continue;
    else cf = ((1)/(pi*1i*x))*(1-exp(-pi*1i*k)); 
        fc = cf*exp(w*1i*x*t);
        fcv = fcv + fc;
    end
end

f = (1/P)*f;
a = sinc(pi*t);

plot(t,fcv);
subplot(2,1,1);
grid;
xlabel('t');
ylabel('f(t)');
title('Reconstructia');

stem(t,abs(a));
subplot(2,1,2);
grid;
xlabel('t');
ylabel('f(t)');