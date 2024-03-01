defmodule Bowling do
  def score([])do
    0
  end
  def score([[a, _ | _] | others]) when a == 10 and hd(tl(hd(others))) == nil do
    a + hd(hd(others)) + hd(hd(tl(others))) + score(others)
  end
  def score([[a, b, c | _] | _]) when a == 10 and b == 10 and c == 10, do: a + b + c
  def score([[a, _ | _] | others]) when a == 10, do: a + hd(hd(others)) + hd(tl(hd(others))) + score(others)
  def score([[a, b | _] | others]) when a + b == 10, do: a + b + hd(hd(others)) + score(others)
  def score([[a,b  | _] | others]), do: a + b + score(others)

end
