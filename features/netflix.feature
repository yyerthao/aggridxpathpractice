@netflix
  Feature: Using Netflix
    Scenario: Sign into Netflix
      Given I visit Netflix
      Then I click on Sign in button on the "home" screen
      Then I click into "Email or phone number" input
      Then I click into "Password" input
      Then I click on Sign in button on the "credentials" screen
      Then I select "Ben" profile
#      Then I click on Search icon button and search for "Jumanji"
#      Then I click on "Jumanji" thumbnail
    Then I click on the billboard play button
