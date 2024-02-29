defmodule KitchenCalculator do
  def get_volume({:cup, val}) do
    val
  end

  def get_volume({:fluid_ounce, val}) do
    val
  end

  def get_volume({:teaspoon, val}) do
    val
  end

  def get_volume({:tablespoon, val}) do
    val
  end

  def get_volume({:milliliter, val}) do
    val
  end

  def to_milliliter({:milliliter, val}) do
    {:milliliter, val}
  end

  def to_milliliter({:cup, val}) do
    {:milliliter, val * 240}
  end

  def to_milliliter({:fluid_ounce, val}) do
    {:milliliter, 30 * val}
  end

  def to_milliliter({:teaspoon, val}) do
    {:milliliter, val * 5}
  end

  def to_milliliter({:tablespoon, val}) do
    {:milliliter, val * 15}
  end

  def from_milliliter({:milliliter, val}, :milliliter) do
    {:milliliter, val}
  end

  def from_milliliter({:milliliter, val}, :cup) do
    {:cup, val / 240}
  end

  def from_milliliter({:milliliter, val}, :fluid_ounce) do
    {:fluid_ounce, val / 30}
  end

  def from_milliliter({:milliliter, val}, :teaspoon) do
    {:teaspoon, val / 5}
  end

  def from_milliliter({:milliliter, val}, :tablespoon) do
    {:tablespoon, val / 15}
  end

  def convert({:teaspoon, val}, :tablespoon) do
    {:tablespoon, val / 3}
  end

  def convert({:cup, val}, :fluid_ounce) do
    {:fluid_ounce, 8 * val}
  end

  def convert({:fluid_ounce, val}, :teaspoon) do
    {:teaspoon, 6 * val}
  end

  def convert({:tablespoon, val}, :cup) do
    {:cup, val / 16}
  end
end

