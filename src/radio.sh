#!/usr/bin/env bash
if [ $# -ne 1 ]
then
    echo usage: radio.sh option
    echo options include:
    echo NRK: p1 p2 p3 p3 mp3 super jazz folk nyheter weblyd gull urort klassisk
    echo Other: vinyl
    echo For example: radio.sh jazz \ \ to play NRK jazz 
fi

case "$1" in
    'p1')
	mpv http://lyd.nrk.no/nrk_radio_p1_ostlandssendingen_mp3_h;;
    'p2')
	mpv http://lyd.nrk.no/nrk_radio_p2_mp3_h;;
    'p3')
	mpv http://lyd.nrk.no/nrk_radio_p3_mp3_h;;
    'mp3')
	mpv http://lyd.nrk.no/nrk_radio_mp3_mp3_h;;
    'super')
	mpv http://lyd.nrk.no/nrk_radio_super_mp3_h;;
    'nyheter')
	mpv http://lyd.nrk.no/nrk_radio_alltid_nyheter_mp3_h;;
    'weblyd')
	mpv http://lyd.nrk.no/nrk_radio_weblyd03_mp3_h;;
    'gull')
	mpv http://lyd.nrk.no/nrk_radio_gull_mp3_h;;
    'urort')
	mpv http://lyd.nrk.no/nrk_radio_p3_urort_mp3_h;;
    'klassisk')
	mpv http://lyd.nrk.no/nrk_radio_klassisk_mp3_h;;
    'jazz')
	mpv http://lyd.nrk.no/nrk_radio_jazz_mp3_h;;
    'folk')
	mpv http://lyd.nrk.no/nrk_radio_folkemusikk_mp3_h;;
    'vinyl')
	mpv http://live-bauerno.sharp-stream.com/vinyl_no_hq;;
    'rock')
	mpv http://live-bauerno.sharp-stream.com/radiorock_no_hq;;
    'kiss')
	mpv http://live-bauerno.sharp-stream.com/kiss_no_hq;;
    'radionorge')
	mpv http://live-bauerno.sharp-stream.com/radiorock_no_hq;;
    'radio1')
	http://live-bauerno.sharp-stream.com/radio1_no_hq;;
esac
