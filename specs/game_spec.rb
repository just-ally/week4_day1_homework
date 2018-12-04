require('minitest/autorun')
require_relative('../models/game.rb')

class GameTest < MiniTest::Test

  def setup
    @game1 = Game.new('rock', 'scissors')
    @game2 = Game.new('scissors', 'rock')
    @game3 = Game.new('scissors', 'paper')
    @game4 = Game.new('paper', 'scissors')
    @game5 = Game.new('paper', 'rock')
    @game6 = Game.new('rock', 'paper')
    @game7 = Game.new('rock', 'rock')
    @game8 = Game.new('paper', 'paper')
    @game9 = Game.new('scissors', 'scissors')
  end

  def test_rock_beats_scissors__first()
    assert_equal( "Player 1 wins by playing Rock!", @game1.play() )
  end

  def test_rock_beats_scissors__second()
    assert_equal( "Player 2 wins by playing Rock!", @game2.play() )
  end

  def test_scissors_beats_paper__first()
    assert_equal( "Player 1 wins by playing Scissors!", @game3.play() )
  end

  def test_scissors_beats_paper__second()
    assert_equal( "Player 2 wins by playing Scissors!", @game4.play() )
  end

  def test_paper_beats_rock__first()
    assert_equal( "Player 1 wins by playing Paper!", @game5.play() )
  end

  def test_paper_beats_rock__second()
    assert_equal( "Player 2 wins by playing Paper!", @game6.play() )
  end

  def test_same_item_chosen__rock()
    assert_equal( "It's a draw!", @game7.play() )
  end

  def test_same_item_chosen__paper()
    assert_equal( "It's a draw!", @game8.play() )
  end

  def test_same_item_chosen__scissors()
    assert_equal( "It's a draw!", @game9.play() )
  end

end
