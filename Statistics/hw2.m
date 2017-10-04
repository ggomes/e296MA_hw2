%% Problem 1.
% Use makedist to create an exponential distribution object. Set the mean (?) to 100.

mu = 100;
pd = makedist('exponential','mu',mu);

%% Problem 2.
% What is the formula for the probability density function of this distribution?
% Y=f(x|mu)=1/mu * exp(-x/mu);
%% Problem 3.
% Use Matlab to find its mean, median, interquartile range, variance, and
% standard deviation
mean0 = mean(pd)
median0 = median(pd)
r = iqr(pd)
v = var(pd)
s = std(pd)
%% Problem 4.
% Use Matlab?s random to generate data sets sampled from this distribution. 
% Create three data sets with 2, 10, and 1000 samples each.
set1 = random(pd,2,1);
set2 = random(pd,10,1);
set3 = random(pd,1000,1);
%% Problem 5.
% Use histogram to plot a histogram for the data set with 1000 samples. 
% Overlay this histogram with the pdf (Use linspace and pdf).
histogram(set3,'Normalization','pdf');hold on;
x=linspace(0,1000);
y = pdf(pd,x);
plot(x,y,'r');hold off;
%% Problem 6.
% Now use random to generate three matrices of samples; one 2×1000, another 10×1000,
% and another 1000×1000.
set4 = random(pd,2,1000);
set5 = random(pd,10,1000);
set6 = random(pd,1000,1000);
%% Problem 7.
% Compute the sample means. You will get three arrays of size 1×1000 corresponding
% to averages of samples of size 2, 10, and 1000.
m4=mean(set4);
m5=mean(set5);
m6=mean(set6);
%% Problem 8.
% Plot histograms of each of these arrays of sample means. Overlay the histograms
% with a Gaussian fit. Hint: histfit.
subplot(3,1,1);
histfit(m4);
subplot(3,1,2);
histfit(m5);
subplot(3,1,3);
histfit(m6)
%% Problem 9.
% How does this result relate to the Central Limit Theorem?
% Theory: Anything that results from the sum of a large number of similar and 
% independent random effects is likely to by normally distributed. 
% The histfit in Problem 8 looks like normally distributed which
% fits the Central Limit Theorem.
