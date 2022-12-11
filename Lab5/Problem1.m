clear all
close all
clc

%% Part a
G = @(w) 2.*((abs(w)>=5) & (abs(w)<=10));

w = -31.4:0.01:31.4;
t = -100:0.1:100;

for ii=1:length(t)
    g(ii) = trapz(w, (1/(2*pi))*G(w).*exp(j*w*t(ii)));
end

figure
subplot(311)
plot(w, G(w))
title('original G(w)')
xlabel('\omega')
ylabel('G(\omega)')

subplot(312)
plot(t, real(g))
title('Real Value of g(t)')
xlabel('t')

subplot(313)
plot(t, imag(g))
title('Imag Value of g(t)')
xlabel('t')

%% Part b
Y = @(w) G(w-5);

for ii=1:length(t)
    y(ii) = trapz(w, (1/(2*pi))*Y(w).*exp(j*w*t(ii)));
end

figure
subplot(311)
plot(w, Y(w))
title('original Y(w)')
xlabel('\omega')
ylabel('Y(\omega)')

subplot(312)
plot(t, real(y))
title('Real Value of y(t)')
xlabel('t')

subplot(313)
plot(t, imag(y))
title('Imag Value of y(t)')
xlabel('t')