# WorkflowExtensionDemo
Demo project for WorkflowExtensionBundle

Thin wrapper to demonstrate the WorkflowExtensionBundle.

It is the same as doing the following
 
    composer create-project symfony/website-skeleton WorkflowExtensionDemo
    cd WorkflowExtensionDemo
    composer require make --dev
    composer require orm admin 
    composer require survos/workflow-extension-bundle //??
    
    # make the entity / repo
    bin/console make:entity Task
       # string, 55, not nullable
      
    
    
    bin/console doctrine:schema:update --force
