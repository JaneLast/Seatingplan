#Seatingplan

##Seating plan app for TCA

This is a seating plan app for the Developer in Test trainees.
There are two versions, both are WIP.

## PHP Version

Code isn't perfect but it works. CSS is WIP.

#### To run

You will need a server to run the PHP files on, it can be either on a live server or a local. 
When you have the index.php loaded into a browser, click on the "Randomize!" button, which will randomize the names set.

#### How to set names

In the index.php file there is a line of code that looks like:
```php
$seats = array("Name1", "Name2", "Name3", "Name4", "Name5", "Name6", "Name7");
```
That is where the names should be set. They are comma seperated. At the moment the program only works with 7 names no more or less. This will be improved on in the future.

## Ruby Version

This version was made to test myself and see if I could apply the knowledge I have learned to a personal project.

#### To run

This project uses highline/import and io so you will need to install the Rubygems for it or run bundler from your cmdline:
```
bundle install
``` 

Then from your cmdline run the rubyfile from inside the correct folder with
```
ruby ./seatingplan.rb
```

In the cmdline you will now get 3 options. To open the names file, Randomize the names or to exit. Press the number associated with the option wanted.

1. Open file - This uses a system command to open a file

2. Randomize seating plan - This reads in a yml file and uses the shuffle method to randomize the names.

3. Exit - This exits the program

#### How to set names

Use the program to open the file or navigate to names.yml and open. To add peoples names just follow the format that is already there. 

A new name has to be on a new line and prefixed with a - 

Keep the indentation correct.

For example
```

  - Name1
  - Name2
```