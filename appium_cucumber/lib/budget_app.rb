require_relative 'pages/main_page'
require_relative 'pages/budget_page'
require_relative 'pages/budget_add_page'

module BudgetApp

	def mainpage
		MainPage.new($driver)
	end

	def budgetpage
		BudgetPage.new($driver)
	end

	def budgetadd_page
		BudgetAddPage.new($driver)
	end
end