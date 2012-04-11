require File.expand_path('../test_helper.rb', File.dirname(__FILE__))

describe Pango::Language do
  it "creates an instance with .from_string" do
    lang = Pango::Language.from_string 'en'
    lang.wont_be_nil
    lang.must_be_instance_of Pango::Language
  end

  describe "#get_scripts" do
    it "returns an array of symbols representing scripts" do
      lang = Pango::Language.from_string 'ja'
      scripts = lang.get_scripts.sort
      scripts.must_equal [:han, :hiragana, :katakana]
    end

    it "can safely be run twice" do
      lang = Pango::Language.from_string 'en'

      result = lang.get_scripts
      result.must_equal [:latin]

      result = lang.get_scripts
      result.must_equal [:latin]
    end
  end
end
