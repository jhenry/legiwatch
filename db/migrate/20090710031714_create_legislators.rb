class CreateLegislators < ActiveRecord::Migration
  def self.up
    create_table :legislators do |t|
      t.string :first_name
      t.string :last_name
      t.string :address1
      t.string :address2
      t.string :town
      t.string :state
      t.string :zip
      t.string :zip4
      t.timestamps
    end
  end

  def self.down
    drop_table :legislators
  end
end
