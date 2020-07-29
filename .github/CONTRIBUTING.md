# Contributing to Orion

***Note:** This document extends and **overrides** the [GSRI Standard Contribution Guide](https://github.com/team-gsri/.github/blob/master/CONTRIBUTING.md).*

## Specific code writing instructions

There are two ways of contributing to this repository source code :
* Contribute to the mission engine (called DW) by adding features or fixing bugs
* Improve the gameplay by adding or modifying missions

### Contributing to the DW engine

The engine mainly depends on files located in the [`functions/`](../CONT_Orion.Malden/functions/).

### Contributing to the mission set

Adding new missions is easy in the DW engine. All missions are stored in [`missions/`](../CONT_Orion.Malden/missions). A given mission is represented by a folder containing all relevants elements for the mission to run properly. In order to be taken into account, a mission must be associated with proper metadata in [`DwMissions.hpp`](../CONT_Orion.Malden/DwMissions.hpp).

## Specific branch management

Orion is hosted by two Arma 3 server instances  : test and production. Details are avilable on our Discord server.

### Pushing your changes to the test server

The test server has continuous *deployment*. This means that any commit merged on `master` branch will provoke a mission build and deploy on the test server. The deployment operation will make **the server do a full restart**, using the new version of the mission file. Any previous version of the mission will be overwritten.

### Pushing your changes to the production server

The production server has continuous *delivery*. This means our infrastructure is able to push any version to the production server automatically, but this will not happen until a human being does a manual operation. In this context, the test server behaves as a staging environment, allowing users to test the latest version before pushing changes to the production server.

In order to push changes to the production server, simply create a new Github release.

Note: *prerelease versions are ignored by the action trigger.*

Shortly after you created the release, a publication will run. The tag name is added to the mission briefing name. A new pbo is packed, and added to the release as binary asset. That pbo is also pushed to the production server, overwriting previous versions, and a server restart will happen.

## Asking for help

If you need advice on contributing, you can reach for \[-GSRI-] Cheitan on [our Discord server](https://discord.gg/bhMn4jd).
