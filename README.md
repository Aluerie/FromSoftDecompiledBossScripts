# 🗡️ FromSoftDecompiledBossScripts

Decompiled Lua AI scripts for FromSoftware bosses.

## 📂 Layout

| Folder | Contents |
| --- | --- |
| [`Elden Ring/Base Game`](Elden%20Ring/Base%20Game) | Elden Ring base game bosses |
| [`Elden Ring/Shadow of the Erdtree`](Elden%20Ring/Shadow%20of%20the%20Erdtree) | Elden Ring DLC bosses |
| [`Sekiro/Memories`](Sekiro/Memories) | Sekiro main bosses that leave a Memory |
| [`Sekiro/Minibosses`](Sekiro/Minibosses) | Sekiro minibosses |
| [`Sekiro/Common`](Sekiro/Common) | Shared Sekiro definitions used by every script (`ai_define.dec.lua`) |

Files are named `<Boss Name> - <ID>_battle.dec.lua`, where `<ID>_battle` is the script's original name in the game files. Bosses with several names or phases that share one script are joined with `&`, e.g. `Malenia, Blade of Miquella & Malenia, Goddess of Rot - 212000_battle.dec.lua`.

## 🤝 Contributing

All kinds of contributions are welcome:

* Boss scripts you've decompiled yourself, from any FromSoftware game. Open a PR, it saves me the time of decompiling them.
* Helpful comments in the `.lua` files.
* Boss flowcharts.

## 🙏 Credits

All these scripts belong to FromSoftware. I and a few other people just decompiled them.
