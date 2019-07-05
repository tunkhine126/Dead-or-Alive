class CreateAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :answers do |t|
      t.string :value
      t.string :question_type
      t.belongs_to :question

      t.timestamps
    end
  end
end
