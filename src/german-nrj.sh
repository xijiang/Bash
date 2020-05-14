#!/usr/bin/env bash
if [ $# -ne 1 ]
then
    echo usage: radio.sh option
    echo For example: german-nrj.sh berlin \ \ to play NRJ berlin
    echo berlin, bremen, digital, hamburg
fi

case "$1" in
    'berlin')
	mpv http://nrj.de/berlin;;
    'bremen')
	mpv http://nrj.de/bremen;;
    'digital')
	mpv http://nrj.de/digital;;
    'hamburg')
	mpv http://nrj.de/hamburg;;
    'muenchen')
	mpv http://nrj.de/muenchen;;
    'nuernberg')
	mpv http://nrj.de/nuernberg;;
    'sachsen')
	mpv http://nrj.de/sachsen;;
    'stuttgart')
	mpv http://nrj.de/stuttgart;;
    'germanytop40')
	mpv http://nrj.de/germanytop40;;
    'madeingermany')
	mpv http://nrj.de/madeingermany;;
    'deutschrap')
	mpv http://nrj.de/deutschrap;;
    'lounge')
	mpv http://nrj.de/lounge;;
    'hits2000')
	http://nrj.de/hits2000;;
    'rnb')
	mpv http://nrj.de/rnb;;
    'dance')
	mpv http://nrj.de/dance;;
    'hits')
	mpv http://nrj.de/hits;;
    'rock')
	mpv http://nrj.de/hits;;
    'master')
	mpv http://nrj.de/master;;
    'classicrock')
	mpv http://nrj.de/classicrock;;
    'urban')
	mpv http://nrj.de/urban;;
    'love')
	mpv http://nrj.de/love;;
    'reggaeton')
	mpv http://nrj.de/reggaeton;;
    'clubbin')
	mpv http://nrj.de/clubbin;;
    'homeoffice')
	mpv http://nrj.de/homeoffice;;
    'romantic')
	mpv http://nrj.de/romantic;;
    'hitsremix')
	mpv http://nrj.de/hitsremix;;
    'partyhits')
	mpv http://nrj.de/partyhits;;
    'season')
	mpv http://nrj.de/season;;
    'eh30')
	mpv http://nrj.de/eh30;;
    'funky')
	mpv http://nrj.de/funky;;
    'pop')
	mpv mpv http://nrj.de/pop;;
    'fitness')
	mpv http://nrj.de/fitness;;
    'acoustic')
	mpv http://nrj.de/acoustic;;
    'latino')
	mpv http://nrj.de/latino;;
    'reggae')
	mpv http://nrj.de/reggae;;
    'rapus')
	mpv http://nrj.de/rapus;;
    'deephouse')
	mpv http://nrj.de/deephouse;;
    'classicrapus')
	mpv http://nrj.de/classicrapus;;
    'classicrnb')
	mpv http://nrj.de/classicrnb;;
    'oriental')
	mpv http://nrj.de/oriental;;
    'hits90')
	mpv http://nrj.de/hits90;;
    'hits80')
	mpv http://nrj.de/hits80;;
esac
