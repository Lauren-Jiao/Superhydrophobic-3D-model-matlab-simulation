function [ output_args ] = Untitled( input_args )
%UNTITLED �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��

%Cassie-3d-��ˮģ�ͽ���

a=0:0.01:10;s=[];
n=1;%b/aģ�⣻
for a=0:0.01:10
f=(1/(1+a))*(1/(1+a));
b1(n)=a;
s(n)=f;%s(n)��¼f��ֵ��
n=n+1;
end
sitac=[];%�������۽Ӵ��ǿվ���
c1=[];%cossitac
for n=1:1:1001;
c1(n)=s(n)*cos(110*pi/180)+s(n)-1;%�����۽Ӵ��ǣ������Ӵ��ǰ�110��
sitac(n)=acos(c1(n))*180/pi;
end

b2=0:0.01:3;%a2Ϊh/a

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
zlabel('Contact Angle(��)');

%%%%�����
hold on
hold on
mesh(b1,b2,z);



end


