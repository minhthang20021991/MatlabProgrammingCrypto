function chiffre = imageChiffrerAffine(a,b)

path = 'C:\Users\Thang NGUYEN\Documents\MATLAB\TP1\lenna.png';
imgClair = double(imread(path)); % Convertir en double pour effectuer 
% l'op�rateur module, au d�but les donn�es �taient en uint8.
imgChiffre = mod(a.*imgClair+b,256);

% Partie � chiffrer
imshow(reshape(imgChiffre , 512 , 512))

% Trouver a prime qui est l'inverse de a modulo 26
inverse = 0;
while mod(a*inverse,256)~=1
  inverse=inverse+1;
end

% Partie � d�chiffrer
imgDechiffre = uint8(mod((imgChiffre-b).*inverse,256)); % Reconvertir
% en uint8 pour construire l'image initiale
figure,
imshow(reshape(imgDechiffre , 512 , 512))