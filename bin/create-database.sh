#!/usr/bin/env bash
bin/console doctrine:database:drop --force
bin/console doctrine:schema:update --force && bin/console doctrine:fixtures:load --append


