-module(fouten).
-export([test/1]).

test(Fu) ->
    try Fu() of
        R -> R
    catch
        error:Fout -> {runtimefout, Fout};
        throw:Fout -> {throwfout, Fout}
    end.