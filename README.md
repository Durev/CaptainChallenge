# Captain Challenge

This is a toy application including a fighting game and an interface to manage different characters.

## Play

### Online

You can play online [here](https://captain-challenge.herokuapp.com/).

### Locally


To run it on your computer :

Download or git clone this repo. Then bundle install :

```
$ bundle install
```

Next, migrate the database:

```
$ rails db:migrate
```

And create the first characters : (it might take a few seconds)

```
$ rails db:seed
```

You are ready to run the app in a local server:

```
$ rails server
```
