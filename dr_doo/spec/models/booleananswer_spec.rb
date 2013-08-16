require 'spec_helper'

describe Booleananswer do

  let(:user) { User.new }

  context "#new" do
<<<<<<< HEAD
    it "allows mass-assignment of value" do
      expect{ Booleananswer.new(value: true) }.not_to raise_error
    end

    it "should not allow mass-assignment of user_id"
      expect{
        Booleananswer.new(user_id: 1)
      }.to raise_error

      expect{
        Booleananswer.new(user_id: user)
      }.to raise_error
    end

    it { should respond_to(:value) }
=======
    it "allows mass-assignment on value" do
      expect{ Booleananswer.new(value: true) }.not_to raise_error
    end

    it "should not allow mass-assignment on user_id" do
      expect{ Booleananswer.new(user_id: 1) }.to raise_error
      expect{ Booleananswer.new(user_id: user) }.to raise_error
    end

    it { should respond_to(:value) }
    it { should respond_to(:user_id) }
    it { should respond_to(:field_id) }
>>>>>>> create_model_unit_tests
  end

  context "#save" do
    it "requires a valid value" do
      bool_answer = user.booleananswers.new(field_id: 1)
<<<<<<< HEAD
      expect(bool_answer).not_to be_valid
=======
      expect(bool_ans).not_to be_valid
>>>>>>> create_model_unit_tests
    end

    it "requires a valid field_id" do
      bool_answer = user.booleananswers.new(value: true)
<<<<<<< HEAD
      expect(bool_answer).not_to be_valid
=======
      expect(bool_ans).not_to be_valid
>>>>>>> create_model_unit_tests
    end

    it "requires a valid user_id" do
      bool_answer = Booleananswer.new(field_id: 1, value: false)
<<<<<<< HEAD
      expect(bool_answer).not_to be_valid
=======
      expect(bool_ans).not_to be_valid
>>>>>>> create_model_unit_tests
    end
  end
end
