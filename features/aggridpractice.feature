@aggridpractice
Feature: Locate ag grid elements

  Scenario: Find a column on ag grid
    Given I visit the website: https://www.ag-grid.com/
    When I click on "Demo" link
    Then I click on dropdown menu: "Material"
    Then I click on first row named "Name" holding "Command" key
    Then I click on "Right" arrow key until I see "Dec" column

