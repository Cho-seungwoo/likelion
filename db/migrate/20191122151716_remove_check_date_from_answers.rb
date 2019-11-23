class RemoveCheckDateFromAnswers < ActiveRecord::Migration[5.2]
  def change
    remove_column :answers, :check_date, :date
  end
end
