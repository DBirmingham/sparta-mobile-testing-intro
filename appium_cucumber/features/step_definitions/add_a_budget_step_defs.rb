Given("I can open the app") do
	mainpage.check_homepage_displayed?
end

When("click on budget") do
	mainpage.tap_menu_item(0)
end

Then("the budget page opens") do
  expect(budgetpage.get_title).to eq budgetpage.budgetpage_title
end

When("I enter a budget") do
  mainpage.tap_menu_item(0)
  budgetpage.goto_add_budget
  @budgetadd_page = budgetadd_page
  @budgetadd_page.fill_name(budgetadd_page.budget_name_value)
  budgetadd_page.fill_value(budgetadd_page.budget_value_value)
end

And("save the budget") do
  @budgetadd_page.save
end

Then("the budget is saved") do
  expect(budgetpage.check_budget_name(0)).to eq @budgetadd_page.budget_name
end

And("can be seen on the homepage") do
  expect(budgetpage.check_budget_name(0)).to eq @budgetadd_page.budget_name
end