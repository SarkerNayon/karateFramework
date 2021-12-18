Feature: 

  Background: 
    * url 'https://reqres.in/api'

  Scenario: post method from API
    Given path '/users'
    And request {"name": "Nayon","job": "newbee"}
    When method post
    Then status 201
    And print response

  Scenario: post method from API
    Given path '/users'
    And request {"name": "Nayon","job": "newbee"}
    When method post
    Then status 201
    And print response
    And match response.name == 'nayon'
