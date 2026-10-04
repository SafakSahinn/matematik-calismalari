function rakamlar = eldeAktar(c, taban, goster)
% ELDEAKTAR  conv sonucunu (ham sütun toplamlarını) gerçek basamaklara çevirir.
%
%   rakamlar = eldeAktar(c)            onluk tabanda çevirir
%   rakamlar = eldeAktar(c, taban)     verilen tabanda çevirir (2 = ikili)
%   rakamlar = eldeAktar(c, taban, true)  her adımı tablo olarak yazdırır
%
%   c: katsayı dizisi, en büyük basamak solda (conv çıktısı gibi)
%
%   Örnek:
%       eldeAktar(conv([1 2 3], [4 5]))        % 123 x 45  -> 5 5 3 5
%       eldeAktar(conv([1 1 1], [1 1]), 2)     % 111 x 11  -> 1 0 1 0 1

if nargin < 2, taban = 10; end
if nargin < 3, goster = false; end

if goster
    fprintf('\n  Sütun  Değer  +Elde     t   Basamak  GidenElde\n');
    fprintf('  -----------------------------------------------\n');
end

rakamlar = [];
elde = 0;

% Sağdan sola: en düşük basamaktan başla
for k = length(c):-1:1
    t = c(k) + elde;
    basamak = mod(t, taban);        % bu sütuna yazılan rakam
    gidenElde = floor(t / taban);   % bir sonraki sütuna aktarılan

    if goster
        fprintf('  %5d  %5d  %5d  %4d  %7d  %9d\n', ...
            length(c) - k, c(k), elde, t, basamak, gidenElde);
    end

    rakamlar = [basamak, rakamlar];
    elde = gidenElde;
end

% En solda elde kaldıysa yeni basamak(lar) olarak başa eklenir
while elde > 0
    if goster
        fprintf('  (yeni)     -  %5d  %4d  %7d  %9d\n', ...
            elde, elde, mod(elde, taban), floor(elde / taban));
    end
    rakamlar = [mod(elde, taban), rakamlar];
    elde = floor(elde / taban);
end

if goster
    fprintf('\n');
end
end
