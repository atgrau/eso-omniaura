# OmniAura

*English · [Español](README.es.md)*

**Your own on-screen alerts for The Elder Scrolls Online.** Track buffs, debuffs, resources, set procs and combat state, and show them as icons, bars or text exactly where you want them — all from an in-game visual editor, without typing a single ability ID.

## Features

- **Visual editor** — type `/omni`, bind a key, or open it from *Settings → Add-Ons → OmniAura*. Create auras from ready-made templates.
- **Drag to place and resize** — *Position on screen* closes the editor and shows the aura you are editing over your game interface; drag it to move it and use its yellow corner to resize it, then press *Done* to return to the editor. **Position auras** hides the editor and shows your normal game interface so you can place every aura at once.
- **What you can track**
  - Buffs and debuffs on you, your target or a boss — while active or when missing, only yours, minimum stacks.
  - Health, magicka, stamina or ultimate, by value or percentage.
  - Procs and combat events, shown for a set number of seconds (set procs, internal cooldowns).
  - In or out of combat.
  - Several conditions per aura ("all" or "any"), and load conditions (always / only in combat / only out of combat).
  - Each aura can be available on all your characters or only on one.
- **Find any ability without IDs**
  - Search every ability in the game by name.
  - Browse a full **catalog** by category: major/minor buffs, debuffs, all seven classes, weapons, armor, guilds, world skills, Alliance War, racial, Mundus stones, companions, gear and consumables — with in-game tooltips.
  - Shortcuts for your current effects, the skills on your bars and recently seen effects and procs.
- **Displays** — icon (timer, stacks, duration shading, greyed out when missing), icon with text above, progress bar, or plain text. Colors via the game's color picker, text templates (`{name} {time} {stacks} {value} {max} {percent}`) and an optional sound.
- **Clean interface** — the editor is organized in sections and only shows the options that make sense for each aura.
- **Languages** — English, Spanish, German and French (follows the game client language).

## Installation

**Minion:** search for *OmniAura* and install it.

**Manually:**
1. Download the latest release.
2. Extract the `OmniAura` folder into `Documents\Elder Scrolls Online\live\AddOns\`.
3. Start the game and enable OmniAura in the Add-Ons menu.

**Optional:** [LibAddonMenu-2.0](https://www.esoui.com/downloads/info7-LibAddonMenu.html) adds an OmniAura entry to *Settings → Add-Ons*.

## Quick start

1. Type `/omni` to open the editor.
2. Pick a template in **+ New aura...**, for example *Buff on me*.
3. Choose the effect from the search, the **catalog** or your current effects.
4. Press *Position on screen* and drag it where you want it, or use **Position auras** to place all of them over your game interface.

## Chat commands (advanced)

```
/omni                     open/close the editor
/omni list                list auras (numbered)
/omni show|on|off|del|copy <n>
/omni set <n> <path> <value>    e.g. set 1 display.type bar
/omni scan [player|target]      current effects with their IDs
/omni log                 log the ability IDs you use
/omni unlock | lock       enter/leave "Position auras" mode
/omni reset confirm       delete all auras
```

## Support

Bug reports and ideas are welcome in [Issues](../../issues). If you enjoy the addon, you can send some gold in-game to **@Artioner** (EU megaserver) — there is a *Donate gold* button in the editor.

## Development

See the [Spanish README](README.es.md#desarrollo) for the project structure and release checklist. Changes are listed in [CHANGELOG.md](CHANGELOG.md).

## License

[MIT](LICENSE) © @Artioner

---

*This add-on is not created by, affiliated with or sponsored by ZeniMax Media Inc. or its affiliates. The Elder Scrolls® and related logos are registered trademarks or trademarks of ZeniMax Media Inc. in the United States and/or other countries.*
