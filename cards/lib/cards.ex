defmodule Cards do
  @moduledoc """
    Provides methods for creating and handling a deck of cards
  """


  @doc """
    Returns a list of strings representing a deck os playing cards
  """
  def create_deck do
    values = ["Ace", "Two", "Three", "Four", "Five"]
    suits = ["Spades", "Clubs", "Hearts", "Diamonds"]


    for suit <-suits, value <- values do
      "#{value} of #{suit}"
    end
  end

  def shuffle(deck) do
    Enum.shuffle(deck)
  end

  @doc """
    Determines whether a deck contains a given card

    ## Examples

          iex> deck = Cards.create_deck
          iex> Cards.contains?(deck, "Ace of Spades")
          true
  """
  def contains?(deck, card) do
    Enum.member?(deck, card)
  end

  @doc """
    Divides a deck into a hand and the remainder of the deck.
    The `hand_zize` argument indicates how many cards should be in the hand.

    ## Examples

          iex> deck = Cards.create_deck
          iex> {hand, deck} = Cards.deal(deck, 1)
          iex> hand
          ["Ace of Spades"]
  """
  def deal(deck, hand_size) do
    Enum.split(deck, hand_size)
  end

  @doc """
    Save a deck into a file.
    The `deck` argument represents a deck.
    The `filaname` represents a name to your file that will be save the deck

    ## Examples
          iex> deck = Cards.create_deck
          iex> Cards.save(deck, 'test_filename')
          :ok
  """
  def save(deck, filename) do
    binary = :erlang.term_to_binary(deck)
    File.write(filename, binary)
  end

  def load(filename) do
    # here is assigning and comparing using pattern matchiing
    case File.read(filename) do
      {:ok, binary} -> :erlang.binary_to_term binary
      {:error, _reason} -> "That file does not exist"
    end
  end

  def create_hand(hand_size) do
    # pipe operator
    Cards.create_deck
    |> Cards.shuffle
    |> Cards.deal(hand_size)
  end
end
