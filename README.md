# README

## Contents

- [Getting Started](#getting-started)
- [Docs](#docs)


## Getting Started
#### Ruby version
This is using ruby 2.7.1
```bash
  $ rbenv install 2.7.1
```

#### Database creation
```bash
  $ rails db:create
```

#### Database initialization
```bash
  $ rails db:setup
```

#### How to run the test suite
```bash
$ bundle exec rspec
```

#### Run locally
```bash
$ rails s -p <whatever_port_you_like>
```

## Docs
The following endpoints are available:

* [An endpoint to return the movies, ordered by creation](#movies)
* [An endpoint to return the seasons ordered by creation, including the list of episodes ordered by its number](#seasons-and-episodes)
* [An endpoint to return both movies and seasons, ordered by creation](#movies-and-seasons)
* [An endpoint for a user to perform a purchase of a content](#purchase-content)
* [An endpoint to get the library of a user ordered by the remaining time to watch the content.](#user-library)

## Movies
`GET /api/v1/movies`

#### Response
```json
[
  {
  "id": 1,
  "type": "Movie",
  "title": "The Shawshank Redemption",
  "plot": "Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.",
  "created_at": "2020/04/24"
  },
  {
  "id": 2,
  "type": "Movie",
  "title": "The Godfather",
  "plot": "The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.",
  "created_at": "2020/04/24"
  },
  ...
]
```

## Seasons and Episodes
`GET /api/v1/seasons`

#### Response
```json
[
  {
    "id": 11,
    "type": "Season",
    "title": "Money Heist S1",
    "plot": "An unusual group of robbers attempt to carry out the most perfect robbery in Spanish history - stealing 2.4 billion euros from the Royal Mint of Spain.",
    "created_at": "2020/04/24",
    "episodes": [
      {
        "id": 1,
        "number": 1,
        "title": "Efectuar lo acordado",
        "plot": "The Professor recruits a young female robber and seven other criminals for a grand heist, targeting the Royal Mint of Spain."
      },
      {
        "id": 2,
        "number": 2,
        "title": "Imprudencias letales",
        "plot": "Hostage negotiator Raquel makes initial contact with the Professor. One of the hostages is a crucial part of the thieves' plans."
      },
      ...
    ]
  },
  ...
]
```

## Movies and Seasons
`GET /api/v1/movies_and_seasons`

#### Response
```json
[
  {
    "id": 9,
    "type": "Movie",
    "title": "The Good, the Bad and the Ugly",
    "plot": "A bounty hunting scam joins two men in an uneasy alliance against a third in a race to find a fortune in gold buried in a remote cemetery.",
    "created_at": "2020/04/24"
  },
  {
    "id": 10,
    "type": "Movie",
    "title": "The Lord of the Rings: The Fellowship of the Ring",
    "plot": "A meek Hobbit from the Shire and eight companions set out on a journey to destroy the powerful One Ring and save Middle-earth from the Dark Lord Sauron.",
    "created_at": "2020/04/24"
  },
  {
    "id": 11,
    "type": "Season",
    "title": "Money Heist S1",
    "plot": "An unusual group of robbers attempt to carry out the most perfect robbery in Spanish history - stealing 2.4 billion euros from the Royal Mint of Spain.",
    "created_at": "2020/04/24"
  },
  {
    "id": 12,
    "type": "Season",
    "title": "Westworld S1",
    "plot": "Set at the intersection of the near future and the reimagined past, explore a world in which every human appetite can be indulged without consequence.",
    "created_at": "2020/04/24"
  },
  ...
]
```

## Purchase Content
`POST /api/v1/purchases`
```ruby
params = { purchase: { user_id: "1", video_content_purchase_option_id: "1" } }
```
#### Response
```ruby
# Successful
{
  "id": 1,
  "video_content": {
      "id": 1,
      "type": "Movie",
      "title": "The Shawshank Redemption",
      "plot": "Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.",
      "created_at": "2020/04/24"
  },
  "expires_at": "2020/04/26"
}

# Duplicate Purchase
{
  "error": "Validation failed: You still have an active purchase for the selected content."
}

# Invalid User and/or Purchase option
{
  "error": "Validation failed: User must exist, Video content purchase option must exist"
}

```

## User Library
`GET /api/v1/users/:id/library`

#### Response
```json
[
  {
    "id": 1,
    "video_content": {
      "id": 3,
      "type": "Movie",
      "title": "The Godfather II",
      "plot": "The early life and career of Vito Corleone in 1920s New York City is portrayed, while his son, Michael, expands and tightens his grip on the family crime syndicate.",
      "created_at": "2020/04/24"
    },
    "expires_at": "2020/04/26"
  },
  {
    "id": 11,
    "type": "Season",
    "title": "Money Heist S1",
    "plot": "An unusual group of robbers attempt to carry out the most perfect robbery in Spanish history - stealing 2.4 billion euros from the Royal Mint of Spain.",
    "created_at": "2020/04/24",
    "episodes": [
      {
        "id": 1,
        "number": 1,
        "title": "Efectuar lo acordado",
        "plot": "The Professor recruits a young female robber and seven other criminals for a grand heist, targeting the Royal Mint of Spain."
      },
      {
        "id": 2,
        "number": 2,
        "title": "Imprudencias letales",
        "plot": "Hostage negotiator Raquel makes initial contact with the Professor. One of the hostages is a crucial part of the thieves' plans."
      },
      ...
    ]
  },
]
```
