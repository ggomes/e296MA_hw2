% E296, HW2
rng(5412453)

expo = makedist('Exponential');
expo.mu = 100;

disp('The formula for exponential distribution is (1/mu)exp(-x/mu), x > 0');

disp(['Mean: ' string(expo.mean())]);
disp(['Median: ' string(expo.median())]);
disp(['IQR: ' string(expo.iqr())]);
disp(['Variance: ' string(expo.var())]);
disp(['Standard Deviation: ' string(sqrt(expo.var()))]);

small_vect = random(expo,[2,1]);
medium_vect = random(expo,[10,1]);
large_vect = random(expo,[100,1]);

pdf = expo.pdf(linspace(0,1000,1000));

histogram(large_vect,'Normalization','pdf')
hold on
plot(pdf)
hold off

waitforbuttonpress

small_mat = random(expo,[2,1000]);
medium_mat = random(expo,[10,1000]);
large_mat = random(expo,[1000,1000]);

small_mat_means = mean(small_mat);
medium_mat_means = mean(medium_mat);
large_mat_means = mean(large_mat);

hold on
histfit(small_mat_means)
alpha(0.5)
histfit(medium_mat_means)
alpha(0.5)
histfit(large_mat_means)
alpha(0.5)

disp(['These plots are an illustration that sample means of iid random ' ...
      'variables with finite means and variances converge in ' ...
      'distribution to normals.'])