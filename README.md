unicorn-wireframe
=================

A wireframe for a unicorn app with rake setup to handle slim, coffee and sass, through compass.


New Project from this one
-------------------------

Use the next code to clone only the last version of the repo:

    $ git clone --depth 1 -b master git@github.com:rcrmn/unicorn-wireframe.git NewProjectName
    
    or via HTTPS
    
    $ git clone --depth 1 -b master https://github.com/rcrmn/unicorn-wireframe.git NewProjectName

And then re-init git, so you end up with a clean repo:

    $ cd NewProjectName
    $ rm -rf .git

Finally just:

    $ bundle
    
To install all the dependencies.

Running the Server
------------------

Run the server with

    $ unicorn

This will start the server in port 8080

You can also use

    $ unicorn -p 80

To run on port 80


Directory Structure
-------------------

The project files are in
    
    app/*
    public/*

The routes are in

    app.rb


Dependencies
------------

Requires
    Ruby 2.0
    unicorn
    sinatra
    
Also it's configured to use
    slim
    sass
    compass
    rack-coffee
    json

