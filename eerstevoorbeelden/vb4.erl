-module(vb4).
-export([loop/0]).

loop() ->
    receive
        X ->    
            io:format("de helft is ~p~n", [X/2]),
            loop()
    end.