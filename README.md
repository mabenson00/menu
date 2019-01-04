# 🥗 The Freshly Menu Builder

Meal has one main and one side  (both required)
  name is MAIN with SIDE
Main
  name
Side
  name

Menu has many meals
  start_date
  require at least one meals

Freshly's chefs are always coming up with great new meals for its customers to try, so we're always adding new meals to the system, and we rotate our menus on a weekly basis. We need to give our admins the ability to create new meal records, create new menus and add meals to those menus. In other words:

### As a Freshly admin, I want to be able to:
* Create new meals, view all existing meals and edit them
* Create new weekly menus
* Add meals to and remove meals from weekly menus

### Other requirements
* We don't want to have 2 meals with the same name, so we need to ensure that each meal is unique. However, sometimes our chefs get lazy - we need to allow them to offer the same meal with a different side dish.
* We need to ensure that we never offer more than 1 menu for a given week

### Some models we'll need (we may need more)
#### Meal
Attributes:
* `name [String]`
* `side_dish [String]`  
A short description of a side dish to accompany the meal

#### Weekly Menu
A weekly menu needs both a start date and at least one meal associated with it.

Attributes
* `start_date [Date]`  
  The date of the beginning of the week. Maybe it's a Sunday, maybe it's a Monday, maybe it'a Wednesday. _The choice is yours_.  
  Whichever day or the week it is, the system should never allow this to be a different day of the week.


### Necessary views
* Meals
  * Index view
    * List each meal with its id, name and side dish
  * New meal form
    * Set name and side_dish fields
    * Show validation errors if present
  * Edit meal form
    * Same as above, set fields and show validatione rrors if present
* Weekly Menus
  * Index view
    * List all weekly menus with start date and number of meals assigned to menu
  * New weekly menu form
    * Set fields and show validation errors if present
  * Edit weekly menu form
    * Set fields and show validation errors if present

### Extra credit
Assigning meals to each week can get really tedious for our meals team, which makes them sad and cranky. Let's add a button to the weekly menu form that will copy the previous week's meals onto the new menu to save them a few clicks.
