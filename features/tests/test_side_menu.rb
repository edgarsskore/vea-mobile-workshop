class TestSideMenu
  attr_accessor :driver
  def initialize(screens)
    @screens = screens
  end
  def landing_visible?
    @screens.screen_base.visible?
  end 
  def open_side_menu
    @screens.screen_base.open_side_menu
  end
  def side_menu_visible?
    @screens.screen_side_menu.visible?  
  end
  def open_side_menu_subcategory(title)
    @screens.screen_side_menu.open_side_subcategory(title)
  end
  def side_menu_subcategory_visible?(title)
    @screens.screen_side_menu.side_subcategory_visible?(title)
  end
end
