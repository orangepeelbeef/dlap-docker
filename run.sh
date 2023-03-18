#!/bin/sh
cd /usr/local/DLAP
sed -i "s/TOKEN_VALUE/${TOKEN}/" config.json
sed -i "s/STATUSCHANNEL_VALUE/${STATUSCHANNEL}/" config.json
sed -i "s/VOICECHANNEL_VALUE/${VOICECHANNEL}/" config.json
sed -i "s/CLIENTID_VALUE/${CLIENTID}/" config.json
sed -i "s/OWNERID_VALUE/${OWNERID}/" config.json
sed -i "s/DJROLE_VALUE/${DJROLE}/" config.json

node bot.js