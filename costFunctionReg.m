function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta

h = sigmoid(X*theta); 
J = (1/m) .* (   ( -y'*log(h) ) - (1 - y)'*log(1 - h)  ) +  ( (lambda / (2*m) ) * sum(theta(2:length(theta)).^2) ) ; 


grad(1) = (1/m) * ( ( h - y)'*X(:, 1)  ) ; 


% =============================================================


#now, I need to calculate the gradient for all j bigger than one. 

for j = 2:length(grad); 
  
  grad(j) = ((1/m) * ( (h - y)'*X(:, j) ) ) +  ( (lambda/m) * theta(j)  ) ; 

endfor; 

end

#this is all there is to the regularized cost function!!!!

