# README
What did I do?
First of all, I watched videos and read a few chapters from "Agile Web Development with Rails 5"
to get a better understanding of what I can do with the Rails framework and what happens when 
I generate a new Rails application. 
From the powerpoints, I created a practice web application with the advisor/student scenario. 
Once I was comfortable with how that worked, I then drew a rough sketch of how to start with project 1 
(The rough draft I created is in the folder "Rough Draft Sketches").
I drew 4 database tables simulating what would happen if I added parts to cars, and how the tables
updated to keep track of the new data. Then, I drew an ERD Digaram to see how all my models are
associated with one another, wrote some code that I would add to my models, and some of the Rails
commands that I would use. After creating my rough plan, I went to Dr. Beaty's office hours to
ensure that I was on the right track, and then I started on my project!

What commands did I issue? 
* rails new assignment1
* rails generate scaffold Make name:string country:string
* rails generate scaffold Car make_title:string make_title:string vin_number:string make:references
* rails generate scaffold Part part_name:string
* rails generate model CarsParts car:references part:references
* rails db:migrate
* I also used the "rails console" to use ruby/rails code to check my database connections/tables, etc.

What are the edits I made from the default scaffolds? 
First of all, I had to add code to create the associations between my tables in their models. Then, I
changed the controller for cars to include parameters for the make_id and an array of part_ids.
I then changed the parts_controller to permit an array of car_ids as a parameter. Once I finished that,
I went to the car views and edited the code to add a dropdown of all the possible makes and a checkbox
of all the possible parts a car could have (_form.html.erb). I then changed the show.html.erb to show
the list of possible parts a car has. I also changed the index.html.erb to include the car parts, and 
made it more visually appealing.

What did you learn?
I learned that when you make a mistake in Rails, it's just better to revert back to an older, working
version of your project. I was stuck on one problem for a couple hours, and it was easily fixed when I 
went back to an older version. 
Next time, I will stay on a feature branch instead of working on the master branch, which I ended up doing
for this project, but I need to do that right at the start for the next project.
