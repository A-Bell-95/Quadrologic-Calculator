-module(calc).
-export([rand_flag/0, conjuction/2, disjuction/2, implication/2]).

rand_flag() -> rand:uniform(3).

conjuction({Oper1, Oper2}, Flag) ->
    io:format("Random flag = ~p~n", [Flag]),
    io:format("Result of conjuction: ~n"),
    case Flag of
        1 ->
            List = [["PO", "AV", "NE", "AV"],
                   ["PO", "PO", "NE", "PO"],
                   ["PO", "AV", "PO", "AV"],
                   ["AV", "PO", "AV", "PO"]],
            Result = lists:nth(Oper1, List),
            io:format("~p~n", [lists:nth(Oper2, Result)]);
        2 ->
            List = [["PO", "AV", "AV", "UN"],
                   ["AV", "AV", "AV", "AV"],
                   ["AV", "AV", "NE", "UN"],
                   ["UN", "AV", "UN", "UN"]],
            Result = lists:nth(Oper1, List),
            io:format("~p~n", [lists:nth(Oper2, Result)]);
        3 ->
            List = [["PO", "AV", "AV", "PO"],
                   ["AV", "AV", "AV", "UN"],
                   ["AV", "AV", "NE", "UN"],
                   ["UN", "UN", "UN", "UN"]],
            Result = lists:nth(Oper1, List),
            io:format("~p~n", [lists:nth(Oper2, Result)])
    end.

disjuction({Oper1, Oper2}, Flag) ->
    io:format("Random flag = ~p~n", [Flag]),
    io:format("Result of disjuction: ~n"),
    case Flag of
        1 ->
            List = [["PO", "PO", "PO", "PO"],
                   ["PO", "AV", "AV", "AV"],
                   ["PO", "AV", "NE", "NE"],
                   ["PO", "AV", "NE", "UN"]],
            Result = lists:nth(Oper1, List),
            io:format("~p~n", [lists:nth(Oper2, Result)]);
        2 ->
            List = [["PO", "PO", "PO", "PO"],
                   ["PO", "AV", "AV", "AV"],
                   ["PO", "AV", "NE", "AV"],
                   ["PO", "AV", "AV", "UN"]],
            Result = lists:nth(Oper1, List),
            io:format("~p~n", [lists:nth(Oper2, Result)]);
        3 ->
            List = [["PO", "PO", "PO", "PO"],
                   ["PO", "AV", "AV", "AV"],
                   ["PO", "AV", "NE", "UN"],
                   ["PO", "AV", "UN", "UN"]],
            Result = lists:nth(Oper1, List),
            io:format("~p~n", [lists:nth(Oper2, Result)])
    end.

implication({Oper1, Oper2}, Flag) ->
    io:format("Random flag = ~p~n", [Flag]),
    io:format("Result of implication: ~n"),
    case Flag of
        1 ->
            List = [["PO", "AV", "NE", "AV"],
                   ["PO", "PO", "NE", "PO"],
                   ["PO", "AV", "PO", "AV"],
                   ["AV", "PO", "AV", "PO"]],
            Result = lists:nth(Oper1, List),
            io:format("~p~n", [lists:nth(Oper2, Result)]);
        2 ->
            List = [["PO", "NE", "NE", "UN"],
                   ["PO", "PO", "NE", "AV"],
                   ["PO", "NE", "PO", "UN"],
                   ["UN", "AV", "UN", "AV"]],
            Result = lists:nth(Oper1, List),
            io:format("~p~n", [lists:nth(Oper2, Result)]);
        3 ->
            List = [["AV", "NE", "NE", "UN"],
                   ["PO", "PO", "NE", "UN"],
                   ["AV", "NE", "PO", "UN"],
                   ["UN", "UN", "UN", "UN"]],
            Result = lists:nth(Oper1, List),
            io:format("~p~n", [lists:nth(Oper2, Result)])
    end.
