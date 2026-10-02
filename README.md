# cds export of data model not exporting localized info

## Description
Server 1 is hosting a CAP app with a data model. Some entities have localized fields. Server 2 now wants to populate the information in Server 1. In order to do that I exported the data model of one service from server 1 to use it in server 2. But when I tried to write the language specific texts, I realized server 2 is preventing me from providing the 'texts' sub strucure in the record as the data model that was exported is missing the 'localized'. 

## Reproduction
To reproduce the problem, you can simply: 
1. Clone this repo 
2. Run `npm i`
3. execute `cds export ./srv/wos.cds --as cdl`
=> The services.cds that is exported does not contain 'localized' 

## cds versions
| Package              | Version | Location                                     |
 | -------------------- | ------- | -------------------------------------------- |
 | @sap/cds-dk (global) | 10.1.0  | /opt/homebrew/lib/node_modules/@sap/cds-dk   |
 | @sap/cds             | 10.1.1  | ./node_modules/@sap/cds                      |
 | @sap/cds-compiler    | 7.1.1   | ./node_modules/@sap/cds-compiler             |
 | @sap/cds-fiori       | 2.3.0   | ./node_modules/@sap/cds-fiori                |
 | @cap-js/db-service   | 3.1.1   | ./node_modules/@cap-js/db-service            |
 | @cap-js/sqlite       | 3.1.1   | ./node_modules/@cap-js/sqlite                |
 | cds.home             |         | ./node_modules/@sap/cds                      |
 | cds.root             |         | ~/dev/MartinStenzig/cds-bug-16               |
 | npm root -l          |         | ./node_modules                               |
 | npm root -g          |         | /opt/homebrew/lib/node_modules               |
 | Node.js              | 26.10.0 | /opt/homebrew/Cellar/node/26.10.0_1/bin/node |
 | npm                  | 12.2.0  | /opt/homebrew/bin/npm                        |

