%% 0.1 Polinomlar - Bölüm 2: Toplama, çıkarma, çarpma
% Polinomlar katsayı dizisi olarak saklanır, en büyük üs solda.
% Eksik terimler için 0 yazılır (yer tutucu).

%% Toplama ve çıkarma
% P(x) = 3x^3 + 2x^2 - 5,  Q(x) = x^2 + 4x + 1
P = [3 2 0 -5];
Q = [0 1 4 1];      % x^3 sütunu için başa 0 eklendi, diziler eşit uzunlukta olmalı

toplam = P + Q      % 3x^3 + 3x^2 + 4x - 4
fark   = P - Q      % 3x^3 +  x^2 - 4x - 6

%% Çarpma: conv (kaydırma tablosu)
% (2x + 3)(x^2 - x + 4)
A = [2 3];
B = [1 -1 4];
carpim = conv(A, B)  % 2x^3 + x^2 + 5x + 12

%% x = 1 sağlaması
% P(1) her zaman katsayıların toplamıdır
polyval(carpim, 1)
polyval(A, 1) * polyval(B, 1)

%% Derece kuralı: der(A*B) = der(A) + der(B)
% Dizi uzunluğu = derece + 1
dereceA = length(A) - 1;
dereceB = length(B) - 1;
dereceCarpim = length(carpim) - 1    % 1 + 2 = 3

%% Sayı çarpımı = polinom çarpımı + elde aktarma
% 123 x 45, x = 10 kabul edilerek
ham = conv([1 2 3], [4 5])           % [4 13 22 15]: bazı sütunlar 10'u aşıyor
sonuc = eldeAktar(ham, 10, true)     % 5 5 3 5

%% İkili tabanda: 111 x 11 = 7 x 3 = 21
ham2 = conv([1 1 1], [1 1])          % [1 2 2 1]: bit 2 olamaz
sonuc2 = eldeAktar(ham2, 2, true)    % 1 0 1 0 1
