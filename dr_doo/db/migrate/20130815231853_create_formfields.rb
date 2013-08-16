class CreateFormfields < ActiveRecord::Migration
  def change
    create_table :formfields do |t|
    	t.belongs_to :form
    	t.belongs_to :field
    	t.string :label

      t.timestamps
    end
  end
end
