@drawing
  Feature: Drawing - User draws a bus
    Scenario: User draws a bus
      Given I visit autodraw.com
      Then I click on Start Drawing button
      Then I select the color "black"
      Then I draw the outline of a "bus"
      Then I fill the drawing with the color "yellow"
