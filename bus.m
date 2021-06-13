clc 
clear all
x = input('Sisteme ait dugum sayisini giriniz: ');

for i = 1:1:x
    for j =1:1:x
        if(i==j)
            a(i,j) = input(strcat('Admintans degerini giriniz Y',int2str(i),int2str(0),': '));
        else
            a(i,j) = input(strcat('Admintans degerini giriniz Y',int2str(i),int2str(j),': '));
        end
    end
end
b=a; y =0;
for i=1:1:x
    for j = 1:1:x
        if i ==j
            for k=1:1:x
                y=y+b(i,k);
            end
            a(i,j) = y;
            y=0;
        else
            a(i,j) = -b(i,j);
        end
    end
end
disp("Sistem degerler matrisi")
b
disp('Bara Admintans Matrisi')
ybus = a