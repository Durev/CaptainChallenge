require 'test_helper'

class CharactersControllerTest < ActionDispatch::IntegrationTest
  def setup
    @base_title = "| CaptainChallenge"
  end

  test "should get index" do
    get characters_url
    assert_response :success
    assert_select "title", "Characters #{@base_title}"
  end

  test "should get arena" do
    get arena_url
    assert_response :success
    assert_select "title", "Arena #{@base_title}"
  end

end
