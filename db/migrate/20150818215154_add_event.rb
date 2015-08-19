class AddEvent < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.decimal :progress
      t.datetime :start_date
      t.datetime :end_date
      t.decimal :duration
    end
  end
end
