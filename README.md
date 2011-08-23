# Welcome to Montego Bay Convention Centre!

####let's call this version 0.2a

### There is still much to do:

## big things
* add content from sourcedocs
* spruce up the frontpage with jQuery
* add more pages for the flags, see powerpoints
* set up /dev/ database
* FINAL STEP: register mobaycentre.heroku.com as the DNS server

## little things
* tweak the styling --- remember to use `sass --watch public/stylesheets/scss/custom.scss:public/stylesheets/custom.css`
* add favicon
* rebrand refinery with EventBooking logos
* brand the footer, and figure out what to do with the adspace

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