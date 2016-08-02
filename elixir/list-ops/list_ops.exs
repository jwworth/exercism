defmodule ListOps do
  # Please don't use any external modules (especially List) in your
  # implementation. The point of this exercise is to create these basic functions
  # yourself.
  #
  # Note that `++` is a function from an external module (Kernel, which is
  # automatically imported) and so shouldn't be used either.

  @spec count(list) :: non_neg_integer
  def count(list, result \\ 0)
  def count([_|t], result) do
    count(t, result + 1)
  end

  def count([], result) do
    result
  end

  @spec reverse(list) :: list
  def reverse(list, result \\ [])
  def reverse([h|t], result) do
    reverse(t, [h] ++ result)
  end

  def reverse([], result) do
    result
  end

  @spec map(list, (any -> any)) :: list
  def map(list, f, result \\ [])
  def map([h|t], f, result) do
    map(t, f, [f.(h)] ++ result)
  end

  def map([], _, result) do
    reverse(result)
  end

  @spec filter(list, (any -> as_boolean(term))) :: list
  def filter(list, f, result \\ [])
  def filter([h|t], f, result) do
    if f.(h), do: result = [h] ++ result
    filter(t, f, result)
  end

  def filter([], _, result) do
    reverse(result)
  end

  @type acc :: any
  @spec reduce(list, acc, ((any, acc) -> acc)) :: acc
  def reduce([h|t], acc, f) do
    reduce(t, f.(h, acc), f)
  end

  def reduce([], acc, _) do
    acc
  end

  @spec append(list, list) :: list
  def append(target, appendage) do
    reverse(reverse(appendage) ++ reverse(target))
  end

  @spec concat([[any]]) :: [any]
  def concat(list, result \\ [])
  def concat([h|t], result) do
    concat(t, reverse(h) ++ result)
  end

  def concat([], result) do
    reverse(result)
  end
end
