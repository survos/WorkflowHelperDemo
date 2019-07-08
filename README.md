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
    composer require orm admin expression-language messenger
    composer require symfony/webpack-encore-bundle && yarn install
    
Bootstrapping the application.  We know we want users...
    
    composer require msgphp/user-bundle

We know we want a basic landing page, with links to login, etc.

    composer require survos/landing-bundle //??
    
Get bootstrap and jquery

    yarn add bootstrap jquery popper.js
    
and add them to app.js to make them global

```javascript
// app.js
require('jquery');
require('bootstrap');
```

           
    composer require survos/workflow-extension-bundle //??

    # make the entity / repo
    bin/console make:entity Task
       # name, string, 55, no (not nullable)
       
    bin/console doctrine:schema:update --force

    bin/console make:fixtures TaskFixtures
       # make a few tasks


      
## Credits

Inspired by https://github.com/lyrixx/SFLive-Paris2016-Workflow
