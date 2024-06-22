class CreateCategoriesCourses < ActiveRecord::Migration[7.1]
  def change
    create_table :categories_courses do |t|
      t.belongs_to :category, null: false, foreign_key: true
      t.belongs_to :course, null: false, foreign_key: true

      t.timestamps
    end
  end
end
