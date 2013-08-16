require 'spec_helper'

describe Label do

  let(:form) { Form.new(name: "Disclosure Agreement") }

  context "#new" do
    it "allows mass-assignment of name" do
      expect{ Label.new(name: "Name") }.not_to raise_error
    end

    it "allows mass-assignment of field_id" do
      expect{ Label.new(field_id: 1) }.not_to raise_error
    end

    it "doesn't allow mass-assignment of form_id" do
      expect{ Label.new(form_id: 1) }.to raise_error
    end
  end

  context "#save" do
    it "requires a valid name" do
      label = form.labels.new(field_id: 1)
      expect(label).not_to be_valid
    end

    it "requires a valid form_id" do
      label = Label.new(name: "Name", field_id: 1)
      expect(label).not_to be_valid
    end

    it "requires a valid field_id" do
      label = form.labels.new(name: "Name")
      expect(label)not_to be_valid
    end
  end
end
