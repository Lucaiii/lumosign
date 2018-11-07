#!/bin/bash

cd /Users/owenwatts/Documents/lumosign/


: only works (doesnt actually work currently) for one singular ipa currently which you can set right below this comment

oneipa="spotify";

: you need to set ipapath equal to a valid ipa. rips.

echo "declaring variables";
validipa="/Users/owenwatts/Documents/lumosign/valid.ipa";
validpath="/Users/owenwatts/Documents/lumosign";
ipastosign="/Users/owenwatts/Documents/lumosign/ipastosign";

mv $validipa $validpath/valid.zip;
validzip="$validpath/valid.zip";

unzip $validzip;

mv $validpath/ipastosign/$oneipa.ipa $validpath/ipastosign/$oneipa.zip;

oneipazip="$validpath/ipastosign/$oneipa.zip";

unzip -d ipastosign/ ipastosign/$oneipa.zip;

cp $validpath/Payload/Appvalley.app/embedded.mobileprovision $ipastosign/Payload/Spotify.app/embedded.mobileprovision;

zip -r /Users/owenwatts/Documents/lumosign/ipastosign/Payload . -i $ipastosign/spotify2.zip;

mv $validpath/ipastosign/$oneipa.zip $validpath/ipastosign/$oneipa.ipa;

mv $validpath/valid.zip $validpath/valid.ipa;

echo "done";
