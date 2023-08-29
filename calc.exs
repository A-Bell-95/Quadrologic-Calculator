defmodule Calc do

  def rand_flag(), do: :rand.uniform(3)

  def conjuction({oper1, oper2}, flag) do

    IO.puts("Random flag = #{flag}")
    IO.puts("Result of conjuction: ")

    case flag do
      1 -> tup = {{"PO", "AV", "NE", "AV"},
                  {"PO", "PO", "NE", "PO"},
                  {"PO", "AV", "PO", "AV"},
                  {"AV", "PO", "AV", "PO"}}
                  elem( elem(tup,oper1), oper2) |> IO.inspect()

      2 -> tup = {{"PO", "AV", "AV", "UN"},
			            {"AV", "AV", "AV", "AV"},
			            {"AV", "AV", "NE", "UN"},
			            {"UN", "AV", "UN", "UN"}}
                  elem( elem(tup,oper1), oper2) |> IO.inspect()

      3 -> tup = {{"PO", "AV", "AV", "PO"},
			            {"AV", "AV", "AV", "UN"},
			            {"AV", "AV", "NE", "UN"},
			            {"UN", "UN", "UN", "UN"}}
                  elem( elem(tup,oper1), oper2) |> IO.inspect()

      _ -> IO.puts("Oops, Flag is not right!")
    end
  end

  def disjuction({oper1, oper2}, flag) do

    IO.puts("Random flag = #{flag}")
    IO.puts("Result of disjuction: ")

    case flag do
      1 -> tup = {{"PO", "PO", "PO", "PO"},
			            {"PO", "AV", "AV", "AV"},
			            {"PO", "AV", "NE", "NE"},
			            {"PO", "AV", "NE", "UN"}}
                  elem( elem(tup,oper1), oper2) |> IO.inspect()

      2 -> tup = {{"PO", "PO", "PO", "PO"},
			            {"PO", "AV", "AV", "AV"},
			            {"PO", "AV", "NE", "AV"},
			            {"PO", "AV", "AV", "UN"}}
                  elem( elem(tup,oper1), oper2) |> IO.inspect()

      3 -> tup = {{"PO", "PO", "PO", "PO"},
			            {"PO", "AV", "AV", "AV"},
			            {"PO", "AV", "NE", "UN"},
			            {"PO", "AV", "UN", "UN"}}
                  elem( elem(tup,oper1), oper2) |> IO.inspect()

      _ -> IO.puts("Oops, Flag is not right!")
    end
  end

  def implication({oper1, oper2}, flag) do

    IO.puts("Random flag = #{flag}")
    IO.puts("Result of implication: ")

    case flag do
      1 -> tup = {{"PO", "AV", "NE", "AV"},
			            {"PO", "PO", "NE", "PO"},
			            {"PO", "AV", "PO", "AV"},
			            {"AV", "PO", "AV", "PO"}}
                  elem( elem(tup,oper1), oper2) |> IO.inspect()

      2 -> tup = {{"PO", "NE", "NE", "UN"},
			            {"PO", "PO", "NE", "AV"},
			            {"PO", "NE", "PO", "UN"},
			            {"UN", "AV", "UN", "AV"}}
                  elem( elem(tup,oper1), oper2) |> IO.inspect()

      3 -> tup = {{"AV", "NE", "NE", "UN"},
			            {"PO", "PO", "NE", "UN"},
			            {"AV", "NE", "PO", "UN"},
			            {"UN", "UN", "UN", "UN"}}
                  elem( elem(tup,oper1), oper2) |> IO.inspect()

      _ -> IO.puts("Oops, Flag is not right!")
    end
  end

end

# Вывод на экран с помощью процессов

# results = [
#   spawn(Calc, :conjuction, [Calc.param]),
#   spawn(Calc, :disjuction, [Calc.param]),
#   spawn(Calc, :implication,[Calc.param])
# ]

# Последовательный вывод на экран

# Для запуска программы введите значение операторов в кортеж {}, которые соответсвуют ниже
    #  "PO" = 0 , "AV" = 1, "NE" = 2, "UN" = 3

  {1,2} |> Calc.conjuction(Calc.rand_flag)
  {1,2} |> Calc.disjuction(Calc.rand_flag)
  {1,2} |> Calc.implication(Calc.rand_flag)
