class ScreenBase
  def initialize(driver)
    @driver = driver
    @slider = Element.new(:id,'slider_anchor',@driver) 
    #teoreetiski varbut var iztikt bez //android.view.View[contains(@resource-id,"toolbar_action")] xpathaa, pievienoju tikai precizitates nolukos
    @side_menu = Element.new(:xpath,'//android.view.View[contains(@resource-id,"toolbar_action")]//android.widget.ImageButton[contains(@content-desc,"Menu opened")]',@driver)
  end
  def visible?
    @slider.visible?
  end
  
  def open_side_menu
    @side_menu.click
  end
  
end
 