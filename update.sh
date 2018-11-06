#!/bin/bash

cd /Users/owenwatts/Documents/lumosign/

if
only works for one singular ipa currently which you can set right below this comment
fi

oneipa="spotfy";

if
you need to set ipapath equal to a valid ipa. rips.
fi

echo "declaring variables";
validipa="/Users/owenwatts/Documents/lumosign/valid.ipa";
validfolder="/Users/owenwatts/Documents/lumosign/";
ipastosign="/Users/owenwatts/Documents/lumosign/ipastosign/";

mv {$validpath} {$validfolder}valid.zip;
validzip="{$validfolder}valid.zip";

unzip {$validzip};

mv {$validpath}ipastosign/{$oneipa}.ipa {$validfolder}ipastosign/{$oneipa}.zip;

oneipazip="{$validfolder}ipastosign/{$oneipa}.zip";

unzip {$oneipa};

cp {$validvolder}valid/Payload/embedded.mobileprovision {&ipastosign}{oneipa}/Payload/embedded.mobileprovision;

zip {&ipastosign}{oneipa};

mv $validfolder}ipastosign/{$oneipa}.zip {$validpath}ipastosign/{$oneipa}.ipa;

echo "done";
