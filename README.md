# TascaS2.01
Este repositorio es para subir los Ejercicios de la Tasca S2.01


# MySQL Database Modeling Exercises

This repository contains several **database modeling exercises implemented in MySQL**.
The objective of the project is to design relational database schemas, define relationships between entities, and test them with sample data and queries.

The exercises are organized into different difficulty levels and simulate real-world applications such as an optical store management system, a food delivery platform, a video sharing platform, and a music streaming service.

---

# Project Structure

```
TascaS2.01
│
├─ Level 1
│   ├─ Exercise 1 - Optics_cul_D'ampolla
│   │   └─ sql
│   │       ├─ schema.sql        # Database structure (tables, relationships, constraints)
│   │       ├─ inserts.sql       # Sample data used for testing
|   |       ├─ queries.sql       # Queries used to verify the database design
│   │       └─ EER.png           # The following EER diagram represents the conceptual database design for this exercise. 
│   │
│   └─ Exercise 2 - Pizzeria
│       └─ sql
│           ├─ schema.sql
│           ├─ inserts.sql
│           ├─ queries.sql
|           └─ EER.png 
│
└─ Level 2
   └─ Exercise 1 - YouTube
       └─ sql
           ├─ schema.sql
           ├─ inserts.sql
           ├─ queries.sql
           └─ EER.png 


```

Each exercise focuses on designing a correct relational model and verifying it through SQL queries.

---

# Technologies

* MySQL
* SQL (DDL and DML)
* Relational Database Design

---

# Level 1

## Exercise 1 — Optical Store (Òptica)

The optical store **“Cul d'Ampolla”** wants to digitalize the management of clients and glasses sales.

The system must store information about:

### Suppliers

* Name
* Address (street, number, floor, door, city, postal code, country)
* Phone
* Fax
* Tax ID (NIF)

### Glasses

* Brand
* Lens graduation
* Frame type (floating, plastic, metal)
* Frame color
* Lens color
* Price

Each **brand of glasses is supplied by only one supplier**, but a supplier may provide multiple brands.

### Clients

* Name
* Postal address
* Phone
* Email
* Registration date
* Referring client (if someone recommended the store)

### Employees

The system must record **which employee sold each pair of glasses**.

---

## Exercise 2 — Pizzeria

Design a database for a **food ordering website** that allows customers to order food online for delivery or pickup.

### Customers

* Name
* Surname
* Address
* Postal code
* City
* Province
* Phone number

Cities and provinces are stored in separate tables.

* One **province** can contain many **cities**
* One **city** belongs to a single **province**

### Orders

Each order stores:

* Date and time
* Delivery type (home delivery or store pickup)
* Quantity of products
* Total price

A customer can place multiple orders, but each order belongs to only one customer.

### Products

Products can be:

* Pizzas
* Burgers
* Drinks

Each product stores:

* Name
* Description
* Image
* Price

### Pizza Categories

* Each pizza belongs to one category
* A category can contain multiple pizzas

### Stores

* Address
* Postal code
* City
* Province

A store manages many orders.

### Employees

Each employee stores:

* Name
* Surname
* NIF
* Phone
* Role (cook or delivery driver)

For delivery orders, the system must store:

* The delivery employee
* Delivery date and time

---

# Level 2

## Exercise — YouTube

Design a simplified database model for a **video sharing platform similar to YouTube**.

### Users

* Email
* Password
* Username
* Birth date
* Gender
* Country
* Postal code

### Videos

* Title
* Description
* File size
* Video file name
* Duration
* Thumbnail
* Number of views
* Likes
* Dislikes
* Visibility status (public, hidden, private)

A video may contain multiple **tags**.

### Channels

A user can create a channel with:

* Name
* Description
* Creation date

Users can **subscribe to other channels**.

### Interactions

Users can:

* Like or dislike a video (only once)
* Comment on videos
* Like or dislike comments

Each interaction stores the **user and the date/time** it happened.

### Playlists

Users can create playlists with:

* Name
* Creation date
* Visibility (public or private)

---

# Level 3

## Exercise — Spotify

Design a simplified database model for a **music streaming platform similar to Spotify**.

### Users

Two types of users:

* Free
* Premium

Stored data:

* Email
* Password
* Username
* Birth date
* Gender
* Country
* Postal code

### Premium Subscriptions

Premium users have subscriptions storing:

* Start date
* Renewal date
* Payment method

Payment methods:

* Credit card
* PayPal

### Payments

For each payment:

* Date
* Order number
* Total amount

### Playlists

Users can create playlists containing:

* Title
* Number of songs
* Creation date
* Status (active or deleted)

Deleted playlists are not removed from the system; they are marked as deleted with a deletion date.

Playlists can be **shared**, allowing other users to add songs.

### Music Structure

**Song**

* Title
* Duration
* Number of plays

**Album**

* Title
* Release year
* Cover image

**Artist**

* Name
* Artist image

Relationships:

* A song belongs to one album
* An album can contain multiple songs
* An album belongs to one artist
* An artist can publish multiple albums

Users can:

* Follow artists
* Save favorite albums
* Save favorite songs

Artists can also be **related to other similar artists**.

---

# Validation Queries

To verify that the database design works correctly, the following queries should return valid results.

### Optical Store

* List the total invoices of a client within a specific period.
* List the glasses models sold by an employee during a specific year.
* List the suppliers that have supplied glasses successfully sold by t
