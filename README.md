# WellBeing

## By: Jason Anaya, Michael Emono, Rich Rizzo

#Overview

Remember Tamagotchis?  
![wiki tamagotchi] (https://upload.wikimedia.org/wikipedia/commons/f/f2/Tamagotchi_0124_ubt.jpeg =400x300)

If not, feel free to check out this [delightful toy] (https://en.wikipedia.org/wiki/Tamagotchi) from the 90s.

We started this project at the CSU, East Bay Spring 2016 Game Jam, where the theme was "intermission". Where do natural pauses occur in public spaces? The office elevator, the bus stop, the empty hallway-- all of these represent quiet, uneventful moments in day-to-day life. What if we could make them more interesting? What if there could be a fun, engaging intermission for ordinary people to disrupt their daily routines. 

Our idea came out out of-- you guessed it-- Tamgagotchi. But another part of it came out of a curiosity of how people might treat new members of a community. Much like the actions you could take to your Tamagotchi, what if you could encourage, or feed a person you just encountered. What if you could hurt them? We set out to find some answers.


#Implementation

In order to make our the experience voyeuristic but also interactive we decided to make a box that users could peer into and engage with their newfound human pet. 

We filmed approximately 40 to 50 short videos of different emotional states, as well as our characters reactions to different kinds of input. We decided to limit the selection of actions a user could take to just four--encourage, feed, punish, entertain. This was mostly due to the time constraint but also to simplify the simualtion of the character's emotional state. 

We thought it would be a good idea to make this a web application, instead of a standalone exhibit. This way people could play with it online.
We used the Youtube Player API to show the progression of our character's emotional state over time. Initially we did not have the icons and wellbeing stat bar that are visible today. Our goal was to just get it working and to display the videos inside of a box. 

There is a natural decay to the character's emotional wellbeing over time, however different actions taken will make it go up or down. When a video finishes playing, we check the wellbeing level and randomly grab a corresponding video (assigned to that level) using an API request with AJAX. The same structure is applied to action videos. Some actions have more than one video, so when we receive input a request is made the action video API and is returned. We could have used an Amazon Web Services bucket for the videos, but our concern was again...time, and Youtube ultimately won out because of its awesome Player API, and reliable hosting. In the future we might switch over to AWS because there are some aesthic issues with the Youtube Player, and honestly it's a good excuse to learn how to store and serve videos on a cloud service.

Isn't cardboard a fantastic material? 
![image of box] (https://www.dropbox.com/s/f5vnropbqcw2che/IMG_2440.JPG)

![side buttons] (https://www.dropbox.com/s/8pvj4g0qvevmsgi/IMG_2441.JPG)

![more side buttons] (https://www.dropbox.com/s/a9rnxqei6tj1ukb/IMG_2442.MOV?dl=0)


