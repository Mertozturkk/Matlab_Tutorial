clc
clear all
format long
 
% For döngüsü içerisindeki bazı değişkenlerin hata verme olasılığı ortadan
% kaldırıldı.
x = 0;
y = 0;
 
 
PR = input ('Talep Edilen Gücün Değerini Giriniz = ');
 
n = input ('Generatör Sayısını Giriniz = ');
 
 
for i = 1 : 1 : n
    for j = 1 : 1 : 3
        fprintf("%d . Generatör %d . Sütuna Ait Katsayı",i,j)
        A(i,j) = input(' Değerini Giriniz = ');
    end    
end
 

 
for i = 1 : 1 : n    
        fprintf("%d . Generatörün PMIN",i)
        P(i,1) = input(' degerini Giriniz = ');       
end
 
 
for i = 1 : 1 : n    
        fprintf("%d . Generatörün PMAX",i)
        P(i,2) = input(' değerini Giriniz = ');       
end
 
disp('Oluşan Güçler Matrisi')
 
P
 
% bi'nin hesaplanması
 
for i = 1 : 1 : n
 
    x = (A(i,2)/(2*A(i,3))) + x; %A(i,2) ile fonksiyonlardaki b parametresini alıyoruz 
                                       %A(i,3) ile fonksiyonlardaki c
                                       %parametresini alıyoruz
end
 
for i = 1 : 1 : n
 
    y = (1/(2*A(i,3))) + y;
 
end
 
lambda = ((PR + x) / y)
 
format short
 
for i = 1 : 1 : n
 
    PM(i,1) = (lambda - A(i,2))/(2*A(i,3));
 
end
 
for i = 1 : 1 : n
 
    fprintf("\nP%d Gücü",i)
    PM(i,1)
end