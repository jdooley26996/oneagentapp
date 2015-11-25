class AddTransactionDateToExpenses < ActiveRecord::Migration
  def change
    add_column :expenses, :transaction_date, :datetime
  end
end
