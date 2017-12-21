function p = predict(Theta1, Theta2, X)
%PREDICT Predict the label of an input given a trained neural network
%   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
%   trained weights of a neural network (Theta1, Theta2)

% Useful values
m = size(X, 1);
num_labels = size(Theta2, 1);

% You need to return the following variables correctly 
p = zeros(size(X, 1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned neural network. You should set p to a 
%               vector containing labels between 1 to num_labels.
%
% Hint: The max function might come in useful. In particular, the max
%       function can also return the index of the max element, for more
%       information see 'help max'. If your examples are in rows, then, you
%       can use max(A, [], 2) to obtain the max for each row.
%===== NGOC==========================
%add bias column 1's
X = [ones(rows(X),1) ,X];
%output layer 2
result_l2= sigmoid(X*Theta1');
%after apply theta 1 ,need to add bias unit 1s	
result_l2= [ones(rows(result_l2),1) ,result_l2];
result_l3=sigmoid(result_l2*Theta2');
%after apply theta 2
[result_l3,p]=max(result_l3,[],2);








% =========================================================================


end
