#!/bin/bash

# Create Variables

states=('Texas' 'California' 'Illinois' 'New York' 'Colorado')

for state in ${states[@]};
do
  if [ $state == 'Hawaii']
  then
    echo "Hawaii is the best!"
  else
    echo "I'm not fond of Hawaii."
  fi
done
