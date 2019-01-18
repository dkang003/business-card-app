#Business Cards App
-------
## What is it?
An app where users can exchange digital business cards (contact information) and keep track of people they have met.  This would ideally work on mobile.

## Technologies Used:
HTML5 | CSS3 | Ruby | Ruby on Rails | Active Record | Git | Github | Trello | PostgreSQL | BCrypt | Bulma | Heroku

## ERD
![Imgur](https://i.imgur.com/9sYxyl5.jpg)

## Gems Installed
BCrypt | pry-rails

## Wireframes
![Screen Shot 2019-01-11 at 4.04.50 PM](https://i.imgur.com/RBK9200.png)
![Screen Shot 2019-01-11 at 4.05.14 PM](https://i.imgur.com/AiCFkck.png)
![Screen Shot 2019-01-11 at 4.05.28 PM](https://i.imgur.com/Qf3QrGP.png)
![Screen Shot 2019-01-11 at 4.05.47 PM](https://i.imgur.com/4fKq3fV.png)
![Screen Shot 2019-01-11 at 4.06.06 PM](https://i.imgur.com/FWluL7J.png)
![Screen Shot 2019-01-11 at 4.06.55 PM](https://i.imgur.com/kydeHft.png)

## Screenshots
User Stories
[Trello Board](https://trello.com/b/SG0eyHQm/p2-business-cards)
![Screen Shot 2019-01-17 at 9.02.35 PM](https://i.imgur.com/qRrbVpl.png)

Home Page
![Screen Shot 2019-01-17 at 9.03.03 PM](https://i.imgur.com/MzLyHiP.png)

User Profile
![Imgur](https://i.imgur.com/XltwszT.png)

Search Page
![Imgur](https://i.imgur.com/HCjCfZT.png)

## Some problems I ran into:
1. Getting the forms to work with Bulma took a lot of time
2. Figuring out how to pass data to the form_for helpers in ERB, especially with the nested resources (Card#edit)
3. Had trouble figuring out how to maniupulate form helpers in Rails (see card search view and route / new card view)
4. Didn't get my ERD/associations right.  I had to re-associate models yesterday and had to re-wire all my links.
5. Deploying to Heroku (Page not found)

## Things I didn't get to do/finish:
1. Search bar for searching through the user's contacts
2. Smart search
3. Image upload AWS
4. Infinity scroll
5. Didn't get to connect my webcam for users to take picture and enter them into the system