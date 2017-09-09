## Battle

A very primitive web app 'game' written in Ruby using Sinatra.

### Instructions

Clone this repo.  In the root's CL:  
`$ gem bundle install`  
`$ bundle install`  
`$ rackup`  

Visit localhost:9292 to play.

## Comments

Here I was starting to learn about the MVC structure and in-memory apps.  The scope of this task didn't extend to refactoring the app file into separate controllers, which would be the next step.  

However within the game model, there is a nice example of a work around to avoid using global variables and limiting instance variables by using class methods.  

This project could be extended further by adding some meaningful game elements, if only randomising the attack method!
