
[![General Assembly Logo](https://camo.githubusercontent.com/1a91b05b8f4d44b5bbfb83abac2b0996d8e26c92/687474703a2f2f692e696d6775722e636f6d2f6b6538555354712e706e67)](https://generalassemb.ly/education/web-development-immersive)

# Honey Bee Colony Management API
Repo: https://github.com/donpowers/BeeMgtApp-Api
Repo: https://github.com/donpowers/BeeMgtApp-Client
Heroku: https://git.heroku.com/beemgtapp-api.git

Goals

1. Build an custom API using Ruby on Rails that can be used by a front end to can create, read, update, and delete data in a SQL database.
2. Design and create the tables, with a 'one to many' relationship.

Objectives

1. A working Ruby on Rails framework, built by me, hosted on the internet.
2. Source Control: Managing and interacting with a git repository to store changes to code.

Requirements

1. Implement an API based on the Ruby on Rails framework.
2. Deployed online, where the rest of the world can access it.

##API Description

This API will provide the ability to perform CRUD on a 'hive' table either using CURL scripts or an API initiated from a Front End framework such as AJAX.

##Data Model(ERD)
http://i.imgur.com/sGyoD9N.png

##API Project approach

1. Determine what DB tables are required and relationships
2. Build out rails scaffold for new tables to support features.
3. Implement routes and controllers along with curl scripts for support features.
4. Add 'current_user' support.
5. Build custom route(return on those hives for the user logged in)
6. Deploy repo to production site.

I followed my project approach as listed above.  It worked well. I had
only a few challenges: current user support and heroku deploy. Working
through those issues were accomplished relatively quickly(< 3hours).

I did add a custom route to retrieve the current users hives.
