class BudgetPage

	attr_accessor :budgetpage_title

	def initialize(driver)
		@driver = driver
		@title_class = 'android.widget.TextView'
		@budget_add_icon_id = 'protect.budgetwatch:id/action_add'
		@budget_name_id = 'protect.budgetwatch:id/budgetName'
		@budgetpage_title = 'Budgets'
	end

	def get_title
		title = @driver.find_elements(:class_name, @title_class)[0]
		title.text
	end

	def goto_add_budget
		@driver.find_element(:id, @budget_add_icon_id).click
	end

	def check_budget_name(budget_index)
		budget = @driver.find_elements(:id, @budget_name_id)[budget_index]
		budget.text
	end
end