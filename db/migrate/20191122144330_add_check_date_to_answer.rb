class AddCheckDateToAnswer < ActiveRecord::Migration[5.2]
  def change
    add_column :answers, :check_date, :date
  end
end
