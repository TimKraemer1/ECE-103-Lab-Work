clear all
close all
clc

%% Part a
G = @(w) 2.*((abs(w)>=5) & (abs(w)<=10));

H = @(w) 5*abs(w).*(abs(w)<=20);

w = -31.4:0.01:31.4;

M = @(w) G(w).*H(w);


figure
subplot(211)
plot(w, abs(M(w)))
title('abs(M(w)')

subplot(212)
plot(w, angle(M(w)))
title('angle(M)')

%% Part b
t = -100:0.1:100;

for ii=1:length(t)
    m(ii) = trapz(w, (1/(2*pi))*M(w).*exp(j*w*t(ii)));
end

figure
subplot(211)
plot(t, real(m))
title('Real Value of m(t)')
xlabel('t')

subplot(212)
plot(t, imag(m))
title('Imag Value of m(t)')
xlabel('t')

