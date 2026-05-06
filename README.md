# README

# MusicApp

An app where you can share music and tell your opinions on albums

---

## Features

* User authentication (sign up, login, logout)
* Create posts with:

  * Title
  * Artist
  * Album cover image (via URL)
  * Description
* View a feed of posts
* React to posts
* Comment on posts
* Delete own posts

---

## Tech Stack

* Ruby on Rails
* MongoDB (Mongoid)
* ERB templates and CSS
* Devise for authentication
* WSL environment

---

## Setup Instructions

### 1. Clone the repository

```bash
git clone <your-repo-url>
cd music_app
```

### 2. Install dependencies

```bash
bundle install
```

### 3. Start MongoDB

```bash
mongod
```

### 4. Start the Rails server

```bash
bin/rails s
```

### 5. Open in browser

http://localhost:3000

---


## Data Structure

* User has many posts
* User has many comments
* Post belongs to user
* Post has many comments
* Comment belongs to user
* Comment belongs to post

---

## Design Decisions

* MongoDB was used for flexible data storage
* Images are stored as URLs to simplify implementation
* The interface uses a dark theme for consistency

---

## Future Improvements

* Image upload instead of URL input
* Integration with external music APIs
* User profile pages
* Edit functionality for posts and comments
* Improved mobile responsiveness

---

## AuthorS

Līga + ChatGPT

---

## Notes

This project was developed to practice:

* Rails MVC structure
* MongoDB with Mongoid
* Authentication with Devise
* Implementing user interactions such as comments and reactions

# music_app_forfunlesson
