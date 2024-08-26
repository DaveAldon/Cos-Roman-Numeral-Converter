# ObjectScript Roman Numeral Converter

[![Gitter](https://img.shields.io/badge/Available%20on-Intersystems%20Open%20Exchange-00b2a9.svg)](https://openexchange.intersystems.com/package/Objectscript-Roman-Numeral-Converter)

## Overview

This is an ObjectScript function to convert numbers to roman numerals. It also takes a dynamic array of numbers and turns them into roman numerals.

## Features

Takes in a number, or dynamic array of numbers, and turns them into roman numerals. Works up to 3,999. If you find a number that isn't accurate, please report it in the issues tab.

There is only one parameter:
* **val (Required String)**: The number or dynamic array to be converted.

## Example Usage
```sh
USER> write ##class(RomanNumerals.RomanNumerals).Translate("12")
XII

USER> set x = ["12","13"]
USER> write ##class(RomanNumerals.RomanNumerals).Translate(x)
11@%Library.DynamicArray
```

Errors will be returned. If you don't use a number inside of a string, it won't respond with anything.

## Future Plans

Backwards translation support to convert roman numerals to a number.
Tweaking of conversion logic to support any roman numeral issues, especially over 3,999.

## Version history
2019-07-23 - v1.0 - Initial commit of function with features outlined in description

## Docker    

### Prerequisites
Make sure you have [git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git) and [Docker desktop](https://www.docker.com/products/docker-desktop) installed.
### Installation
Clone/git pull the repo into any local directory
```
$ git clone https://github.com/rcemper/PR_CosNumberTranslate.git
```
```
$ docker compose up -d && docker compose logs -f
```

To open IRIS Terminal do:   
```
$ docker-compose exec iris iris session iris 
USER>
```
or using **WebTerminal**     
http://localhost:42773/terminal/      

To access IRIS System Management Portal   
http://localhost:42773/csp/sys/UtilHome.csp    
