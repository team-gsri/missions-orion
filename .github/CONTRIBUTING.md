# Contributing to Orion

***Note:** This document extends and **overrides** the [GSRI Standard Contribution Guide](https://github.com/team-gsri/.github/blob/master/CONTRIBUTING.md).*

## Specific branching instructions

**Opening a pull request to master is limited to code owners.**

Like all GSRI repositories, development must be done on a separate branch forked from master. However, merging code must be done through a pull request to **dev** branch.

Pull requests to dev branch are reviewed by code owners after continuous build checks passed. Once merged, a mission file is continuously build and deployed to a test server. The mission is then eventually tested on the server by the unit. If the version has positive feedback, we will merge on master.

Pull requests bypassing the dev branch will be force closed.

## Specific code writing instructions

There are two ways of contributing to this repository source code :
* Contribute to the mission engine (called DW) by adding features or fixing bugs
* Improve the gameplay by adding or modifying missions

### Contributing to the DW engine

The engine mainly depends on files located in the [`functions/` driectory](../CONT_Orion.Malden/functions/).

### Contributing to the mission set

Adding new missions is easy in the DW engine. All missions are stored in the [`missions/`](../CONT_Orion.Malden/missions). A given mission is represented by a folder containing all relevants elements for the mission to run properly. In order to be taken into account, a mission must be associated with proper metadata in [`DwMissions.hpp`](../CONT_Orion.Malden/DwMissions.hpp).

## Asking for help

If you need advices while contributing, you can reach for \[-GSRI-] Cheitan on [our Discord server](https://discord.gg/bhMn4jd).