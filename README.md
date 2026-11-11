[![Build Status](https://github.com/DeadlyBossMods/DBM-HudMap/workflows/CI/badge.svg)](https://github.com/DeadlyBossMods/DBM-HudMap/actions?workflow=CI)
[![DeadlyBossMods on Discord](https://img.shields.io/badge/discord-DeadlyBossMods-738bd7.svg?style=flat)](https://discord.gg/DeadlyBossMods)

[![Patreon](https://media.forgecdn.net/attachments/76/25/patreon-medium-button.png)](https://www.patreon.com/deadlybossmods)

Deadly Boss Mods: HudMap
========================

Description
-----------
DBM-HudMap is an optional plugin that draws an on-screen HUD map centered on your character. It provides the `DBM.HudMap` API used by DBM's `/dbm hud` command and by third-party addons.

HudMap is not available inside instances or in other areas where the game restricts map positions. Boss modules no longer use it.

Settings are under **Frames & Integrations > HudMap** in the DBM options.

Integration API
---------------
API version 3 exposes the `EnabledChanged` callback through `DBM.HudMap.RegisterCallback` and
`UnregisterCallback` (CallbackHandler-1.0 conventions). The callback receives the event name and the new
enabled boolean after the setting changes; disabling first frees the HUD's markers. This reports the
user setting, not map restrictions or whether the renderer is currently active. Register only while
the integration is active. Earlier API versions do not emit this callback.

Requirements
------------
Requires [Deadly Boss Mods](https://curseforge.com/wow/addons/deadly-boss-mods)

Support
-------
https://deadlybossmods.com
