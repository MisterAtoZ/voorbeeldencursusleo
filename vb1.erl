-module(vb1).
-export([dubbel/1, start/0, doetest/1, insert/2, beach/1, lengtetail/1, lengtetail/2]).
-vsn([1.0]).
-author("Leo Rutten").

dubbel(X) ->
    2*X.

start() ->
    G = dubbel(5),
    io:format("getal is ~B~n", [G]).

doetest(Y) ->
    if Y>5 -> io:format("positief!~n");
        true -> io:format("niet positief~n")
    end.

insert(Y, []) ->
    [Y];
insert(Y,Set) ->
    case lists:member(Y,Set) of
        true  -> Set;
        false -> [Y|Set]
    end.

beach(Temperature) ->
    case Temperature of 
        {celsius, N} when N >= 20, N =< 45 ->
            'favorable';
        {kelvin, N} when N >= 293, N =< 318 ->
            'scientifically favorable';
        {fahrenheit, N} when N >= 68, N =< 113 ->
            'favorable in the US';
        _   ->
                'avoid beach'
    end.

lengtetail(L) ->
    lengtetail(L, 0).

lengtetail([], Acc) ->
    Acc;
lengtetail([X | Rest], Acc) ->
    L = 1 + Acc,
    lengtetail(Rest, L).
