%Script Test_pointfixe

%g: fonction anonyme
  g=@(x)log(x)+1.1;
%Representation de g
  figure()
  axis([0 2 0 2]) %intervalle de representation de g
  grid()
  hold()
  x=0:0.1:5; 
  y=g(x);
  plot(x,y) %courbe de g(x)
  plot(x,x) %courbe de y=x
  %calculons les n premiers termes de la suite (Xn)
  %Pour x0=1, N=20, g(x)=ln(x)+1.1
  N=50;  %nombre de termes
  x0=1; %moi meme je choisis le premier terme
  disp(sprintf("les %d premiers termes de Xn sont:",N))
  S=calcul_suite(x0,g,N)
 %graphe de la suite des points(Xn,Xn+1)
   for i=1:N-1
     plot([S(i)],[S(i+1)],'bo')
   end
   plot([S(1)],[S(2)],'g*') %premier terme
   plot([S(49)],[S(50)],'r*') %dernier terme
  %legend(['g(x)..';'Y=x..';'(Xn,f(Xn))'])
  title("Courbe de g(x) et X(n) avec Xo=1.1 et N=50 ")
  
  convergence(1.1,@(x)log(x)+1.1,10^(-3),50) 