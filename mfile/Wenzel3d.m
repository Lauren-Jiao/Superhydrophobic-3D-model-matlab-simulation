function [ output_args ] = Untitled( input_args )
%UNTITLED �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��

%Wenzel-3d-����

a=0:0.1:10;s=[];
n1=1;%b/aģ�⣻
for a=0:0.1:10
f=(1/(1+a))*(1/(1+a));%fΪ���γߴ�ȷ������
a1(n1)=a;
s(n1)=f;%s(n)��¼f��ֵ��
n1=n1+1;
end
n2=1;
for b=0:0.1:3
a2(n2)=b;
s1(n2)=b;%s(n)��¼h/a��ֵ��
n2=n2+1;
end

%����
w1=[];
sitaw=[];
n=1;
for m=1:1:101
    w1(m)=(1+2*s(m)*1)*cos(110*pi/180);
    sitaw(m)=acos(w1(m))*180/pi;
end%�����۽Ӵ��ǣ������Ӵ��ǰ�110��

    
%
sitaw=zeros(101,31);%�������۽Ӵ��ǿվ���
w1=zeros(101,31);%cossitaw

for n1=1:1:101;
    for n2=1:1:31;
w1(n1,n2)=(1+0.4*s(n1)*s1(n2))*(cos(110*pi/180));%�����۽Ӵ��ǣ������Ӵ��ǰ�110��
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
