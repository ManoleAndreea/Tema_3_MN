% Tema 3 MN
% Manole Andreea - Cristina, 321 AA

%   Se dau matricele A, D. Matricea D este diagonala si este memorata
% intr un vector. Numarul meu de pe teams este 140571, deci A este
% inferior triunghiulara. 
%   Scrie un algoritm eficient pentru a calcula produsul AD.
% Ilustreaza functionarea printr un exemplu. Verifica corectitudinea
% rezultatului.


% O sa luam ca exemplu matricea A = 1 0 0 0
%                                   2 3 0 0
%                                   4 5 6 0
%                                   7 8 9 10

% Si D = 1 0 0 0
%        0 2 0 0
%        0 0 3 0
%        0 0 0 4

A = [1, 0, 0, 0; 2, 3, 0, 0; 4, 5, 6, 0; 7, 8, 9, 10];

d=[1; 2; 3; 4];

D=[1,0,0,0; 0,2,0,0;0,0,3,0;0,0,0,4];
n=size(A, 1);
C=zeros(n, n);
%   Pentru ca matricea mea este inferior triunghiulara, nu are sens
% sa parcurgem toata matricea, pentru ca inmultirea dintre o matrice
% L si un vector o sa dea tot o matrice L(inferior triunghiulara), 
% deci vom parcurge matricea doar in partea inferioara, unde i>=j.
for i=1:n
    for j=1:i
        C(i, j)=A(i, j)*d(j);
    end
end
disp('Matricea rezultat este:')
disp(C)

% Ne afiseaza C = 1 0 0 0
%                 2 6 0 0
%                 4 10 18 0
%                 7 16 27 40

% Acelasi lucru ne afiseaza si daca facem inmultirea a doua matrice simplu,
% in matlab:

disp(A*D)

% Unde D este matricea diagonala memorata ca o matrice.


