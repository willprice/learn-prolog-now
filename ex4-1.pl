% ?- [a,b,c,d]  =  [a,[b,c,d]].
% false.

% ?- [a,b,c,d]  =  [a|[b,c,d]].
% true.

% ?- [a,b,c,d]  =  [a,b,[c,d]].
% false.

% ?- [a,b,c,d]  =  [a,b|[c,d]].
% true.

% ?- [a,b,c,d]  =  [a,b,c,[d]].
% false.

% ?- [a,b,c,d]  =  [a,b,c|[d]].
% true.

% ?- [a,b,c,d]  =  [a,b,c,d,[]].
% false.

% ?- [a,b,c,d]  =  [a,b,c,d|[]].
% true.

% ?- []  =  _.
% true.

% ?- []  =  [_].
% false.

% ?- []  =  [_|[]].
% false.
