addone([], []).
addone([A|Tail], [IncA|IncTail]) :- 
    IncA is A + 1,
    addone(Tail, IncTail).
