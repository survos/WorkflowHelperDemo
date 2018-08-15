# WorkflowExtensionDemo
Demo project for WorkflowExtensionBundle

Thin wrapper to demonstrate the WorkflowExtensionBundle (https://github.com/survos/workflow-bundle).

It is available at (heroku URL), it may take several seconds to spin up.

To run this demo locally:

    git clone 
    cd WorkflowExtensionDemo
    
It is the same as doing the following
 
    # load the tasks
    bin/console doctrine:fixtures:load --append
    
    # start the server
    

## Re-creating this demo

These are the steps to recreate this bundle, pick and choose to integrate it with your project.


    composer create-project symfony/website-skeleton WorkflowExtensionDemo
    cd WorkflowExtensionDemo
    composer require make orm-fixtures --dev
    composer require orm admin expression-language
    composer require survos/workflow-extension-bundle //??
    
    # make the entity / repo
    bin/console make:entity Task
       # name, string, 55, no (not nullable)
       
    bin/console doctrine:schema:update --force

    bin/console make:fixtures TaskFixtures
       # make a few tasks


      
## Credits

Inspired by https://github.com/lyrixx/SFLive-Paris2016-Workflow
