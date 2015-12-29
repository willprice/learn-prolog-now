a2b([],[]).
a2b([a|Ta],[b|Tb])  :-  a2b(Ta,Tb).

% ?- trace.
% Observe how a2b operates on a happy case
% ?- a2b([a,a,a,a],[b,b,b,b]).
% Observe how a2b operates false cases
% ?- a2b([a,a,a,a],[b,b,b]).
% ?- a2b([a,a,a],[b,b,b,b]).
% Observe how a2b operates with variables
% ?- a2b(X,[b,b,b,b]).
% ?- a2b([a,a,a,a], X).
% ?- a2b(X, Y).

combine1([], [], []).
combine1([Head1|Tail1], [Head2|Tail2], [Head1, Head2|Tail]) :-
  combine1(Tail1, Tail2, Tail).

combine2([], [], []).
combine2([Head1|Tail1], [Head2|Tail2], [[Head1, Head2]|Tail]) :-
  combine2(Tail1, Tail2, Tail).

combine3([], [], []).
combine3([Head1|Tail1], [Head2|Tail2], [j(Head1, Head2)|Tail]) :-
  combine3(Tail1, Tail2, Tail).
