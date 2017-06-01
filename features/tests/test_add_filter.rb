require_relative '../config/filters'
class TestAddFilter
  attr_accessor :driver
  def initialize(screens)
    @screens = screens
    @filter_data_pos = Filter.new('property_positive')
    @filter_data_neg = Filter.new('property_negative')
  end

  def close_intro
    @screens.screen_intro.visible?
    @screens.screen_intro.close_intro  
  end 
  
  def select_category
    @screens.screen_create_filter.visible?
    @screens.screen_create_filter.select_category(@filter_data_pos.category)
    @screens.screen_select_sub_category.visible?(@filter_data_pos.category)
  end
  def select_category_neg
    @screens.screen_create_filter.visible?
    @screens.screen_create_filter.select_category(@filter_data_neg.category)
    @screens.screen_select_sub_category.visible?(@filter_data_neg.category)
  end
  def select_sub_category(sub_cat_hash)
    @screens.screen_select_sub_category.visible?(sub_cat_hash['title'])
    @screens.screen_select_sub_category.select_sub_category( sub_cat_hash['option'])  
  end
  def open_filter_parameter_screen
    select_category
      @filter_data_pos.sub_categories.each do |sub_category|
        select_sub_category(sub_category)  
      end    
  end
  def open_filter_parameter_screen_neg
    select_category_neg
      @filter_data_neg.sub_categories.each do |sub_category|
        select_sub_category(sub_category)  
      end    
  end
  def last_filter_screen_visible?
    @screens.screen_create_filter.last_filter_screen_visible?
  end
  def save_filter
    @screens.screen_create_filter.save_filter
  end
  
  def set_filter_params 
    @screens.screen_create_filter.set_positive_filter_params(@filter_data_pos.name,@filter_data_pos.parameters.first['left'],@filter_data_pos.parameters.first['right'])   
  end
  def filter_added_to_list
    @screens.screen_create_filter.created_filter_visible?
  end
  def filter_gone
    @screens.screen_create_filter.created_filter_notvisible?
  end
  def open_created_filter
    @screens.screen_create_filter.open_created_filter
  end
  def delete_filter
    @screens.screen_create_filter.delete_filter
  end
  
end
