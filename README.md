launchscripts
=============

These are a collection of Launch-Academy-specific hubot scripts made by Launch Academy students.

##Resources

#####Public Hubot Scripts 
http://hubot-script-catalog.herokuapp.com/

#####On Github
https://github.com/github/hubot-scripts

#####Tutorials

http://theprogrammingbutler.com/blog/archives/2011/10/28/hubot-scripts-explained/    
http://net.tutsplus.com/tutorials/javascript-ajax/writing-hubot-plugins-with-coffeescript/


###Testing Your Script
1. Install npm and node:  `brew install npm`    
2. Install hubot and coffeescript:  `npm install -g hubot coffee-script`  
3. Create a hubot:  `hubot --create myhubot`     
4. Go into your new hubot directory: `cd myhubot`    
5. Place your script in the scripts folder  
6. Start your hubot: `bin/hubot`    
7. Press enter to get the `Hubot>` prompt and test any command you want  

For more information see: https://github.com/github/hubot/blob/master/docs/README.md  


###Add Documentation To Your Script

    # Description
    #   <description of the scripts functionality>
    #
    # Dependencies:
    #   "<module name>": "<module version>"
    #
    # Configuration:
    #   LIST_OF_ENV_VARS_TO_SET
    #
    # Commands:
    #   hubot <trigger> - <what the respond trigger does>
    #   <trigger> - <what the hear trigger does>
    #
    # Notes:
    #   <optional notes required for the script>
    #
    # Author:
    #   <github username of the original script author>
    
If you have nothing to fill in for a section you should include None in that section. Empty sections which are optional should be left blank. 
