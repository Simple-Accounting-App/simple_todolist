# A Rails simple todo list app

This project aims at building a simple To do list app in Rails. :smile:

Here was the business brief:
- Voice of customer: "I like to keep myself organised. To do so, I wish I had an application in which I could list all my Todos."
- Required Features
  - As a todoer, I want to be able to create a Todo.
  - As a todoer, I want to be able to see all my Todos.

Here was the technical requirements:
- Main requirements
  - System must run on any computer.
  - System must keep data after the shutdown.
- Nice-to-have requirements
  - System should be fully tested.
- You-have-extra-time requirements
  - System should be containerized.

## Stack and requirements :brain:

### Stack

- Docker Compose: Containerization
- RubyOnRails:    Back-end framework
- Rspec:          Testing framework

### Requirements 

- Docker compose
- Docker

## How to launch app :mechanical_arm:

- Clone project
- Go to project folder: `cd simple_todolist/`
- Create docker image and containers : `docker compose build`
- Launch containers in a project terminal : `docker compose up`
- In another project terminal, create database, add migrations and seeds: `docker compose exec web rails db:create db:migrate db:seed`
- Open browser and go to: `http://localhost:3000`

## How to test app :test_tube:

- Create database, add migrations and seeds in Test: `docker compose exec web rails db:create db:migrate db:seed RAILS_ENV=test`
- Run rspec tests: `docker compose exec web rspec spec`
- To check linter, run rubocop: `docker compose exec web rubocop`

## Preview :film_strip:

[Link to preview Todo list app](https://drive.google.com/file/d/1_2iYA3Az2JkmkfpVKDknKahTb5oNYznv/view?usp=share_link)
