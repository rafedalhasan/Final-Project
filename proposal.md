# Proposal

## What will (likely) be the title of your project?

The title of the game will be ------[ Who's Who ]

## In just a sentence or two, summarize your project. (E.g., "A website that lets you buy and sell stocks.")

The project is a web-based multiplayer guessing game where players submit personal stories anonymously, and others try to guess who the story belongs to, with real-time interaction powered by Godot for gameplay and Python/Flask for backend logic and data management.

## In a paragraph or more, detail your project. What will your software do? What features will it have? How will it be executed?

The project is a "multiplayer web-based guessing game" that combines "Godot" for gameplay and "Python/Flask" for backend support. Players join a session and anonymously submit short stories or facts about themselves. In each round, the game presents a randomly selected story, and players attempt to guess which participant it belongs to. Correct guesses earn points, with a live scoreboard tracking player progress. The game includes features such as real-time updates using WebSockets, a timer for each round to keep gameplay dynamic, and optional persistent data storage for leaderboards or ongoing sessions. The game is executed by hosting the Godot engine in a web browser, embedded within an HTML page, while Flask handles server-side tasks such as user management, data storage, and multiplayer synchronization. This setup ensures seamless interaction, making the game accessible to multiple players simultaneously on any device with a web browser.

## If planning to combine 1051's final project with another course's final project, with which other course? And which aspect(s) of your proposed project would relate to 1051, and which aspect(s) would relate to the other course?

I plan to combine my final project  with CIS 1051 and Harvard’s CS50x course to create a comprehensive, full-stack web-based game. The Python component, which aligns with 1051, will handle the backend logic using Flask, including real-time multiplayer functionality, story submission, and score tracking through WebSocket communication. This will demonstrate my ability to build and manage dynamic server-side applications using Python. The CS50x course will complement this by focusing on frontend development with HTML or CSS to create an engaging user interface, as well as incorporating Godot for game mechanics and interactivity. Additionally, CS50x’s focus on system design and deployment will guide the integration of databases for persistent data storage and the deployment of the game on a web platform. This combined project will showcase my skills in both backend programming and full-stack development.


## If planning to collaborate with 1 or 2 classmates for the final project, list their names, email addresses, and the names of their assigned TAs below.

I am willing to do this project alone.

## In the world of software, most everything takes longer to implement than you expect. And so it's not uncommon to accomplish less in a fixed amount of time than you hope.

### In a sentence (or list of features), define a GOOD outcome for your final project. I.e., what WILL you accomplish no matter what?

A good outcome for my final project will include: successful implementation of a multiplayer web-based game where players can submit stories, guess the story owner in real-time, track scores, and ensure seamless game functionality using Python (Flask) and Godot, with a fully responsive web interface.

### In a sentence (or list of features), define a BETTER outcome for your final project. I.e., what do you THINK you can accomplish before the final project's deadline?

A better outcome for my final project will include: full implementation of the multiplayer game with real-time updates via WebSockets, a persistent leaderboard using a database, timer-based rounds, a polished user interface with responsive design, and seamless deployment on a web platform for public access.

### In a sentence (or list of features), define a BEST outcome for your final project. I.e., what do you HOPE to accomplish before the final project's deadline?

A best outcome for my final project will include: a fully functional multiplayer game with real-time gameplay, a dynamic leaderboard with persistent data across sessions, custom game rooms for multiple concurrent sessions, a secure login system for personalized scores, an interactive UI with animations, and successful deployment with scalable performance on a cloud platform like AWS or Heroku.


## In a paragraph or more, outline your next steps. What new skills will you need to acquire? What topics will you need to research? If working with one of two classmates, who will do what?


My next steps involve breaking down the project into manageable tasks and acquiring the necessary skills to implement them. First, I will deepen my understanding of real-time communication using WebSockets in Flask to ensure smooth multiplayer interaction. I’ll also need to learn how to integrate Godot with web technologies, specifically how to export and embed a Godot project into an HTML page. Additionally, I will research database management to implement a persistent leaderboard, focusing on tools like SQLite or PostgreSQL. Another key area of study will be deployment strategies, including hosting the game on platforms like Heroku or AWS for scalability.

If working with classmates, the tasks will be divided as follows: I will focus on the backend logic, including Flask and WebSocket integration. One classmate can handle frontend design and game mechanics in Godot, ensuring the game is interactive and visually engaging. The other classmate can work on database integration and deployment, ensuring data persistence and setting up the live server. This division of labor will help us efficiently manage the project while each of us hones specific technical skills.
