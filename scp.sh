#!/bin/bash

profile=$1

source=$2

dest=$3

case $profile in
    profile1)
        user="user"
        host="IP"
        port=
        [ -z "$dest" ] && dest="/home/profile1/" 
        ;;
    profile2)
        user="user"
        host="IP"
        port=
        [ -z "$dest" ] && dest="/home/profile2/"   
        ;;
    *)
        echo "Unknown profile: $profile"
        exit 1
        ;;
esac

# Execute the scp command
scp -P $port "$source" $user@$host:"$dest"