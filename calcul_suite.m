function [X]=calcul_suite(x0,g,N)

%Calcul des n premiers termes d'une suite (Xn)
%(Xn) suite definie de façon recurrante 
%Xn=g(Xn-1) et X0 dans R
%n le nombre de termes

X(1)=x0;
for i=1:N-1
X(i+1)=[g(X(i))]; % les n premiers termes de la suite (Xn)
endfor
