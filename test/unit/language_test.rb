require File.expand_path('../test_helper.rb', File.dirname(__FILE__))

describe Pango::Language do
  it "creates an instance with .from_string" do
    lang = Pango::Language.from_string 'en'
    lang.wont_be_nil
    lang.must_be_instance_of Pango::Language
  end
end
