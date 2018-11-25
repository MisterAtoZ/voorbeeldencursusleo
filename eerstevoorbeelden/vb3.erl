-module(vb3).
-export([ontvanger/0]).


ontvanger() ->
    receive
        hallo ->
            io:format("hallo~n"),
            ontvanger();
        bericht ->
            io:format("bericht~n"),
            ontvanger();
        _->
            io:format("onbekend bericht~n"),
            ontvanger()
        end.
