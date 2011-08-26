@advertisements
Feature: Advertisements
  In order to have advertisements on my website
  As an administrator
  I want to manage advertisements

  Background:
    Given I am a logged in refinery user
    And I have no advertisements

  @advertisements-list @list
  Scenario: Advertisements List
   Given I have advertisements titled UniqueTitleOne, UniqueTitleTwo
   When I go to the list of advertisements
   Then I should see "UniqueTitleOne"
   And I should see "UniqueTitleTwo"

  @advertisements-valid @valid
  Scenario: Create Valid Advertisement
    When I go to the list of advertisements
    And I follow "Add New Advertisement"
    And I fill in "Title" with "This is a test of the first string field"
    And I press "Save"
    Then I should see "'This is a test of the first string field' was successfully added."
    And I should have 1 advertisement

  @advertisements-invalid @invalid
  Scenario: Create Invalid Advertisement (without title)
    When I go to the list of advertisements
    And I follow "Add New Advertisement"
    And I press "Save"
    Then I should see "Title can't be blank"
    And I should have 0 advertisements

  @advertisements-edit @edit
  Scenario: Edit Existing Advertisement
    Given I have advertisements titled "A title"
    When I go to the list of advertisements
    And I follow "Edit this advertisement" within ".actions"
    Then I fill in "Title" with "A different title"
    And I press "Save"
    Then I should see "'A different title' was successfully updated."
    And I should be on the list of advertisements
    And I should not see "A title"

  @advertisements-duplicate @duplicate
  Scenario: Create Duplicate Advertisement
    Given I only have advertisements titled UniqueTitleOne, UniqueTitleTwo
    When I go to the list of advertisements
    And I follow "Add New Advertisement"
    And I fill in "Title" with "UniqueTitleTwo"
    And I press "Save"
    Then I should see "There were problems"
    And I should have 2 advertisements

  @advertisements-delete @delete
  Scenario: Delete Advertisement
    Given I only have advertisements titled UniqueTitleOne
    When I go to the list of advertisements
    And I follow "Remove this advertisement forever"
    Then I should see "'UniqueTitleOne' was successfully removed."
    And I should have 0 advertisements
 