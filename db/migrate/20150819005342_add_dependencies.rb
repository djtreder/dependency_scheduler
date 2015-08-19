class AddDependencies < ActiveRecord::Migration
  def change
    create_table :dependencies do |t|
      t.belongs_to :customer
      t.string :type
    end
  end
end
