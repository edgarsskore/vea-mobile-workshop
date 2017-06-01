class Screens
  attr_accessor :driver
  def initialize(driver)
    @driver = driver
  end

  def screen_base  
    @screen_base ||= ScreenBase.new @driver
    @screen_base
  end

  def screen_side_menu 
    @screen_side_menu ||= ScreenSideMenu.new @driver
    @screen_side_menu
  end

  def screen_side_categories
    @screen_side_categories ||= ScreenSideCategories.new @driver
    @screen_side_categories
  end

  def screen_intro
    @screen_intro_welcome ||= ScreenIntro.new @driver
    @screen_intro_welcome
  end

  def screen_create_filter
    @screen_create_filter ||= ScreenCreateFilter.new @driver
    @screen_create_filter
  end

  def screen_select_sub_category
    @screen_select_sub_category ||= ScreenSelectSubCategory.new @driver
    @screen_select_sub_category
  end
end
