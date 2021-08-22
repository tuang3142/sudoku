Feature: Ping
  As a CLI
  I want to test if the program works

  Scenario: It works
    When I run `kudo ping`
    Then the output should contain "pong!"
