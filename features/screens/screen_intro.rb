class ScreenIntro
  def initialize(driver)
    @driver = driver
    @button_to_app = Element.new(:id,'close_intro',@driver)
    @second_screen_title = Element.new(:xpath,'//android.widget.TextView[contains(@text,"Veic vajadzīgās izmaiņas!")]',@driver)
    @third_screen_title = Element.new(:xpath,'//android.widget.TextView[contains(@text,"Saņem paziņojumus!")]',@driver)
  end

  def visible?
      @button_to_app.visible?      
  end
  #negribeju taisit atsevishkju screen failu
  def second_screen_visible?
      @second_screen_title.visible?
  end
  #negribeju taisit atsevishkju screen failu
  def third_screen_visible?
      @third_screen_title.visible?
  end
  
  def close_intro
      @button_to_app.click
  end

  def slideshow_right
    @driver.swipe start_x: 600, start_y: 400, delta_x: -500, delta_y: 0, duration: 400, ele: nil
  end
end
