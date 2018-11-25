-module(punten).
-export([new/0, test/0]).

-include("punt.hrl").

new() ->
    #punt{}.

test() ->
    R = #punt{x=4, y=5},
    _R2 = #punt{x=40, y=50},
    #punt{x=X, y=Y} = R,
    io:format("punt is ~p ~p~n", [X, Y]).