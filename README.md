<h1 align="center">Help Mario Save Princess Peach!</h1>

<p align='center'> Oh No! Princess Peach has been captured and sent to one of the corners on the grid. Do you have what it takes to find the princess and save the day? Find out by playing this game and it will show you the directions you need to take to save Princess Peach!</p> 

<br>

<p align='center'>
<img width="444" alt="Screen Shot 2022-09-10 at 7 24 36 PM" src="https://user-images.githubusercontent.com/93055633/189507691-f54ca954-8db3-4790-b7ca-bb2d8da7da3c.png">
</p>

<br>

<h2 align='center'>How to Clone and Play Game</h2>

<p align='left'>Step 1: First you want to open terminal and cd into the file you want to clone this project into</p>

<p align='left'>Step 2: Run in terminal to clone repo into folder </p> 

```git clone git@github.com:Mario-Saves-Peach/saving_peach_part_1.git```

<p align='left'>Step 3: cd into the project like so </p> 

```cd saving_peach_part_1 ```

<p align='left'>Step 4: Run this in terminal start program </p> 

``` ruby app/display_path.rb ```

<p align='left'>Step 5: Awesome, time to start! Input an odd number between 3 - 99, hit enter when inputted number (For this example i'll be using 5)</p>

```5```

<p align='left'>Step 6: Now we have to build a grid line by line using (-) by making a 5 x 5 grid (or whatever number you inputted like so)</p>

```-----```  <p>Hit enter and repeat until grid is built (make sure to include Princess Peach in one of the four corners by using 'p'</p>

```-----```

```--m--``` <p>Also be sure that mario is in the center of your gird using 'm'</p>

```-----```

```p----```

<p align='left'>Step 7: Great should have a grid that looks like so</p>

```-----```

```-----```

```--m--```

```-----```

```p----```

<p align='left'>Step 8: If everything was inputted correctly, hit enter and find out how to save Princess Peach</p>

<p align='left'>Example Results:</p>

```
DOWN
DOWN
LEFT
LEFT
```

<h3 align='center'>Wow! You do have what it takes to save Princess Peach, keep playing and try many different combinations to see how else you can save Peach! </h3>


<h2 align='center'>Where this challenge came from and how I planned to build it</h2>

<p align='center'>This project came from a HackerRank challenge called Bot Saves Princess: (https://www.hackerrank.com/challenges/saveprincess)
Although at first glance may seem really tough, once you mess around with it a little, you'll find that it's a fun challenge to solve! I find that Pseudocoding not only helps break down the problem and solve it, but guides the project in the right direction! Here is my Pseudocoding process I used to build this project! </p>  


Google Docs: [Mario Saves Peach Pseudocoding](https://docs.google.com/document/d/170HOMVXDxsaOheaqQG0kY1eFzod1Wqx1PDxWukh-z4c/edit?usp=sharing)

<h3 align='center'>Here are some doodles I did to find the formula ((N - 1) / 2)</h3>

<p align='center'><img width="248" alt="Screen Shot 2022-09-10 at 7 07 21 PM" src="https://user-images.githubusercontent.com/93055633/189507363-14428757-c254-405d-b729-b738f1ae74d9.png"></p>

<h3 align='center'>Here is my score when I inputted my code into the HackerRank Challenge</h3>

<p align='center'><img width="246" alt="Screen Shot 2022-09-10 at 7 11 00 PM" src="https://user-images.githubusercontent.com/93055633/189507433-8337cf79-d7ea-42f7-bd68-9f944752fc47.png"></p>

<br>

<h2 align='center'>How to run RSPEC and test this project</h2>

<p align='center'>While testing this application, I focused on two big points to test. I focused on input and output testing. I made sure you can't proceed playing if you've inputted something incorrectly (Error Handling). This is important because a user playing can make a mistake at any moment and it's important to tell them what the mistake was before trying again! I also focused on making sure the method works and can actually fulfill the purpose of the game! This project was built for a bot's input, so when running 'rspec' in the command line, it may look frozen, but it is waiting on your input before continuing. So you will need to pretend to be a bot and play one round. When finished, it will show you not only the directions to save Peach, but also will show you the testing results. (Please Use Picture Below as a Guide)</p>

<br>

<p align='center'><img width="693" alt="Screen Shot 2022-09-10 at 6 59 35 PM" src="https://user-images.githubusercontent.com/93055633/189507155-6d65865a-2b98-490a-b89e-04f886f75b88.png"></p>








