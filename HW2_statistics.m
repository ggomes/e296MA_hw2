%% 
clc;clear all;
% i. Use makedist to create an exponential distribution object. Set the mean () to 100.
pd=makedist('Exponential','mu',100);

% ii. What is the formula for the probability density function of this distribution?

% The formula for the porbability density function of the distributions is
%       f(x,lambda)=lambda*exp(-lambda*x)

% iii. Use Matlab to find its mean, median, interquartile range, variance, and standard
% deviation.
mean1=mean(pd)
median1=median(pd)
interquatilerange1=iqr(pd)
variance1=var(pd)
STD1=std(pd)

% iv. Use Matlab's random to generate data sets sampled from this distribution. Create
% three data sets with 2, 10, and 1000 samples each.
rand2 = random(pd,1,2);
rand10 = random(pd,1,10);
rand1000 = random(pd,1,1000);

% v. Use histogram to plot a histogram for the data set with 1000 samples. Overlay this
% histogram with the pdf (Use linspace and pdf).
% Hint: histogram(data,`Normailization',`pdf')
%,linspace(min(rand1000),max(rand1000),20)
figure(1)
histogram(rand1000 ,'Normalization','pdf')
hold on
x=linspace(1,1000);
y=pdf(pd,x);
plot(x,y)
xlabel('Value')
ylabel('Probability')

% vi. Now use random to generate three matrices of samples; one 21000, another 101000,
% and another 10001000.

mrand2 = random(pd,2,1000);
mrand10 = random(pd,10,1000);
mrand1000 = random(pd,1000,1000);

% vii. Compute the sample means. You will get three arrays of size 11000 corresponding
% to averages of samples of size 2, 10, and 1000.
mean2=mean(mrand2);
mean10=mean(mrand10);
mean1000=mean(mrand1000);



% viii. Plot histograms of each of these arrays of sample means. Overlay the histograms
% with a Gaussian dt. Hint: histfit.
figure(2)

subplot(3,1,1)
histogram(mrand2,'Normalization','pdf');
h1=histfit(mean2);
set(h1(1),'facecolor','g'); 
axis([-50, 250,0,110])
title('2X1000')
subplot(3,1,2)
histogram(mrand10,'Normalization','pdf');
h2=histfit(mean10);
set(h2(1),'facecolor','r'); 
axis([0, 200,0,110])
title('10X1000')


subplot(3,1,3)
histogram(mrand1000,'Normalization','pdf');
h3=histfit(mean1000);
set(h3(1),'facecolor','b'); 
axis([0, 200,0,110])
title('1000X1000')

xlabel('Value')

% legend('histogram for 1000 samples',' Mean of 2X1000','Fit line' ,' Mean of 10X1000','Fit line' ,' Mean of 1000X1000','Fit line')

% ix. How does this result relate to the Central Limit Theorem?

% This behavior matches the central limit theorem. As the number of the
% data increases, the mean of all samples from the same population will be
% approximately equal to the mean of the population.