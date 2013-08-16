<<<<<<< HEAD
require 'spec_helper'
=======
    require 'spec_helper'
>>>>>>> create_model_unit_tests

describe Field do

  context "#new" do
<<<<<<< HEAD
    it "should allow mass-assignment of default_label" do
=======
    it "should allow mass-assignment on default_label" do
>>>>>>> create_model_unit_tests
      expect{
        field = Field.new(default_label: "Name")
        }.not_to raise_error
    end

<<<<<<< HEAD
    it "should allow mass-assignment of data_type" do
=======
    it "should allow mass-assignment on data_type" do
>>>>>>> create_model_unit_tests
      expect{
        field = Field.new(data_type: "String")
      }.not_to raise_error
    end

    it { should respond_to(:default_label) }
    it { should respond_to(:data_type) }
  end

  context "#save" do
    it "requires a default_label" do
      field = Field.new(data_type: "string")
      expect(field).not_to be_valid
    end

    it "requires a data_type" do
<<<<<<< HEAD
      field = Field.new(defagit pullult_label: "label")
=======
      field = Field.new(default_label: "label")
>>>>>>> create_model_unit_tests
      expect(field).not_to be_valid
    end
  end
end
