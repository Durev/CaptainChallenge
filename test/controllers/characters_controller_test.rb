require 'test_helper'

class CharactersControllerTest < ActionDispatch::IntegrationTest
  test "should get fighters" do
    get characters_fighters_url
    assert_response :success
  end

  test "should get arena" do
    get characters_arena_url
    assert_response :success
  end

end
