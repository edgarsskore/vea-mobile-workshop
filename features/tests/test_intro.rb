class TestIntro
  attr_accessor :driver
  def initialize(screens)
    @screens = screens
  end

  def intro_visible?
    @screens.screen_intro.visible?
  end

  def slideshow_right
    @screens.screen_intro.slideshow_right  
  end
  
  def second_screen_visible?
    @screens.screen_intro.second_screen_visible?
  end

  def third_screen_visible?
    @screens.screen_intro.third_screen_visible?
  end

  def close_intro
    @screens.screen_intro.close_intro
  end
  
end
