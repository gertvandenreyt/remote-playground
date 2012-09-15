#!/bin/bash
#Monitor available diskspace on /

SPACE=`df | sed -n '/\/$/p' | gawk '{print $5}' | sed 's/%//'`

if [ $SPACE -ge 90 ]
then
	echo "Diskspace on root = $SPACE% used" | mutt -s "some mail subject" gertvandenreyt@gmail.com
fi
