This directory contains the final netlogo file for the simulation of the Mall Problem, we briefly document it in this file.

# Documentation


The interface of the file proposes :

  * the view of the simulation, which displays the position of the agents at all time, workers are in white and non-workers in green, and the layout of the mall, each shop type having its own color : 
    * yellow for supermarkets
    * orange for restaurants
    * pink for hairdressers
    * blue for hardware stores
    * magenta for clothes stores
  * buttons, one to setup the problem, one to launch (or resume) the simulation (on setup, all agents are considered to be outside the mall) and a last one to create the csv files containing the simulation history, the button creates the files in a directory whose adress is to be specified in the input area named DirectoryPathForPrintHistory.
  * sliders, to parametrize the number of each shop type in the mall.
  * input areas, to parametrize the total number employees for a shop type to be dispatches in the different shops of said type. During setup, employees are dispatched in a way to fully fill as many shops as possible, if we paraetrize 3 supermarkets and 5 employees, one supermarket will have the 5 employees and the other two will never be used. If the user parametrize to many employees compared to the chosen number of shop, the excess will simply be ignored.
  * other input areas, to specify the number of agents to create for the simulation or to specify how many movements an agent is allowed to do per time step, as we add more and more shops, the mall will get bigger and it will start taking a lot of time for the agents to navigate the mall so we made the speed of movement adjustable to counter this problem.
  * displayers, to display at all times, the number of days passed since the beginning of the simulation and the current day, hour and minute.
  * other displayers, o display at all times, the number of agents currently inside each store type and the total number of needs of the agents for each type of task.
  * plots, the provided interface proposes two plots, one displaying the average waiting times for the different services, the other to display the average accumulated income per shop for each shop type.


This simulation doesn't represent the agents while they are out of the mall, we consider here that, whenever they need to go to the mall, they instantly enter it.  
For simplicity, in the simulation, we don't represent the movements of the agents inside the shops while they are executing tasks, they simply enter the shop stay 
still as long as they need.  
In the same way, the simulation doesn't visually represent the various waiting lines, the various agents in line are all represented at the same position (but the management of the waiting line is still of course treated internally).  
  
We briefly present the different states an agent may go through during the simulation :

  * Out : the agent is out of the mall and will remain in this state until he decides to go to the mall at which point he will enter the sate Selecting Destination.
  * Selecting Destination : the agent decide what he should do and where he should go to it, his destination may be a shop or it may be the exit of the mall. On some occasions, for example if he executed an action faster than expected and need now to wait for the opening of the next shop he wants to go to, the agent may have to just wait in this state.
  * Walking in Mall : the agent is moving inside the mall towards his destination, his state will change once he reaches his destination.
  * Waiting for service : once an agent enters a shop he starts waiting in line to be served and his state changes once he start doing the service. If the task doesn't have the notion of waiting to be served (supermarkets for instance) the agent will change state immediately.
  * Executing service : the agent is executing the task, once he is over, he then start to wait for checking out.
  * Waiting for Checkout : the agent waits in line to be able to check out, his state changes once he start doing the check ou. If the task doesn't have the notion of check out, the agent will change his state immediately.
  * Checking out : the agent is executing the check out, once he is over, he goes back to the state Selecting Destination to determine his next destination.
  * Exiting Mall : if the agent's selected destination is the exit of the mall and if he has reached it, he enters this state, he will then exit the mall and return to the state Out.
