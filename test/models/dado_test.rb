require 'test_helper'

class DadoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "not blank words" do
    dado = Dado.new
    assert_not dado.save
  end
end
