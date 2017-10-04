%% Homework2 from Kun Yang
clear;
clc;
%% 1
pd = makedist('Exponential','mu',100);
%% 2
% What is the formula for the probability density function of this
% diatribution?
% when x>0 : f(x)=1/mu * exp(-x/mu);
% x<=0 : f(x)=0
%% 3
m=mean(pd);
med=median(pd);
r=iqr(pd);
v=var(pd);
s=std(pd);
%% 4
set2=random(pd,1,2);
set10=random(pd,1,10);
set1000=random(pd,1,1000);
%% 5
figure(1);
histogram(set1000,'Normalization','pdf');
hold on
x=linspace(0,1000);
y=pdf(pd,x);
plot(x,y);
%% 6
samp2=random(pd,2,1000);
samp10=random(pd,10,1000);
samp1000=random(pd,1000,1000);
%% 7
m2=mean(samp2);
m10=mean(samp10);
m1000=mean(samp1000);
%% 8
figure(2);
histfit(m2,20,'Normal');
figure(3);
histfit(m10,20,'Normal');
figure(4);
histfit(m1000,20,'Normal');
%% 9
%How dose this result relate to the Central Limit Theorem?
% It proves the Central Limit Theorm.
% The central limit theorem (CLT) is a statistical theory that states that given a sufficiently large sample size from a population with a finite level of variance, the mean of all samples from the same population will be approximately equal to the mean of the population.
% We can find that with the sample becomming larger, the mean of samples
% fit normal distribution better.