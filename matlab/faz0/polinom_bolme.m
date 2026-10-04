%% 0.1 Polinomlar - Bölüm 3: Polinom bölmesi
% P(x) = D(x) * Q(x) + R(x),  der R < der D
% deconv, conv'un tersidir: [bölüm, kalan] döndürür.

%% Örnek 1: (2x^3 + 3x^2 - 5x + 6) / (x + 3)
P = [2 3 -5 6];
D = [1 3];
[Q, R] = deconv(P, D)     % Q = 2 -3 4  (2x^2 - 3x + 4),  R = 0 0 0 -6

% Doğrulama: D*Q + R bölüneni geri vermeli
conv(D, Q) + R

% Derece kuralı: der Q = der P - der D
dereceQ = (length(P) - 1) - (length(D) - 1)

%% Örnek 2: (x^3 - 7x + 6) / (x - 2)
% Eksik x^2 terimi için 0 yazılır
P2 = [1 0 -7 6];
[Q2, R2] = deconv(P2, [1 -2])   % Q2 = 1 2 -3,  R2 = 0 0 0 0

% Kalan sıfır: (x - 2) bir çarpan, x = 2 bir kök
polyval(P2, 2)                   % 0

% Bölümü de çarpanlarına ayır: x^2 + 2x - 3 = (x + 3)(x - 1)
roots(Q2)                        % -3, 1

% Tüm kökler doğrudan
roots(P2)                        % -3, 2, 1
