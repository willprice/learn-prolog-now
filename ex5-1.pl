% ?- X = 3*4.
% X = 3*4.

% ?- X is 3*4.
% X = 12.

% ?- 4 is X.
% ERROR: is/2: Arguments are not sufficiently instantiated.

% ?- X = Y.
% X = Y.

% ?- 3 is 1+2.
% true.

% ?- 3 is +(1,2).
% true.

% ?- 3 is X+2.
% ERROR: is/2: Arguments are not sufficiently instantiated.

% ?- X is 1+2.
% X = 3.

% ?- 1+2 is 1+2.
% true.

% ?- *(7,5) = 7*5.
% true.

% ?- *(7,+3,2)) = 7*(3+2).
% true.

% ?- *(7,(3+2)) = 7*(3+2).
% true.

% ?- 7*3+2 = *(7, +(3,2)).
% false.

% ?- *(7, (3+2)) = 7*(+(3,2)).
% true.
