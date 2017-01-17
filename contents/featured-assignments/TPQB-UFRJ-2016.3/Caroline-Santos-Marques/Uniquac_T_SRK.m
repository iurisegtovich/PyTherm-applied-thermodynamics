clear all
close all
clc
%Caroline Santos Marques Da Silva
%Segunda Parte do Trabalho de Termodinamica:
%Dado T e xi calcular Ponto de bolha e Ponto de orvalho
%Modelo de Uniquac
% (1) água
% (2) Etanol
x1=[0:0.001:1];
x2=1-x1;
R=8.314
q1=1.4;
q2=1.97;
r1=0.92;
r2=2.11;
z=10;
q1_linha=1;
q2_linha=0.92;

phi1=x1.*r1./((x1.*r1+x2.*r2));
phi2=x2.*r2./((x1.*r1+x2.*r2));
theta1=x1.*q1./((x1.*q1+x2.*q2));
theta2=x2.*q2./((x1.*q1+x2.*q2));
theta1_linha=x1.*q1_linha./((x1.*q1_linha+x2.*q2_linha));
theta2_linha=x2.*q2_linha./((x1.*q1_linha+x2.*q2_linha));
l1=z/2*(r1-q1)-(r1-1);
l2=z/2*(r2-q2)-(r2-1);
T=303;
a=1030.38;
b=-4.4853;
c=0.004108;
U12=a+b.*T+c.*T.*T;
d=-1881.18;
e=9.2619;
f=-0.009380;
U21=d+e.*T+f.*T.*T;  
tau12=exp(-U12./T);
tau21=exp(-U21./T);


gama1=exp(log(phi1./x1)+0.5.*z.*q1.*log(theta1./phi1)+phi2.*(l1-(r1/r2)*l2)...
      -q1_linha.*log(theta1_linha+theta2_linha.*tau21)+theta2_linha.*q1_linha...
      .*((tau21./(theta1_linha+theta2_linha.*tau21))-(tau12./(theta2_linha+theta1_linha.*tau12))));
  
  
  gama2=exp(log(phi2./x2)+0.5*z.*q2.*log(theta2./phi2)+phi1.*(l2-(r2/r1)*l1)...
      -q2_linha.*log(theta2_linha+theta1_linha.*tau12)+theta1_linha.*q2_linha...
      .*((tau12./(theta2_linha+theta1_linha.*tau12))-(tau21./(theta1_linha+theta2_linha.*tau21))));
  
  %Cálculo de Ponto de bolha:
  
  %Adotamos a simplificação: fugacidade da fase líquida = P1sat e que todos os coeficientes de fugacidade são iguais a 1, pois o
  %sistema opera em baixas pressões
  %As pressões de saturação da água foram calculadas pela equação cúbica de
  %estado SRK na primeira parte do trabalho.Portanto, para T=303K e T=295K
  
  %DadO T=303 K
 
  P1sat=3188.98136489

  P2sat=10125.2075135;

  
  %P1sat=4028.9061772324076;       %Antoine
  %P2sat=10325.26 ;                %Antoine
  
  
  Pb=P1sat.*gama1.*x1+P2sat.*gama2.*x2;
  
  %Ponto de Orvalho
  y1=x1;
  y2=x2;
  Po= P1sat.*gama1.*gama2.*P2sat./(y1.*P2sat.*gama2+y2.*P1sat.*gama1);
  
   
  plot(x2,Pb)
  hold on
  plot(y2,Po)

  pause
  
  %Letra b)
  
  %Calculo das propriedades de excesso:
  
  %G de excesso:
  
  %Parte Combinatória
Gc=x1.*log(phi1./x1)+x2.*log(phi2./x2)+0.5*z.*(x1*q1.*log((theta1./phi1)+x2.*q2.*log(theta2./phi2)));


% Parte Residual:
Gr=-x1.*q1_linha.*log(theta1_linha+theta2_linha.*tau21)-x2.*q2_linha.*log(theta2_linha+theta1_linha.*tau12);

G_excesso=Gc+Gr;
hold off
plot(x2,G_excesso);
hold on
%Sabemos que G/RT = H/RT + S/R
%Sabemos tbm que (d(G/T)/dt)=H_excesso/T^2
pause

H_excesso = -1*(-Gc) + (x1.*q1_linha.*(-theta2_linha.*exp(-U21./R*T).*(-1./R.*T.*T))./(theta1_linha+theta2_linha*exp(-U21/R*T))...
            -x2.*q2_linha.*((-theta1_linha.*exp(-U12./R*T).*(-1./R.*T.*T))./(theta2_linha+theta1_linha*exp(-U12/R*T)))...
            - Gr);

        pause
plot(x2,H_excesso,'r')
hold on

pause
S_excesso= G_excesso - H_excesso;

plot(x2,S_excesso,'k')
title('S_excesso')
close all 
pause
 
G= R*T*(x1.*log(x1)+x2.*log(x2)) + G_excesso
plot(x2,G)
  
  
  
  
  
