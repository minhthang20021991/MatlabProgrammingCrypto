function chiffre = affine(a,b)
texteClair = int16(input('Texte � chiffrer : ' , 's'))-97;

% Partie � chiffrer
texteChiffre = 97+mod(a*texteClair+b,26);
texteChiffre = char(texteChiffre)

% Partie � d�chiffrer
% Trouver a prime qui est l'inverse de a modulo 26
inverse = 0;
while mod(a*inverse,26)~=1
  inverse=inverse+1;
end

texteDechiffre = mod((int16(texteChiffre)-97-b)*23,26)+97;
texteDechiffre = char(texteDechiffre)

