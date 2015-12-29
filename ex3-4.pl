greater_than(succ(X), 0).
greater_than(succ(X), succ(Z)) :- greater_than(X, Y).
