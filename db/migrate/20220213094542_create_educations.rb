class CreateEducations < ActiveRecord::Migration[7.0]
  def change
    create_table :educations do |t|
      t.string :degree
      t.string :school
      t.text :description
      t.date :start
      t.date :end
      t.belongs_to :profile, null: false, foreign_key: true

      t.timestamps
    end
  end
end
