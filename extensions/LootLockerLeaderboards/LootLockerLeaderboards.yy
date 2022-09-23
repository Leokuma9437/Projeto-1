{
  "resourceType": "GMExtension",
  "resourceVersion": "1.2",
  "name": "LootLockerLeaderboards",
  "optionsFile": "options.json",
  "options": [],
  "exportToGame": true,
  "supportedTargets": -1,
  "extensionVersion": "0.0.1",
  "packageId": "",
  "productId": "",
  "author": "",
  "date": "2022-03-09T11:23:04.036439-03:00",
  "license": "",
  "description": "",
  "helpfile": "",
  "iosProps": true,
  "tvosProps": false,
  "androidProps": false,
  "installdir": "",
  "files": [
    {"resourceType":"GMExtensionFile","resourceVersion":"1.0","name":"","filename":"LootLockerInitialize.gml","origname":"","init":"","final":"","kind":2,"uncompress":false,"functions":[
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"LootLockerInitialize","externalName":"LootLockerInitialize","kind":2,"help":"LootLockerInitialize((string)\"gameAPIKey\",(string)\"version\",(bool true/false)developmentMode,(string or int)\"leaderboardID\")","hidden":false,"returnType":1,"argCount":0,"args":[
            1,
            1,
            2,
            1,
          ],},
      ],"constants":[],"ProxyFiles":[],"copyToTargets":-1,"order":[
        {"name":"LootLockerInitialize","path":"extensions/LootLockerLeaderboards/LootLockerLeaderboards.yy",},
      ],},
    {"resourceType":"GMExtensionFile","resourceVersion":"1.0","name":"","filename":"LootLockerCallback.gml","origname":"","init":"","final":"","kind":2,"uncompress":false,"functions":[
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"LootLockerCallback","externalName":"LootLockerCallback","kind":2,"help":"Fetches the leaderboard data","hidden":false,"returnType":1,"argCount":0,"args":[],},
      ],"constants":[],"ProxyFiles":[],"copyToTargets":-1,"order":[
        {"name":"LootLockerCallback","path":"extensions/LootLockerLeaderboards/LootLockerLeaderboards.yy",},
      ],},
    {"resourceType":"GMExtensionFile","resourceVersion":"1.0","name":"","filename":"LootLockerGetHighscoresTop.gml","origname":"","init":"","final":"","kind":2,"uncompress":false,"functions":[
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"LootLockerGetHighscoresTop","externalName":"LootLockerGetHighscoresTop","kind":2,"help":"LootLockerGetHighscoresTop(\"leaderboardID\", \"count\")// Manually fetch leaderboard data","hidden":false,"returnType":1,"argCount":0,"args":[
            1,
            1,
          ],},
      ],"constants":[],"ProxyFiles":[],"copyToTargets":-1,"order":[
        {"name":"LootLockerGetHighscoresTop","path":"extensions/LootLockerLeaderboards/LootLockerLeaderboards.yy",},
      ],},
    {"resourceType":"GMExtensionFile","resourceVersion":"1.0","name":"","filename":"LootLockerSubmitScore.gml","origname":"","init":"","final":"","kind":2,"uncompress":false,"functions":[
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"LootLockerSubmitScore","externalName":"LootLockerSubmitScore","kind":2,"help":"LootLockerSubmitScore(\"leaderboardID\", \"scoreToUpload\") // Uploads score to the leaderboard","hidden":false,"returnType":1,"argCount":0,"args":[
            1,
            1,
          ],},
      ],"constants":[],"ProxyFiles":[],"copyToTargets":-1,"order":[
        {"name":"LootLockerSubmitScore","path":"extensions/LootLockerLeaderboards/LootLockerLeaderboards.yy",},
      ],},
    {"resourceType":"GMExtensionFile","resourceVersion":"1.0","name":"","filename":"LootLockerSetPlayerName.gml","origname":"","init":"","final":"","kind":2,"uncompress":false,"functions":[
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"LootLockerSetPlayerName","externalName":"LootLockerSetPlayerName","kind":2,"help":"LootLockerSetPlayerName(\"newName\") // Set a new name to the current player","hidden":false,"returnType":1,"argCount":0,"args":[
            1,
          ],},
      ],"constants":[],"ProxyFiles":[],"copyToTargets":-1,"order":[
        {"name":"LootLockerSetPlayerName","path":"extensions/LootLockerLeaderboards/LootLockerLeaderboards.yy",},
      ],},
    {"resourceType":"GMExtensionFile","resourceVersion":"1.0","name":"","filename":"LootLockerGetHighscoresCentered.gml","origname":"","init":"","final":"","kind":2,"uncompress":false,"functions":[
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"LootLockerGetHighscoresCentered","externalName":"LootLockerGetHighscoresCentered","kind":2,"help":"LootLockerGetHighscoresCentered() // Manually get the centered leaderboard entries","hidden":false,"returnType":1,"argCount":0,"args":[],},
      ],"constants":[],"ProxyFiles":[],"copyToTargets":-1,"order":[
        {"name":"LootLockerGetHighscoresCentered","path":"extensions/LootLockerLeaderboards/LootLockerLeaderboards.yy",},
      ],},
    {"resourceType":"GMExtensionFile","resourceVersion":"1.0","name":"","filename":"LootLockerReset.gml","origname":"","init":"","final":"","kind":2,"uncompress":false,"functions":[
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"LootLockerReset","externalName":"LootLockerReset","kind":2,"help":"LootLockerReset() // Log out current player and start a new session","hidden":false,"returnType":1,"argCount":0,"args":[],},
      ],"constants":[],"ProxyFiles":[],"copyToTargets":-1,"order":[
        {"name":"LootLockerReset","path":"extensions/LootLockerLeaderboards/LootLockerLeaderboards.yy",},
      ],},
    {"resourceType":"GMExtensionFile","resourceVersion":"1.0","name":"","filename":"LootLockerVariables.gml","origname":"","init":"","final":"","kind":2,"uncompress":false,"functions":[
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"LLHighscoresTopRankList","externalName":"LLHighscoresTopRankList","kind":2,"help":"Get Top Rank as array","hidden":false,"returnType":1,"argCount":0,"args":[],},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"LLHighscoresTopNamesList","externalName":"LLHighscoresTopNamesList","kind":2,"help":"Get Top Names as array","hidden":false,"returnType":1,"argCount":0,"args":[],},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"LLHighscoresTopMetadataList","externalName":"LLHighscoresTopMetadataList","kind":2,"help":"Get Top Metadata as array","hidden":false,"returnType":1,"argCount":0,"args":[],},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"LLHighscoresTopScoreList","externalName":"LLHighscoresTopScoreList","kind":2,"help":"Get Top scores as array","hidden":false,"returnType":1,"argCount":0,"args":[],},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"LLHighscoresTopIDList","externalName":"LLHighscoresTopIDList","kind":2,"help":"Get Top ID as array","hidden":false,"returnType":1,"argCount":0,"args":[],},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"LLHighscoresTopFormatted","externalName":"LLHighscoresTopFormatted","kind":2,"help":"Get full top leaderboard as string","hidden":false,"returnType":1,"argCount":0,"args":[],},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"LLHighscoresCenteredRankList","externalName":"LLHighscoresCenteredRankList","kind":2,"help":"Get Centered Rank as array","hidden":false,"returnType":1,"argCount":0,"args":[],},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"LLHighscoresCenteredNamesList","externalName":"LLHighscoresCenteredNamesList","kind":2,"help":"Get Centered Names as array","hidden":false,"returnType":1,"argCount":0,"args":[],},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"LLHighscoresCenteredMetadataList","externalName":"LLHighscoresCenteredMetadataList","kind":2,"help":"Get Centered MetaData as array","hidden":false,"returnType":1,"argCount":0,"args":[],},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"LLHighscoresCenteredScoreList","externalName":"LLHighscoresCenteredScoreList","kind":2,"help":"Get Centered Scores as array","hidden":false,"returnType":1,"argCount":0,"args":[],},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"LLHighscoresCenteredIDList","externalName":"LLHighscoresCenteredIDList","kind":2,"help":"Get Centered ID's as array","hidden":false,"returnType":1,"argCount":0,"args":[],},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"LLHighscoresCenteredFormatted","externalName":"LLHighscoresCenteredFormatted","kind":2,"help":"Get full centered leaderboard as string","hidden":false,"returnType":1,"argCount":0,"args":[],},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"LLPlayerRank","externalName":"LLPlayerRank","kind":2,"help":"Get current player rank on leaderboard","hidden":false,"returnType":1,"argCount":0,"args":[],},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"LLPlayerName","externalName":"LLPlayerName","kind":2,"help":"Get current player name on leaderboard","hidden":false,"returnType":1,"argCount":0,"args":[],},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"LLPlayerID","externalName":"LLPlayerID","kind":2,"help":"Get current player ID on leaderboard","hidden":false,"returnType":1,"argCount":0,"args":[],},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"LLPlayerScore","externalName":"LLPlayerScore","kind":2,"help":"Get current player score on leaderboard","hidden":false,"returnType":1,"argCount":0,"args":[],},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"LLPlayerMetadata","externalName":"LLPlayerMetadata","kind":2,"help":"Get current player metadata on leaderboard","hidden":false,"returnType":1,"argCount":0,"args":[],},
      ],"constants":[],"ProxyFiles":[],"copyToTargets":-1,"order":[
        {"name":"LLHighscoresTopRankList","path":"extensions/LootLockerLeaderboards/LootLockerLeaderboards.yy",},
        {"name":"LLHighscoresTopNamesList","path":"extensions/LootLockerLeaderboards/LootLockerLeaderboards.yy",},
        {"name":"LLHighscoresTopMetadataList","path":"extensions/LootLockerLeaderboards/LootLockerLeaderboards.yy",},
        {"name":"LLHighscoresTopScoreList","path":"extensions/LootLockerLeaderboards/LootLockerLeaderboards.yy",},
        {"name":"LLHighscoresTopIDList","path":"extensions/LootLockerLeaderboards/LootLockerLeaderboards.yy",},
        {"name":"LLHighscoresTopFormatted","path":"extensions/LootLockerLeaderboards/LootLockerLeaderboards.yy",},
        {"name":"LLHighscoresCenteredRankList","path":"extensions/LootLockerLeaderboards/LootLockerLeaderboards.yy",},
        {"name":"LLHighscoresCenteredNamesList","path":"extensions/LootLockerLeaderboards/LootLockerLeaderboards.yy",},
        {"name":"LLHighscoresCenteredMetadataList","path":"extensions/LootLockerLeaderboards/LootLockerLeaderboards.yy",},
        {"name":"LLHighscoresCenteredScoreList","path":"extensions/LootLockerLeaderboards/LootLockerLeaderboards.yy",},
        {"name":"LLHighscoresCenteredIDList","path":"extensions/LootLockerLeaderboards/LootLockerLeaderboards.yy",},
        {"name":"LLHighscoresCenteredFormatted","path":"extensions/LootLockerLeaderboards/LootLockerLeaderboards.yy",},
        {"name":"LLPlayerRank","path":"extensions/LootLockerLeaderboards/LootLockerLeaderboards.yy",},
        {"name":"LLPlayerName","path":"extensions/LootLockerLeaderboards/LootLockerLeaderboards.yy",},
        {"name":"LLPlayerID","path":"extensions/LootLockerLeaderboards/LootLockerLeaderboards.yy",},
        {"name":"LLPlayerScore","path":"extensions/LootLockerLeaderboards/LootLockerLeaderboards.yy",},
        {"name":"LLPlayerMetadata","path":"extensions/LootLockerLeaderboards/LootLockerLeaderboards.yy",},
      ],},
    {"resourceType":"GMExtensionFile","resourceVersion":"1.0","name":"","filename":"LootLockerAutoRefresh.gml","origname":"","init":"","final":"","kind":2,"uncompress":false,"functions":[
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"LootLockerTurnOffAutoRefresh","externalName":"LootLockerTurnOffAutoRefresh","kind":2,"help":"Turn off auto Refresh for leaderboards","hidden":false,"returnType":1,"argCount":0,"args":[],},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"LootLockerTurnOnAutoRefresh","externalName":"LootLockerTurnOnAutoRefresh","kind":2,"help":"Turn on auto Refresh for leaderboards","hidden":false,"returnType":1,"argCount":0,"args":[],},
      ],"constants":[],"ProxyFiles":[],"copyToTargets":-1,"order":[
        {"name":"LootLockerTurnOffAutoRefresh","path":"extensions/LootLockerLeaderboards/LootLockerLeaderboards.yy",},
        {"name":"LootLockerTurnOnAutoRefresh","path":"extensions/LootLockerLeaderboards/LootLockerLeaderboards.yy",},
      ],},
  ],
  "classname": "",
  "tvosclassname": null,
  "tvosdelegatename": null,
  "iosdelegatename": "",
  "androidclassname": "",
  "sourcedir": "",
  "androidsourcedir": "",
  "macsourcedir": "",
  "maccompilerflags": "",
  "tvosmaccompilerflags": "",
  "maclinkerflags": "",
  "tvosmaclinkerflags": "",
  "iosplistinject": "",
  "tvosplistinject": "",
  "androidinject": "",
  "androidmanifestinject": "",
  "androidactivityinject": "",
  "gradleinject": "",
  "androidcodeinjection": "",
  "hasConvertedCodeInjection": true,
  "ioscodeinjection": "",
  "tvoscodeinjection": "",
  "iosSystemFrameworkEntries": [],
  "tvosSystemFrameworkEntries": [],
  "iosThirdPartyFrameworkEntries": [],
  "tvosThirdPartyFrameworkEntries": [],
  "IncludedResources": [],
  "androidPermissions": [],
  "copyToTargets": -1,
  "iosCocoaPods": "",
  "tvosCocoaPods": "",
  "iosCocoaPodDependencies": "",
  "tvosCocoaPodDependencies": "",
  "parent": {
    "name": "LootLockerLeaderboards",
    "path": "folders/Extensions/LootLockerLeaderboards.yy",
  },
}