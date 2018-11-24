-module(simpeleteller_app). %%deze file appart compileren en dan in ebin map zetten
-behaviour(application).

-export([start/2]). %deze twee exports kunnen ook samen worden gezet
-export([stop/1]).

start(_Type, _Args) ->
    simpeleteller:start().

stop(_State) ->
    ok.
