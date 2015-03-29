# Moonode

Dashboard and data provider for your record label (in early development stage)

## Setup

### Prerequisites (if you want to use vagrant box)

#### Virtualbox

```bash
$ sudo add-apt-repository "deb http://download.virtualbox.org/virtualbox/debian trusty contrib"
$ wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -
$ sudo apt-get update
$ sudo apt-get install -y virtualbox-4.3 dkms
```

#### Vagrant

```bash
$ sudo apt-get install vagrant
```

### Install and run

Dev environment in the examples below is in `/home/username/dev`, so if you have it different, just be sure to change paths.

We use slightly modified [rails-dev-box](https://github.com/rails/rails-dev-box) vagrant box as an development VM - check documentation there if you have any concerns.

#### Clone project

```bash
$ git clone git@bitbucket.org:dperic/moonode.git ~/dev/moonode
```

#### Run vagrant (first time it takes a bit longer)

```bash
$ cd ~/dev/moonode
$ vagrant up
$ vagrant ssh
```

#### Install/Setup

```bash
$ bundle
$ rake db:migrate
```

#### Run

```bash
$ bin/rails server -b 0.0.0.0
```

Application will then be available at http://localhost:3000

#### Tests

```bash
$ rake db:migrate RAILS_ENV=test
$ rake test
```

#### How to use

TODO

# TODO

* check http://www.rubyonrails365.com/7-must-have-gems-to-install-on-any-project/?utm_content=bufferf9e5b&utm_medium=social&utm_source=twitter.com&utm_campaign=buffer
* views cleanup
* clear coffescripts
* use https://github.com/norman/friendly_id
* default values - for example - actively playing
* update forms - for example, to add a releaseType on release page
* admin lte