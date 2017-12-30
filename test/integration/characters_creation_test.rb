require 'test_helper'

class CharactersCreationTest < ActionDispatch::IntegrationTest

  test "invalid character creation" do
    get characters_path
    assert_no_difference 'Character.count' do
      post characters_path, params: { character: { name:  "",
                                     health_points: 10,
                                     attack_points: 50,
                                     bio: "foo",
                                     img_url: "" } }
    end
    assert_template 'characters/index'
  end

  test "valid character creation" do
    get characters_path
    assert_difference 'Character.count', 1 do
    post characters_path, params: { character: { name:  "Mrs Valid",
                                   health_points: 60,
                                   attack_points: 12,
                                   bio: "foo bar",
                                   img_url: "http://en.wikifur.com/w/images/thumb/a/aa/Procyon_lotor.jpg/771px-Procyon_lotor.jpg" } }
    end
    follow_redirect!
    assert_template 'characters/index'
  end
end
