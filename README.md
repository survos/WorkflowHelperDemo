# WorkflowExtensionDemo
Demo project for WorkflowExtensionBundle

Thin wrapper to demonstrate the WorkflowExtensionBundle.

It is the same as doing the following
 
    composer create-project symfony/website-skeleton WorkflowExtensionDemo
    cd WorkflowExtensionDemo
    composer require make orm-fixtures --dev
    composer require orm admin 
    composer require survos/workflow-extension-bundle //??
    
    # make the entity / repo
    bin/console make:entity Task
       # name, string, 55, no (not nullable)
       
    bin/console doctrine:schema:update --force

    bin/console make:fixtures TaskFixtures
       # make a few tasks
      
    # load the tasks
    bin/console doctrine:fixtures:load --append
    
    # start the server
    
    
