# Welcome to Montego Bay Convention Centre! #

#### Version 0.5 - Alpha Release Candidate

### Launch Staging ###
 * ~~Rotating Banner Ads~~
 * ~~Javascript baby!~~
 * Brand Website
 * ~~Drop-down flags~~
 * ~~Content~~
 * ~~Mobay XML link~~
 * Set up User's account
 * Custom Forms
 * TEST. EVERYTHING.

# EventBooking and RefineryCMS User Guide

## Introduction
This is the user guide for http://www.mobaycentre.com.

## Useful Links
* http://mobaycentre.com
* http://mobaycentre.com/refinery
* http://refinerycms.com
* http://github.com/ebcomalex/mobaycentre
* http://go.smgbooking.com

## Editing Your Website
Refinery makes it very simple to edit your website without ever touching the sourcecode.

Log in now at http://mobaycentre.com/refinery

### The Events Tab
MobayCentre has its own database of upcoming events. In addition, it has also been designed to pull in event data from your `PUBLICLY ANNOUNCED` and `CONFIRMED` events on the go.smgbooking.com calendars. It checks for new events once an hour. At the time of this release it will only pull in the Title, Description, Venue, and Start/End times. 

It is up to you to add additional information and mark Featured Events. You can do this by visiting the `Edit Event` page.

#### Creating Events
The calendar will automatically populate with data from go-smgbooking.com. But you can also create events manually here.  Just click "Add New Event," and you're on your way! Remember, if you create an event manually, and then set it's publicity status to "Announced" on your smgbooking account, it will show up twice!

#### Editing your event
Click the pencil icon on the right of your event to edit your event. Mark an event as "Featured" if you want it to appear on the home page. Further integration with the EventBooking publicity tab is planned.

#### Deleting an event
Deleting an event will remove it from MobayCentre's Events database. If the event originated in your smgbooking account, you must also un-announce it on that event's corresponding publicity tab, or it will just reappear in the mobaycentre.com Events database within the hour.

### Managing Ads
You have an adspace in the page footer. You can control what goes there on the ads tab in your admin panel.
*unfinished*

### Uploading Files
*unfinished*

### Adding Photos to the Gallery
*unfinished*

## Learning to program Ruby
*definitely not finished*

### There is still much to do:

## big things
* ~~add content from sourcedocs~~
* spruce up the frontpage with jQuery
* add more pages for the flags, see powerpoints
* ~~set up /dev/ database~~
* FINAL STEP: register mobaycentre.heroku.com as the DNS server
* ~~add "featured events" to front page~~

## little things
* ~~tweak the styling --- remember to use `sass --watch public/stylesheets/scss/custom.scss:public/stylesheets/custom.css`~~
* ~~add favicon~~
* rebrand refinery with EventBooking logos
* ~~brand the footer, and figure out what to do with the adspace~~

## THINGS TO REMEMBER:
### git workflow
    git checkout -b name_of_my_branch
    git status (see changes)
    git add <name_of_file> (or "git add ." for everything)
    git commit -m "Detailed message about the changes"
    git checkout master
    git merge name_of_my_branch
    git push origin master    
### google analytics
* google analytics code for mobaycentre.com: UA-25297656-1
* see settings in refinery dashboard to add this

### calendar xml from EventBooking.com
* change the url string in lib/cron.rake so it has mobaycentre.com's publicity weblink, not charlotte harbor
