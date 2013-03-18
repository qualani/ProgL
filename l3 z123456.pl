%1
perm([],[]).
perm([H|T],X):- perm(T,Y),select(H,X,Y).

%2
filter([],[]).
filter([H|T],[H|PLUS]):- H>=0, ! , filter(T,PLUS).
filter([H|T],PLUS):- H<0, filter(T,PLUS).

count(_,[],0).
count(E, [E|T], C) :-!,count(E, T, C1),C is C1 + 1.
count(E, [_|T], C) :- count(E, T, C).

exp(_,0,1):- !.
exp(A,P,W):- P>0, P1 is P-1, exp(A,P1,S), W is S*A.

%3
factorical(N,M):-factorical(N,1,M).
factorical(0,A,A).
factorical(N,A,M):-N>0, N1 is N-1, A1 is A*N, factorical(N1,A1,M).

cn(D,N):-cn(D,0,N).
cn([],A,A).
cn([H|T],A,R):- A1 is A*10+H, cn(T,A1,R).

decimal(N,M):- N>0, decimal(N,X),reverse(M,X).
decimal(N,[N]):- N is N mod 10.
decimal(N,[H|T]):- H is N mod 10, Nh is (N-H)/10, decimal(Nh,T).

%4
select_min([H|S],M,R):- select_min2([H|S],M,H),select(M,[H|S],R).
select_min2([],M,M).
select_min2([H|T],M,R):- H < R, ! , select_min2(T,M,H).
select_min2([_|T],M,R):- select_min2(T,M,R).

sel_sort(X,Y):- sel_sort(X,Y,[]).
sel_sort([],X,Y):- reverse(X,Y).
sel_sort(X,Y,Z):- select_min(X,M,R), select(M,X,R), ! , sel_sort(R,Y,[M|Z]).


%5
insert([H|T],E,W):- E>H, select(H,W,W2), ! , insert(T,E,W2).
insert([],E,[E]).
insert([H|T], E,W):- E =< H , W = [E, H|T].

ins_sort(L,W):- ins_sort(L,W,[]).
ins_sort([],X,X).
ins_sort([H|T],W,B):- insert(B,H,B2), ins_sort(T,W,B2).

%6
len([],[]).
len([H|T],[H1|T1]) :-len(T,T1).

reverse(X,Y) :-len(X,Y),reverse(X,[],Y).

reverse([],A,A).
reverse([H|T],A,Y) :-reverse(T,[H|A],Y).









