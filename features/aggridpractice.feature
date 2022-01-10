@aggridpractice
Feature: Locate ag grid elements

  Scenario: Find a column on ag grid
    Given I visit the website: https://www.ag-grid.com/
    When I click on "Demo" link
    Then I click on dropdown menu: "Material"
    Then I click on the column header
    Then I click on right arrow key until I see "Dec" column

