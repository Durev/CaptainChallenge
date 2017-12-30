require 'test_helper'

class CharacterTest < ActiveSupport::TestCase
  def setup
    @character = Character.new(name: "Maximus", health_points: 75,
                               attack_points: 14, bio: "Hello",
                               img_url: "https://cdn.movieweb.com/img.news.tops/NE2daCrNDNvU62_1_b/Gladiator-2-Ridley-Scott-Story-Idea.jpg"
                               )
  end

  test "should be valid" do
    assert @character.valid?
  end

  test "name should be present" do
    @character.name = "  "
    assert_not @character.valid?
  end

  test "health points should be present" do
    @character.health_points = nil
    assert_not @character.valid?
  end

  test "attack points should be present" do
    @character.attack_points = nil
    assert_not @character.valid?
  end

  test "name should not be too long" do
    @character.name = "a"*71
    assert_not @character.valid?
  end

  test "bio should not be too long" do
    @character.bio = "a"*301
    assert_not @character.valid?
  end

  test "health points should not be too high" do
    @character.health_points = 101
    assert_not @character.valid?
  end

  test "health points should not be too low" do
    @character.health_points = 49
    assert_not @character.valid?
  end

  test "attack points should not be too high" do
    @character.attack_points = 21
    assert_not @character.valid?
  end

  test "attack points should not be too low" do
    @character.attack_points = 4
    assert_not @character.valid?
  end

  test "name should be unique" do
    duplicate_character = @character.dup
    duplicate_character.name = @character.name.upcase
    @character.save
    assert_not duplicate_character.valid?
  end
end
