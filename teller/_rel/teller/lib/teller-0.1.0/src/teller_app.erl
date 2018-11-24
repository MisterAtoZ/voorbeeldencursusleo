-module(teller_app).
-behaviour(application).

-export([start/2, stop/1]).

start(_Type, _Args) ->
    teller:start().

stop(_State) ->
    ok.