-module(distrib_test).
-export([start_ontvanger/0, start_zender/2, loopo/0, loopz/0]).

start_ontvanger() ->
    Pid = spawn(distrib_test, loopo, []),
    register(ontvanger, Pid),
    Pid.

loopo() ->
    receive
        {bericht, I, Afzender} ->
            io:format("berichtje ~p ontvangen van ~p~n", [I, Afzender]),
            Afzender ! {antwoord, I, self()},
            loopo();
        X ->
            io:format("onbekend bericht ~p~n", [X]),
            loopo()
    end.

start_zender(N, Node) ->
    Pid = spawn(distrib_test, loopz, []),
    [ {ontvanger, Node} ! {bericht, I, Pid}|| I <- lists:seq(1,N)].

loopz() ->
    receive
        {antwoord, I, Afzender} ->
            io:format("antwoord ~p ontvangen van ~p~n", [I, Afzender]),
            loopz()
    end.
