Feature: Add a new event

As a scheduler
In order to create a workable schedule
I want to add events to the schedule

Scenario: Create a new event
  When I create a new event
  Then that event should exist
