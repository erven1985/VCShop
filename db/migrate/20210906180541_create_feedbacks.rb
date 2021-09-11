class CreateFeedbacks < ActiveRecord::Migration[6.0]
  def change
    create_table :feedbacks do |t|
      t.references :product, null: false, foreign_key: true
      t.string :rating
      t.text :comment

      t.timestamps
    end
  end
end
