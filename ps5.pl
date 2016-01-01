accMin([Int|IntTail], Min) :-
    accMin(IntTail, Int, Min).
accMin([], Min, Min).
accMin([Int|IntTail], Acc, Min) :-
    Int > Acc,
    accMin(IntTail, Acc, Min).
accMin([Int|IntTail], Acc, Min) :-
    Int =< Acc,
    accMin(IntTail, Int, Min).

scalarMult(_, [], []).
scalarMult(Int, [H|T], [ResultHead|ResultTail]) :-
    ResultHead is Int*H,
    scalarMult(Int, T, ResultTail).

dot([], [], []).
dot([H1|T1], [H2|T2], [HR|TR]) :-
    HR is H1*H2,
    dot(T1, T2, TR).
