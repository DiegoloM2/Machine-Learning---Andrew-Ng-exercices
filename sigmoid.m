function g = sigmoid(z); 
%SIGMOID Compute sigmoid function
%   g = SIGMOID(z) computes the sigmoid of z.

% You need to return the following variables correctly 
g = zeros(size(z));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the sigmoid of each value of z (z can be a matrix,
%               vector or scalar).

if length(z) > 1;
  e = exp(1)*ones(size(z)); 
  g = 1 ./ (1 + (1 ./ e.^(z) ) );
  
else 
  e = exp(1); 
  g = 1/(1 + (1/e^(z))); 
  
  
endif; 

endfunction; 


#this is the sigmoid function done!!!!

