require 'test_helper'

class CharactersEditAndDestroyTest < ActionDispatch::IntegrationTest

  def setup
    @character = characters(:two)
  end

  test "unsuccessful edit" do
    get characters_path
    assert_template 'characters/index'
    name = ""
    health_points = 200
    attack_points = 1
    img_url = ""
    post edit_path, params: { character: { id: @character.id,
                                          name: name,
                                          health_points: health_points,
                                          attack_points: attack_points,
                                          img_url: img_url } }
    follow_redirect!
    assert_template 'characters/index'
    @character.reload
    assert_not_equal name, @character.name
    assert_not_equal health_points, @character.health_points
    assert_not_equal attack_points, @character.attack_points
    assert_not_equal img_url, @character.img_url
  end

  test "successful edit" do
    get characters_path
    assert_template 'characters/index'
    name = "Mr Baz"
    health_points = 99
    attack_points = 19
    img_url = ""
    post edit_path, params: { character: { id:  @character.id,
                                          name: name,
                                          health_points: health_points,
                                          attack_points: attack_points,
                                          img_url: img_url } }
    follow_redirect!
    assert_template 'characters/index'
    @character.reload
    assert_equal name, @character.name
    assert_equal health_points, @character.health_points
    assert_equal attack_points, @character.attack_points
    assert_equal img_url, @character.img_url
  end

  test "destroying user" do
    get characters_path
    assert_template 'characters/index'
    assert_difference 'Character.count', -1 do
      post delete_path, params: { character: { id: @character.id } }
    end
    follow_redirect!
    assert_template 'characters/index'
  end
end
