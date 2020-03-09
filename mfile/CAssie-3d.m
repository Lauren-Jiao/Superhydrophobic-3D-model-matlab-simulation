function [ output_args ] = Untitled( input_args )
%UNTITLED 此处显示有关此函数的摘要
%   此处显示详细说明

%Cassie-3d-疏水模型建立

a=0:0.01:10;s=[];
n=1;%b/a模拟；
for a=0:0.01:10
f=(1/(1+a))*(1/(1+a));
b1(n)=a;
s(n)=f;%s(n)记录f的值；
n=n+1;
end
sitac=[];%赋予理论接触角空矩阵
c1=[];%cossitac
for n=1:1:1001;
c1(n)=s(n)*cos(110*pi/180)+s(n)-1;%求理论接触角，本征接触角按110°
sitac(n)=acos(c1(n))*180/pi;
end

b2=0:0.01:3;%a2为h/a

z=zeros(1001,301);

for a=1:1:1001
    for b=1:1:301
        z(a,b)=sitac(a);
    end
end
z=z';

mesh(b1,b2,z);
xlabel('b/a');
ylabel('h/a');
zlabel('Contact Angle(°)');

%%%%带格格
hold on
hold on
mesh(b1,b2,z);



end


