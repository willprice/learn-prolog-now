twice([Head], [Head, Head]).
twice([Head|Tail], [Head, Head|DuplicatedTail]) :-
  twice(Tail, DuplicatedTail).
