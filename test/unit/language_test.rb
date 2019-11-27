# frozen_string_literal: true

require File.expand_path("../test_helper.rb", File.dirname(__FILE__))

describe Pango::Language do
  it "creates an instance with .from_string" do
    lang = Pango::Language.from_string "en"
    _(lang).wont_be_nil
    _(lang).must_be_instance_of Pango::Language
  end

  describe "#get_scripts" do
    it "returns an enumerable of symbols representing scripts" do
      lang = Pango::Language.from_string "ja"
      scripts = lang.get_scripts
      _(scripts.to_a).must_equal [:han, :katakana, :hiragana]
    end

    it "can safely be run twice" do
      lang = Pango::Language.from_string "en"

      result = lang.get_scripts
      _(result.to_a).must_equal [:latin]

      result = lang.get_scripts
      _(result.to_a).must_equal [:latin]
    end
  end

  describe "#scripts" do
    it "returns an enumerable of symbols representing scripts" do
      lang = Pango::Language.from_string "ja"
      scripts = lang.scripts
      _(scripts.to_a).must_equal [:han, :katakana, :hiragana]
    end

    it "can safely be run twice" do
      lang = Pango::Language.from_string "en"

      result = lang.scripts
      _(result.to_a).must_equal [:latin]

      result = lang.scripts
      _(result.to_a).must_equal [:latin]
    end
  end
end
