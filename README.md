# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

to check/create Articles: 
- rails c # to startup rails console
- Article.all # call all Articles from Articles table
- Article.create(title: "first article", description: "description") # can create an article
- article = Article.new # creates a new article object to a variable. 
- article.title = "2nd title" # can set attributes 
- article.save # inserts the article var in the database. 

to read an Article
- Article.find(2) # finds Article of id 2
- Article.first
- Article.last

update table Articles
- article = Article.find(2)
- article.title = "changed title"
- article.save # save changes of article in database

delete
- article.destroy

can debug errors on article objects var:
- article.errors.full_messages