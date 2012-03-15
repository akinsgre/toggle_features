class CreateCodeAchievementDetails < ActiveRecord::Migration
  def change
    create_table :code_achievement_details do |t|
      t.integer :code_achievement_id
      t.text :code

      t.timestamps
    end
  end
end
