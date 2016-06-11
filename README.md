# WellBeing

### [Application Here] (http://w3ll-b3ing.herokuapp.com/)

## By: [Jason Anaya] (http://www.jasonanaya.com/about/index.htm), [Michael Emono] (https://www.linkedin.com/in/michael-emono-145a02aa), [Rich Rizzo] (http://www.richrizzo.com)

#Overview

Remember Tamagotchis?  
![wiki tamagotchi] (https://upload.wikimedia.org/wikipedia/commons/f/f2/Tamagotchi_0124_ubt.jpeg)

If not, feel free to check out this [delightful toy] (https://en.wikipedia.org/wiki/Tamagotchi) from the 90s.

We started this project at the CSU, East Bay Spring 2016 Game Jam, where the theme was "intermission". Where do natural pauses occur in public spaces? The office elevator, the bus stop, the empty hallway-- all of these represent quiet, uneventful moments in day-to-day life. What if we could make them more interesting? What if there could be a fun, engaging intermission for ordinary people to disrupt their daily lives in these spaces. 

Our idea came out out of-- you guessed it-- Tamgagotchi. But another part of it came out of a curiosity of how people might treat new members of a community. Much like the actions you could take to your Tamagotchi, what if you could encourage, or feed a person you just encountered. What if you could hurt them? We set out to find some answers.


#Implementation

In order to make our the experience voyeuristic but also interactive we decided to make a box that users could peer into and engage with their newfound human pet. 

We filmed approximately 40 to 50 short videos of different emotional states, as well as our characters reactions to different kinds of input. We decided to limit the selection of actions a user could take to just four--encourage, feed, punish, entertain. This was mostly due to the time constraint but also to simplify the simualtion of the character's emotional state. 

We thought it would be a good idea to make this a web application, instead of a standalone exhibit. This way people could play with it online.
We used the Youtube Player API to show the progression of our character's emotional state over time. Initially we did not have the icons and wellbeing stat bar that are visible today. Our goal was to just get it working and to display the videos inside of a box. 

There is a natural decay to the character's emotional wellbeing over time, however different actions taken will make it go up or down. When a video finishes playing, we check the wellbeing level and randomly grab a corresponding video (assigned to that level) using an API request with AJAX. The same structure is applied to action videos. Some actions have more than one video, so when we receive input a request is made to the action video API and is an appropriate video id gets returned. We could have used an Amazon Web Services bucket for the videos, but our concern was again...time, and Youtube ultimately won out because of its awesome Player API, and reliable hosting. In the future we might switch over to AWS because there are some aesthic issues with the Youtube Player, and honestly it's a good excuse to learn how to store and serve videos on a cloud service.

#Future Work

You can learn a lot in a limited amount of time, however you there's always that nagging feeling you could do more. As far as using the box and displaying it in a hallway goes, you could run social experiments. We could take more video segments and have the same kind of simulation but of people with different races or genders. At the very least we want to record the data about who pressed what action buttons to determine how well our character was treated over time. This would be a relatively simple database schema addition and migration. I'd personally like to polish up the web application to make it more aesthetically pleasing. There are a few directions in which we could take it. 

This was an incredibly fun project to work on, and I liked seeing what we could accomplish in such a limited amount of time. 

#PHOTOS AND VIDEO
Please check out some photos in video of the box in action.

### [Media Here] (https://www.dropbox.com/sh/43mq52q1rylnnzi/AACdtlbcwsIFZKvQ5Q8rfl8_a?dl=0) 










