#!/bin/bash

# manage bad cached lists on 12.04.5
rm -rf /var/lib/apt/lists

apt-get update
apt-get upgrade -y

# manage broken package indexes on 12.04.5
apt-get install dpkg libreadline-dev -y
