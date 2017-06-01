# These are the 'step definitions' which Cucumber uses to implement features.
#
# Each step starts with a regular expression matching the step you write in
# your feature description.  Any variables are parsed out and passed to the
# step block.
#
# The instructions in the step are then executed with those variables.
#
# In this example, we're using rspec's assertions to test that things are happening,
# but you can use any ruby code you want in the steps.
#
# The '$driver' object is the appium_lib driver, set up in the cucumber/support/env.rb
# file, which is a convenient place to put it as we're likely to use it often.
# This is a different use to most of the examples;  Cucumber steps are instances
# of `Object`, and extending Object with Appium methods (through
# `promote_appium_methods`) is a bad idea.
#
# For more on step definitions, check out the documentation at
# https://github.com/cucumber/cucumber/wiki/Step-Definitions
#
# For more on rspec assertions, check out
# https://www.relishapp.com/rspec/rspec-expectations/docs


Given /^I am on intro screen$/ do
 #vienreiz izleca, ka japerk filtrs,kad starteju aplikaciju, ja nu velreiz izlec, tad nospiedis Atcelt
    if $driver.find_elements(:xpath,'//android.widget.Button[contains(@text,"OK")]').size > 0
        $driver.find_element(:xpath,'//android.widget.Button[contains(@text,"OK")]').click
    end
    if $driver.find_elements(:id,'buy_cancel_text').size > 0
        $driver.find_element(:id,'buy_cancel_text').click
    end
    @tests.test_intro.intro_visible?
end
Given /^I swipe to screen on right side$/ do
    @tests.test_intro.slideshow_right
end
Then /^I see second screen elements$/ do
    @tests.test_intro.second_screen_visible?
end
Then /^I see third screen elements$/ do
    @tests.test_intro.third_screen_visible?
end
Then /^I go to the application$/ do
    @tests.test_intro.close_intro
end
Given /^I am on application landing screen$/ do
    if $driver.find_elements(:id,'buy_cancel_text').size > 0
        $driver.find_element(:id,'buy_cancel_text').click
    end
    @tests.test_side_menu.landing_visible?
end
Then /^I open side menu$/ do
    @tests.test_side_menu.open_side_menu
end
Given /^I see the side menu$/ do
    @tests.test_side_menu.side_menu_visible?
end
Given /^I open subcategory notifications$/ do
    @tests.test_side_menu.open_side_menu_subcategory('Paziņojumi')
end
Then /^I see notifications screen$/ do
    @tests.test_side_menu.side_menu_subcategory_visible?('Paziņojumi')
end
Given /^I open subcategory favorites$/ do
    @tests.test_side_menu.open_side_menu_subcategory('Favorīti')
end
Then /^I see favorites screen$/ do
    @tests.test_side_menu.side_menu_subcategory_visible?('Favorīti')
end
Given /^I open subcategory filters$/ do
    @tests.test_side_menu.open_side_menu_subcategory('Meklēšanas filtri')
end
Then /^I see filters screen$/ do
    @tests.test_side_menu.side_menu_subcategory_visible?('Meklēšanas filtri')
end
Given /^I open create filter screen$/ do
    @tests.test_side_menu.open_side_menu_subcategory('Izveidot filtru')
end
Then /^I open create filter parameter screen with negative filter params$/ do
    @tests.test_add_filter.open_filter_parameter_screen_neg
end
Then /^I open create filter parameter screen with positive filter params$/ do
    @tests.test_add_filter.open_filter_parameter_screen
end
When /^Create filter parameter screen is open$/ do
    @tests.test_add_filter.last_filter_screen_visible?
end
Then /^I save filter$/ do
    @tests.test_add_filter.save_filter
end
Then /^I insert filter criteria in fields$/ do
    @tests.test_add_filter.set_filter_params
end
Given /^I see created filter$/ do
    @tests.test_add_filter.filter_added_to_list
end
Then /^I open created filter$/ do
    @tests.test_add_filter.open_created_filter
end
Then /^I delete opened filter$/ do
    @tests.test_add_filter.delete_filter
end

