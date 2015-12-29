tran(eins,one).
tran(zwei,two).
tran(drei,three).
tran(vier,four).
tran(fuenf,five).
tran(sechs,six).
tran(sieben,seven).
tran(acht,eight).
tran(neun,nine).

listtran([], []).
listtran([GermanWord|German], [EnglishWord|English]) :-
  tran(GermanWord,EnglishWord),
  listtran(German, English).

% ?- listtran(X,[one,seven,six,two]).
% X = [eins, sieben, sechs, zwei].  
