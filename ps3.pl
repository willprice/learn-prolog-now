% [descend1].
% trace.
% descend(anne, caroline).
% notrace.

% [descend2].
% trace.
% descend(anne, caroline).
% notrace.

% [descend3].
% trace.
% descend(anne, caroline).
% notrace.
% This infinitely recurses due to the left recursive rule.

% [descend4].
% trace.
% descend(anne, caroline).
% notrace.
% Works fine on queries that are true, otherwise it infinitely recurses.

% [numeral1].
% numeral(succ(succ(succ(0)))).
% numeral(X).
% Generates numbers from 0 ... onwards

% [numeral2].
% numeral(succ(succ(succ(0)))).
% Behaves in same way as numeral1
% numeral(X).
% Recurses infinitely, essentially trying to count down from inifinity to 0.

% This describes a maze
% Describing the connections between points that are represented by numbers
connected(1,2).
connected(3,4).
connected(5,6).
connected(7,8).
connected(9,10).
connected(12,13).
connected(13,14).
connected(15,16).
connected(17,18).
connected(19,20).
connected(4,1).
connected(6,3).
connected(4,7).
connected(6,11).
connected(14,9).
connected(11,15).
connected(16,12).
connected(14,17).
connected(16,19).

% Tells you whether you can reach Y from X.
path(X, Y) :- connected(X, Y).
path(X, Y) :- connected(X, Z), path(Z, Y).

% ?- path(5, 10).
% true.

% ?- path(1, X).
% X = 2;
% false.

% ?- path(13, X).
% X = 14 ;
% X = 9 ;
% X = 17 ;
% X = 10 ;
% X = 18 ;
% false.

byCar(auckland,hamilton).
byCar(hamilton,raglan).
byCar(valmont,saarbruecken).
byCar(valmont,metz).

byTrain(metz,frankfurt).
byTrain(saarbruecken,frankfurt).
byTrain(metz,paris).
byTrain(saarbruecken,paris).

byPlane(frankfurt,bangkok).
byPlane(frankfurt,singapore).
byPlane(paris,losAngeles).
byPlane(bangkok,auckland).
byPlane(singapore,auckland).
byPlane(losAngeles,auckland).

% travel determines whether it is possible to travel from one place to another
% by chaining together different transport methods
travel(Source, Destination) :- byCar(Source, Destination).
travel(Source, Destination) :- byTrain(Source, Destination).
travel(Source, Destination) :- byPlane(Source, Destination).
travel(Source, Destination) :- byCar(Source, Intermediate),
                               travel(Intermediate, Destination).
travel(Source, Destination) :- byTrain(Source, Intermediate),
                               travel(Intermediate, Destination).
travel(Source, Destination) :- byPlane(Source, Intermediate),
                               travel(Intermediate, Destination).

% ?- travel(valmont, raglan).
% true.

% Let's find out how we can travel from valmont to raglan
travel(Source, Destination, go(Source, Destination)) :-
  byCar(Source, Destination);
  byTrain(Source, Destination);
  byPlane(Source, Destination).
travel(Source, Destination, go(Source, Intermediate, RestOfPath)) :-
  (
    byCar(Source, Intermediate);
    byTrain(Source, Intermediate);
    byPlane(Source, Intermediate)
  ),
  travel(Intermediate, Destination, RestOfPath).

% ?-  travel(valmont,losAngeles,X) .
% X = go(valmont, saarbruecken, go(saarbruecken, paris, go(paris, losAngeles))) ;
% X = go(valmont, metz, go(metz, paris, go(paris, losAngeles))) ;
% false.

% To get the method of transport, augment the travel definition to have separate
% clauses for each travel method, and add that method in the `go` part of the
% head.
