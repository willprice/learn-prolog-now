house_elf(dobby).
witch(hermione).
witch('McGonagall').
witch(rita_skeeter).
magic(X) :- house_elf(X).
magic(X) :- wizard(X).
magic(X) :- witch(X).

% ?- magic(house_elf).
% false.
% The first definition of magic says that
% X is magic if the rule house_elf(X) is present, not the fact house_elf.

% ?- magic(harry).
% false.

% ?- magic(wizard).
% false.

% ?- magic('McGonagall').
% true.

% magic(Hermione).
% Hermione = dobby;
% Hermione = hermione;
% Hermione = 'McGonagall';
% Hermione = rita_skeeter;
