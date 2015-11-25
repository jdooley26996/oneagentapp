json.array!(@expenses) do |expense|
  json.extract! expense, :id, :title, :transaction_date, :amount, 
  json.url expense_url(expense, format: :json)
end
