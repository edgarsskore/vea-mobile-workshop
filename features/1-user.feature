Feature: Homework

  Scenario: Validate Slideshow
    Given I am on intro screen
    Given I swipe to screen on right side
    Then I see second screen elements
    Given I swipe to screen on right side
    Then I see third screen elements

  Scenario: Validate Side Menu page
    Given I am on intro screen
    Then I go to the application
    Given I am on application landing screen
    Then I open side menu
    Given I see the side menu
    Then I open subcategory notifications
    Then I see notifications screen
    Then I open side menu
    Given I see the side menu
    Given I open subcategory favorites
    Then I see favorites screen 
    Then I open side menu
    Given I see the side menu
    Given I open subcategory filters
    Then I see filters screen
    Then I open side menu
    Given I see the side menu
    Given I open create filter screen
    Then I am on application landing screen
#pec pirmajam 2 applikacijas atvershanas reizeem, vairs neradas "Uz aplikaciju" poga, tapec soljus, kas tiek pari shai pogai es nonjemu
  Scenario: Create "Transports" filter - negative  
    Given I am on application landing screen
    Then I open create filter parameter screen with negative filter params
    When Create filter parameter screen is open
    Then I save filter
    Then Create filter parameter screen is open
      
  Scenario: Create "Transports" filter - positive  
    Given I am on application landing screen
    Then I open create filter parameter screen with positive filter params
    When Create filter parameter screen is open
    Then I insert filter criteria in fields
    Then I save filter
    Given I see created filter

  Scenario: Delete existing filter from filter page
    Given I am on application landing screen
    Then I open side menu
    Given I see the side menu
    Given I open subcategory filters
    Then I see filters screen
    Then I open created filter
    Then I delete opened filter
