class BudgetAddPage

	attr_accessor :budget_name, :budget_name_value, :budget_value_value

	def initialize(driver)
		@driver = driver
		@budget_name = ""
		@budget_name_value = "Dom's budget"
		@budget_value_value = "5"
		@budget_name_field_id = 'protect.budgetwatch:id/budgetNameEdit'
		@budget_value_field_id = 'protect.budgetwatch:id/valueEdit'
		@budget_save_icon_id = 'protect.budgetwatch:id/action_save'
	end

	def fill_name(budget_name)
		@driver.find_element(:id, @budget_name_field_id).send_keys(budget_name)
		@budget_name = @driver.find_element(:id, @budget_name_field_id).text
	end

	def fill_value(value)
		@driver.find_element(:id, @budget_value_field_id).send_keys(value)
	end

	def save
		@driver.find_element(:id, @budget_save_icon_id).click
	end
end