class AddRecordToAnswer < ActiveRecord::Migration[5.2]
  def change
    add_column :answers, :record, :integer
  end
end
