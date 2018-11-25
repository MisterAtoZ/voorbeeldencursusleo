-module(reeks).
-export([start/1]).

start(N) ->
    io:format("start~n"),
    C = self(),

    % start de processen
    % functie doet 1/I met als I alle waarden van de de loop (N)
    % deze waardes worden dan bij elkaar opgeteld om de uitkomst te krijgen
    [spawn(
        fun() ->
            io:format("reken met ~p~n", [I]),
            C ! 1/I
        end 
    ) || I <- lists:seq(1,N)],

    % wacht op antwoorden
    L = [receive T -> T end || _I <- lists:seq(1,N)],
    lists:foldl(fun(X, Som) -> X + Som end, 0, L).
