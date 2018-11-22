-module(figuren).
-export([omtrek/1]).

omtrek({vierkant, Zijde}) ->
    4*Zijde;
omtrek({rechthoek, Breedte, Hoogte}) ->
    2*(Breedte + Hoogte);
omtrek({cirkel, Straal}) ->
    2*math:pi()*Straal.
