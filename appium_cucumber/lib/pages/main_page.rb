class MainPage

	def initialize(driver)
		@driver = driver
		@check_menu_id = 'protect.budgetwatch:id/menu'
		@menu_icon_id = 'protect.budgetwatch:id/image'
	end

	def check_homepage_displayed?
		@driver.find_element(:id, @check_menu_id)
	end

	def tap_menu_item(index_of_item)
		@driver.find_elements(:id, @menu_icon_id )[index_of_item].click
	end
end