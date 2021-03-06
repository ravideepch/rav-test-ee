@BookingTests
Feature: Validate bookings

  Background: Booking site is loaded
    Given I am on the booking site

  Scenario Outline: A Booking should not be saved if first name field has invalid value
    Given Invalid value entered in "first name" field
      | <firstName> |
    Then Booking should not be saved
    Examples:
      | firstName    |
      | 121212       |
      | £@$%         |
      |              |

  Scenario Outline: A Booking should not be saved if last name field  has invalid value
    Given Invalid value entered in "last name" field
      | <lastName> |
    Then Booking should not be saved
    Examples:
      | lastName  |
      | 121212       |
      | £@$%         |
      |              |

  Scenario Outline: A Booking should not be saved if price field has invalid value
    Given Invalid value entered in "price" field
      | <price> |
    Then Booking should not be saved
    Examples:
      | price         |
      | random string |
      | £@$%          |
      | 0             |
      | -1            |
      |               |

  Scenario Outline: A Booking should not be saved if check in field has invalid value
    Given Invalid value entered in "check in date" field
      | <checkInDate> |
    Then Booking should not be saved
    Examples:
      | checkInDate |
      | 121212121   |
      |             |

  Scenario Outline: A Booking should not be saved if check out field has invalid value
    Given Invalid value entered in "check out date" field
      | <checkOutDate> |
    Then Booking should not be saved
    Examples:
      | checkOutDate  |
      | 121212121     |
      |               |