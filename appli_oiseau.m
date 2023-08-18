%script application_oiseau
  
  g=@(x)0.9*x+100;  %
  x=0:1:2000; %intervalle de representation de de g
  y=g(x);
  figure()
  axis([0 2000 0 2000])
  grid()
  hold()
  plot(x,y) %courbe de g(x)
  plot(x,x) %courbe de y=x
  xlabel('X....')
  ylabel('Y....')
  
  %Pour x0=1600 , calculons les premiers termes de la suite (Xn)
  N=100;  %nombre de termes
  x0=1600; %moi meme je choisis le premier terme
  S=calcul_suite(x0,g,N-1) %Calcul des (N)premiers termes de la suite
  %graphe de la suite des points(Xn,Xn+1)
   for i=1:N-2
     plot([S(i)],[S(i+1)],'bo')
   end
   plot([S(1)],[S(2)],'g*') %premier terme
   plot([S(98)],[S(99)],'r*') %dernier terme
   
  legend(['g(x)..';'Y=x..';'(Xn,f(Xn))'])
  title("Courbe de g(x) et X(n) avec Xo=1600 et n=100 ")
  