function [ output_args ] = Untitled( input_args )
%UNTITLED 此处显示有关此函数的摘要
%   此处显示详细说明

%Wenzel-3d-建立

a=0:0.1:10;s=[];
n1=1;%b/a模拟；
for a=0:0.1:10
f=(1/(1+a))*(1/(1+a));%f为几何尺寸确定因子
a1(n1)=a;
s(n1)=f;%s(n)记录f的值；
n1=n1+1;
end
n2=1;
for b=0:0.1:3
a2(n2)=b;
s1(n2)=b;%s(n)记录h/a的值；
n2=n2+1;
end

%试验
w1=[];
sitaw=[];
n=1;
for m=1:1:101
    w1(m)=(1+2*s(m)*1)*cos(110*pi/180);
    sitaw(m)=acos(w1(m))*180/pi;
end%求理论接触角，本征接触角按110°

    
%
sitaw=zeros(101,31);%赋予理论接触角空矩阵
w1=zeros(101,31);%cossitaw

for n1=1:1:101;
    for n2=1:1:31;
w1(n1,n2)=(1+0.4*s(n1)*s1(n2))*(cos(110*pi/180));%求理论接触角，本征接触角按110°
sitaw(n1,n2)=acos(w1(n1,n2))*180/pi;
    end
end
n2=1;
for n1=1:1:101
    sitaw(n1,n2)=acos(w1(n1,n2))*180/pi;
end
    sitaw(1,1)=acos(w1(1,1))*180/pi
end
for n1=1:1:101;
    for n2=1:1:31;
z(n1,n2)=(cos(85*pi/180));
    end
end
