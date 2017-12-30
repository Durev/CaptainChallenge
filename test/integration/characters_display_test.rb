require 'test_helper'

class CharactersDisplayTest < ActionDispatch::IntegrationTest

  def setup
    @count = Character.all.count
  end

  test "characters index display" do
    get characters_path
    assert_template "characters/index"
    assert_select "div.character", count: @count
  end
end
