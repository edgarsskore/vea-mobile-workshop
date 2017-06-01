class ScreenCreateFilter
  def initialize(driver)
    @driver = driver
    @title = Element.new(:xpath,'//android.widget.TextView[contains(@text,"Izveidot filtru")]',@driver)
    @category = Element.new(:id,'main_row_text',@driver)
    @filter_screen_title = Element.new(:id,'parameter_header_text',@driver)
    @save_button = Element.new(:id,'save_filter',@driver)
    @nosaukums_field = Element.new(:id,'param_filter_name',@driver)
    @price_fieldfrom = Element.new(:xpath,'//android.widget.LinearLayout[contains(@resource-id,"param_text_holder") and @index="1"]//android.widget.EditText[contains(@resource-id,"left_param")]',@driver)
    @price_fieldto = Element.new(:xpath,'//android.widget.LinearLayout[contains(@resource-id,"param_text_holder") and @index="1"]//android.widget.EditText[contains(@resource-id,"right_param")]',@driver)
    #negribeeju taisiit Filtru listei savu screen failu, nezinu vai tas ir obligaati, vispaar daudzkur netaisiju atsevishkjus screenus,varbut vajadzeja
    @created_filter = Element.new(:xpath,'//android.widget.TextView[contains(@resource-id,"row_filter_name") and @index="0"]',@driver)
    @delete_filter = Element.new(:id,'delete_filter',@driver)
    @delete_filter_accept = Element.new(:xpath,'//android.widget.Button[contains(@text,"DZĒST") and @index="2"]',@driver)
end

  def visible?
      @title.visible?      
  end
  #negribeju taisit atsevishkju screen failu
  def last_filter_screen_visible?
      @filter_screen_title.visible?
  end

  def save_filter
    @save_button.click
  end

  def created_filter_visible?
    @created_filter.visible?
  end
 
  def created_filter_notvisible?
    !@created_filter.visible?
  end
  
  def open_created_filter
    @created_filter.click
  end

  def delete_filter
    @delete_filter.click
    @delete_filter_accept.click
  end
  
  def set_positive_filter_params(name,from,to)
    @nosaukums_field.send_keys(name)
    @price_fieldfrom.send_keys(from)
    @price_fieldto.send_keys(to)
  end
  
  def select_category(name)
      @category.find_elements.each do |cat|
        if cat.text == name
          cat.click 
          break  
        end 
      end
  end

end
