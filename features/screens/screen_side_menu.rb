class ScreenSideMenu
  def initialize(driver)
    @driver = driver
    #atverot side menu, shis RecyclerView elements klust redzams
    @side_menu_open = Element.new(:id,'fragment_drawer',@driver)
  end
  def visible?
    @side_menu_open.visible?
  end 
  def open_side_menu
    @side_menu.click
  end
  def open_side_subcategory(title)
    $driver.find_element(:xpath,'//android.widget.TextView[contains(@resource-id,"item_name") and @text="'+title+'"]').click
  end
  #negribeju taisit atsevishkju screen failu
  def side_subcategory_visible?(title)
    $driver.find_element(:xpath,'//android.view.View[contains(@resource-id,"toolbar_action")]//android.widget.TextView[contains(@text,"'+title+'")]').displayed?
  end
end
 