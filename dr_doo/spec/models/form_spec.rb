require 'spec_helper'

describe Form do

  context "#new" do
    it "should allow mass-assignment of name" do
      expect{
        form = Form.new(name: "Disclosure Agreement")
        }.not_to raise_error
    end

    it { should respond_to(:name) }
  end

  context "#save" do
    it "requires a name" do
      form = Form.new
      expect(form).not_to be_valid
    end
  end
end
