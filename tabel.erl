-module(tabel).
-export([info/1, lookup/2, delete/2, foldl/1, foldr/1, lokaal/2, alles/1, new/0, loop/0, maak_tabel/0]).

-record(les, {vak, lokaal, docent}). % les record

info(LT) ->
    ets:info(LT).

lookup(LT, Key) -> 
    ets:lookup(LT, Key).

delete(LT, Key) ->
    ets:delete(LT, Key).

foldl(LT) ->
    ets:foldl(fun(T, Acc)-> [T | Acc] end, [], LT).

foldr(LT) ->
    ets:foldr(fun(T, Acc)-> [T | Acc] end, [], LT).

lokaal(LT, Lokaal) ->
    F = fun 
            (T, Acc) when T#les.lokaal==Lokaal ->
                [T | Acc];
            (_, Acc) ->
                Acc
        end,
    ets:foldr(F, [], LT).

alles(LT) ->
    stap(LT, ets:first(LT)).

stap(_LT, '$end_of_table') ->
    einde;
stap(LT, Key) ->
    io:format("key  ~p~n", [Key]),
    stap(LT, ets:next(LT, Key)).

new() ->
    LesTabel = ets:new(lessen, [named_table, {keypos, #les.vak}]),
    ets:insert(LesTabel, #les{vak="RTOS",  lokaal="B10kapot",    docent="RuLe"}),
    ets:insert(LesTabel, #les{vak="INTAP", lokaal="B102kapot",   docent="RuLe"}),
    ets:insert(LesTabel, #les{vak="JAVA",  lokaal="B10ookkapot", docent="RuLe"}),
    ets:insert(LesTabel, #les{vak="GWEBA", lokaal="B10kapot",    docent="RuLe"}),
    LesTabel.

loop() ->
    io:format("loop~n", []),
    receive
        X ->
            io:format("receive ~p~n", [X]),
            loop()
    end.

maak_tabel() ->
    Pid = spawn(tabel, loop, []),
    Tab = new(),
    ets:give_away(Tab, Pid, []),
    Tab.