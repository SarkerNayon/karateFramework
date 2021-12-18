Feature: Get Api Demo.

  Background: 
    * url 'https://reqres.in/api'

  Scenario: Get Method from API
    Given path '/users?page=2'
    When method get
    Then status 200
    And print response

  Scenario: Get Method from API2
    Given path '/users?page=2'
    When method get
    Then status 200
    And print response
    And match response.data[0].name == 'Cerulean'
    
  Scenario: Get Method from API2
    Given path '/users?page=2'
    When method delete
    Then status 204