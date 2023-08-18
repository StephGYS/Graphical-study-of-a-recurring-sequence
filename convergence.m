function [X,N,bool]=convergence(x0,g,e,nmax)
%Montrer la convergence d'une suite (Xn) definit par 
%récurrence %Xn+1=g(Xn) et x0 dans R
%pas=|(Xn)-(Xn-1)| ;seuil=e ; terme_max=nmax
  
%calcule les termes de la suite (Xn) 
%jusqu’à ce que le pas soit inférieure à un seuil e
X(1)=x0;
pas=x0;
i=1;
while (pas >=e)
     X(i+1)=g(X(i));
     pas=abs(X(i+1)-X(i));
     i=i+1;
end
N=i-1;

if ((pas<e) & (N == nmax))
  bool =1
  disp("Convergence")
  else
  bool=0
  disp("Pas de Convergence")
end

disp(sprintf("Convergence numerique au seuil %f atteinte en %d iterations",e,N))
disp(sprintf("les termes de Xn jusqu'a ce que le pas soit inferieur a %f sont:",e))
 
 
 
   
   
   