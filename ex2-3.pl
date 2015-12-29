word(determiner, a).
word(determiner, every).
word(noun, criminal).
word(noun, 'big kahuna burger').
word(verb, eats).
word(verb, likes).

sentence(W1, W2, W3, W4, W5) :-
  word(determiner, W1),
  word(noun, W2),
  word(verb, W3),
  word(determiner, W4),
  word(noun, W5).

% To find out the all the sentences in this grammar, we can pose the query:
% ?- sentence(W1, W2, W3, W4, W5).
% W1 = a, W2 = criminal, W3 = eats, W4 = W1, W5 = W2.
% W1 = a, W2 = criminal, W3 = eats, W4 = W1, W5 = 'big kahuna burger'.
% W1 = a, W2 = criminal, W3 = eats, W4 = every, W5 = W2.
% W1 = a, W2 = criminal, W3 = eats, W4 = every, W5 = 'big kahuna burger'.
% W1 = a, W2 = criminal, W3 = likes, W4 = W2, W5 = W2.
% ...
