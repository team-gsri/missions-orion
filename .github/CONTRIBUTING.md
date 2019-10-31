# Contributing to Orion

There is two ways of contributing to this repository. You can either contribute to the mission engine (called DW) by adding features or fixing bugs, or you can improve the gameplay by adding or modifying missions.

## Contributing to the DW engine

Adding features or fixing bugs in the mission engine requires to clone or fork the repository, then create a new branch from the **main branch**. Once ready and tested on your side, a new Pull Request can be opened to the **dev branch**. It will be reviewed and tested on our side, and if accepted it will be merged on the master branch in the next release. Be aware that a new engine feature known to be unstable or partially documented will be automatically denied and its associated PR closed.

## Contributing to the mission set

Adding new missions is easy in the DW engine. All missions are stored in [root/missions folder](https://github.com/team-gsri/Orion/tree/master/missions). A given mission is represented by a folder containing all relevants elements for the mission to run properly. In order to be taken into account, a mission must be associated with proper metadata in [root/DwMissions.hpp file](https://github.com/team-gsri/Orion/blob/master/DwMissions.hpp).

Creating a new mission requires to clone or fork the repository, then create a new branch from the **main branch**. Once ready and tested on your side, a new Pull Request can be opened to the **dev branch**. It will be reviewed and tested on our side, and if accepted it will be merged on the master branch in the next release. Be aware that any contribution modifying any file other than your own mission's folder and the _DwMissions.hpp_ file for metadata will be automatically denied and it associated PR closed.

## Asking for help

If you need advices while contributing, you can reach **\[GSRI] Cheitan** on [our Discord server](https://discord.gg/bhMn4jd).