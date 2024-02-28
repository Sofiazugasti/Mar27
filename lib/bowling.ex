defmodule Bowling do
  def score([])do
    0
  end
  def score([[a, b | _] | others]) when a == 10, do: a + hd(hd(others)) + hd(tl(hd(others))) + score(others)
  def score([[a, b | _] | others]) when a + b == 10, do: a + b + hd(hd(others)) + score(others)
  def score([[10, nil] | others]) do
    10 + hd(hd(others)) + hd(tl(hd(others))) + score(others)
  end
  def score([[a, b | _] | others]), do: a + b + score(others)
end
