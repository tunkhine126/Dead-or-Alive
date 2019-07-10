class RemoveQuiz < ActiveRecord::Migration[5.2]
  def change
    drop_table :quizzes
    remove_column :questions, :quiz_id, :integer
    remove_column :users, :quiz_id, :integer

  end
end
