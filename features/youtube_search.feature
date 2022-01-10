@searchForYouTuber
Feature: Search for YouTube video

  Scenario: As a user I should be able to search for a youtube video
    Given I visit https://www.youtube.com
    When I search for What does the fox say
    Then I should see search result: for "Just Dance 2015 - What Does The Fox Say"
