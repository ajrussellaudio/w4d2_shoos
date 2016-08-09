require "minitest/autorun"
require "minitest/rg"
require_relative "../models/shoe"

class TestShoe < Minitest::Test

  def setup()
    @test_shoo = Shoe.new({
      "first_name" => "Alan",
      "last_name"  => "Russell",
      "address"    => "37 CodeClan Terrace",
      "size"       => 10,
      "quantity"   => 2
      })
  end

  def test_it_has_name()
    assert_equal("Alan Russell", @test_shoo.full_name)
  end

  def test_it_has_size()
    assert_equal(10, @test_shoo.size)
  end

  def test_total()
    assert_equal(100, @test_shoo.total)
  end

end