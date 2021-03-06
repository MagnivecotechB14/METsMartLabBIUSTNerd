function sim = gaussianKernel(x1, x2, sigma)
%RBFKERNEL returns a radial basis function kernel between x1 and x2
%   sim = gaussianKernel(x1, x2) returns a gaussian kernel between x1 and x2
%   and returns the value in sim

% Ensure that x1 and x2 are column vectors
x1 = x1(:); x2 = x2(:);

% You need to return the following variables correctly.
sim = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the similarity between x1
%               and x2 computed using a Gaussian kernel with bandwidth
%               sigma
%
%

%x1 = (x1 - (sum(x1) / size(x1))) / (max(x1) - min(x1));
%x1 = (x2 - (sum(x2) / size(x2))) / (max(x2) - min(x2));
z = sum((x1 - x2).^2);
sim  = exp (-z / (2 * (sigma^2)));




% =============================================================
    
end
