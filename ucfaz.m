f = input("Frekans Değerini Giriniz:(Khz) ");

t = 0:0.0001:1;
A = 220*sin(2*pi*(f)*t);
B = 220*sin(2*pi*(f*t - (120*(pi/180))); 
C = 220*sin(2*pi*(f*t + (120*(pi/180)));  
hold on;

plot(t,A,'r','linewidth',1);
plot(t,B,'g','linewidth',1);
plot(t,C,'b','linewidth',1);
legend('A fazı','B fazı','C fazı')