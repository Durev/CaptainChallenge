# Captain Challenge

This is a toy application including a fighting game and an interface to manage different characters.

## Play

### Online

You can play online [here](https://captain-challenge.herokuapp.com/).

### Locally


To run it on your computer :

Git clone this repo

```
git clone https://github.com/Durev/CaptainChallenge.git
```
or
```
git clone git@github.com:Durev/CaptainChallenge.git
```

```
$ bundle install --without production
```

Next, migrate the database:

```
$ rails db:migrate
```

Finally, run the test suite to verify that everything is working correctly:

```
$ rails test
```

If the test suite passes, you'll be ready to run the app in a local server:

```
$ rails server
```
