# odin-soloud
SoLoud wrapper for Odin Progamming Language.
Not fully tested yet.

Simple Example:
```
package main

import "shared:soloud"

main :: proc() {
    core := soloud.create();
    speech := soloud.speech_create();
    
    soloud.speech_set_text(speech, "hello world");

    soloud.init(core);
    
    soloud.set_global_volume(core, 4);
    soloud.play(core, speech);

    for soloud.get_active_voice_count(core) > 0 {}

    soloud.deinit(core);
    
    soloud.speech_destroy(speech);
    soloud.destroy(core);
}
```
