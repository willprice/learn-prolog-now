% Draw the search trees for the following queries:
member(X, [X|T]).
member(X, [H|T]) :- member(X, T).

% ?-  member(a,[c,b,a,y]).
% |- member(a, [c|[b,a,y]]) -> false.
% |- member(a, [b,a,y])
%    |- member(a, [b|[a,y]]) -> false
%    |- member(a, [a, y])
%       |- member(a, [a|[y]]) -> true

% ?-  member(x,[a,b,c]).
% |- member(x, [a|[b,c]]) -> false
% |- member(x, [b, c])
%    |- member(x, [b|[c]]) -> false
%    |- member(x, [c])
%       |- member(x, [c|[]]) -> false
%       |- member(x, []) -> false.

% ?-  member(X,[a,b,c]).
% |- member(X, [a|[b,c]]).
% X = a.
