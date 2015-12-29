% Which of the following are syntactically correct lists? For syntactically correct
% lists, write down how many elements are in the list

% [1|[2,3,4]]
% yes, 4 elements

% [1,2,3|[]]
% yes, 3 elements

% [1|2,3,4]
% no

% [1|[2|[3|[4]]]]
% yes, 4 elements

% [1,2,3,4|[]]
% yes, 4 elements

% [[]|[]]
% yes, 1 element

% [[1,2]|4]
% no

% [[1,2],[3,4]|[5,6,7]]
% yes, 5 elements
