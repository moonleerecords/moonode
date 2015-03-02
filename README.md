# Moonode

Dashboard and data provider for your record label

## Prerequisites (if you want to use vagrant box)

### Virtualbox

```bash
sudo add-apt-repository "deb http://download.virtualbox.org/virtualbox/debian trusty contrib"
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -
sudo apt-get update
sudo apt-get install -y virtualbox-4.3 dkms
```

### vagrant

```bash
sudo apt-get install vagrant
```

## Install and run

Dev environment in the examples below is in `/home/username/dev`, so if you have it different, just be sure to change paths.

We use slightly modified [rails-dev-box](https://github.com/rails/rails-dev-box) vagrant box as an development VM - check documentation there if you have any concerns.

### Clone project

```bash
git clone git@bitbucket.org:dperic/moonode.git ~/dev/moonode
```

### Run vagrant (first time it takes a bit longer)

```bash
cd ~/dev/moonode
vagrant up
```

### Install/Setup

```bash
vagrant ssh
bundle
```

### Run

```bash
bin/rails server -b 0.0.0.0
```

Your app will be available at http://localhost:3000
