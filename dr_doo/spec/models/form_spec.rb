require 'spec_helper'

describe Form do

<<<<<<< HEAD
  context "#new" do
    it "should allow mass-assignment of name" do
=======
  let(:provider) { Provider.new }

  context "#new" do
    it "should allow mass-assignment on name" do
>>>>>>> create_model_unit_tests
      expect{
        form = Form.new(name: "Disclosure Agreement")
        }.not_to raise_error
    end

    it { should respond_to(:name) }
<<<<<<< HEAD
  end

  context "#save" do
    it "requires a name" do
      form = Form.new
=======
    it { should respond_to(:provider_id) }
  end

  context "#save" do
    it "requires a valid name" do
      form = provider.users.new
      expect(form).not_to be_valid
    end

    it "requires a valid provider" do
      form = Form.new(name: "Disclosure Agreement")
>>>>>>> create_model_unit_tests
      expect(form).not_to be_valid
    end
  end
end
