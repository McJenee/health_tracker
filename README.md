# Health Tracker

An app that will track your weight, caloric intake and exercise routine to help you keep track of your health.  By tracking these things the software will give you a heads up on how much more you need to exercise or change your diet per day.

# Scope

Initial scope should just be a working dashboard that shows a breakdown of all data in the system.  A list of these items might include:

Basic
- Total calories consumed
- Total calories burned
- Total steps taken
- Average weight
- Daily weight entries over the last 7 days
- Average weight for the last 7 days
- Daily caloric intake over the last 7 days
- Average caloric intake over the last 7 days
- Daily caloric burn over the last 7 days
- Average caloric burn over the last 7 days
- Daily steps over the last 7 days
- Average daily steps over the last 7 days
- Today's net calories
- Total net calories
- Include steps in caloric burn (maybe automate the addition of daily steps as a daily exercise entry)
X Associations and validations for requirements

Advanced
- Create different views for day, week, month and year.
- Make it pretty





- app\assets\controllers\weights_controller.rb
- app\views\weights\_form.html.erb
                   \edit.html.erb
                   \index.html.erb
                   \new.html.erb
                   \show.html.erb
- test\controllers\weights_controller_test.rb
- app\assets\javascripts\weights.coffee
- app\assets\stylesheets\weights.scss
- app\helpers\weights_helper.rb
