%1
len(X,X):- len(X,0,X).
len([],X,X).
len([_|T],A,X):- A\==X, A1 is A + 1, len(T,A1,X).

%2
%trip(miasto1,miasto2,pelnatrasa)s
connection(wwa,lodz).
connection(wwa,zakopane).
connection(wwa,wro).
connection(wro,legnica).
connection(lodz,krakow).
connection(zakopane, krakow).

member(X,[X|_]):-!.
member(X,[_|T]):- member(X,T).

trip(A,B,T):- trip(A,B,[B],T).
trip(A,_,[H|O],T):-connection(X,H),not(member(X,[H|O])),trip(A,_,[X,H|O],T).
trip(A,_,[A|T],[A|T]).

%4
mirror(leaf,leaf).
mirror(node(L,N,R),T):- mirror(R,R1),mirror(L,L1),T=node(R1,N,L1).

flatten(leaf,[]).
flatten(node(L,E,R),Ls):- flatten(L,Ls1),append(Ls1,[E],Ls2),flatten(R,Ls3),append(Ls2,Ls3,Ls).
%%	test
% flatten(
% node(node(node(leaf,a,leaf),b,node(node(leaf,c,leaf),d,node(leaf,e,leaf))),f,node(leaf,g,node(node(leaf,h,leaf),i,leaf))),X).

%7
revall(X,R) :-revall(X,R,[]).
revall([],R,R):- !.
revall([H|T],X,Ac) :- revall(H,H1),!,revall(T,X,[H1|Ac]).
revall([H|T],X,Ac) :- revall(T,X,[H|Ac]).

%5
insert(I,leaf,node(leaf,I,leaf)) :- !.
insert(I,node(L,E,P),node(L1,E,P)) :- I < E,!,insert(I,L,L1).
insert(I,node(L,E,P),node(L,E,P1)) :-
insert(I,P,P1).

treeSort(X,Y) :-createTree(X,Z,leaf), flatten(Z,Y).
createTree([],X,X).
createTree([H|T],X,Y) :-insert(H,Y,Y1),createTree(T,X,Y1).




