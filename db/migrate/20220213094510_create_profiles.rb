class CreateProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :job_title
      t.string :total_experience
      t.string :career_highlights
      t.text :overview
      t.string :primary_skill
      t.string :secondar_skill
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
