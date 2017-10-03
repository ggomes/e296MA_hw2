%% No.1
pd=makedist('exponential','mu',100)
plot(x,y)
%No.2
%% probabilty density function(pdf) Y
 % Y=f(x|mu)=1/mu * exp(-x/mu)

%No.3
mean(pd)
median(pd)
iqr(pd)
var(pd)
std(pd)

%No.4
random(pd,1,2)
random(pd,1,10)
tony=random(pd,1,1000)

%% No.5
histogram(tony,'Normalization','pdf')
hold on
x=linspace(0,1000) 
y=pdf(pd,x)

%No.6
a=random(pd,2,1000)
b=random(pd,10,1000)
c=random(pd,1000,1000)

%% No.7
m1=mean(a)
m2=mean(b)
m3=mean(c)

%% No.8
histogram(a,'Normalization','pdf')
hold on
x1=linspace(0,1000) 
y1=pdf(pd,x1)

%% histogram(b,'Normalization','pdf')
hold on
x2=linspace(0,1000) 
y2=pdf(pd,x2)

histogram(c,'Normalization','pdf')
hold on
x3=linspace(0,1000) 
y3=pdf(pd,x3)
subplot(3,1,1)
h=histfit(m1)
subplot(3,1,2)
h=histfit(m2)
subplot(3,1,3)
h=histfit(m3)

%N0.9
%% The central limit theorem (CLT) is a statistical theory 
%  is quite fit w/ this hsifit plot result, as you can see from the plot,
%  we can fairly say the result is pretty much close to the CLT


