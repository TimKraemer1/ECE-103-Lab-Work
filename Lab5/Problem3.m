clear all
close all
clc

%% Problem 3
G = @(w) 2.*((abs(w)>=5) & (abs(w)<=10));

H = @(w) 5*abs(w).*(abs(w)<=20);

w = -31.4:0.01:31.4;

M = @(w) G(w).*H(w);

t = -100:0.1:100;

for ii=1:length(t)
    m(ii) = trapz(w, (1/(2*pi))*M(w).*exp(j*w*t(ii)));
end

energy_time = trapz(t, abs(m).^2)

energy_frequency = trapz(w, abs(M(w)).^2)/2/pi