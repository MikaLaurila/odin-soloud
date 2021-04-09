# odin-soloud
SoLoud wrapper for Odin Progamming Language.
Not fully tested yet.

# Simple Example:
```
package main

import sol "shared:soloud"

main :: proc() {
    solcore := sol.soloud_create();
    speech := sol.speech_create();
    
    sol.speech_set_text(speech, "hello world");

    sol.soloud_init(solcore);
    
    sol.soloud_set_global_volume(solcore, 4);
    sol.soloud_play(solcore, speech);

    for sol.soloud_get_active_voice_count(solcore) > 0 {}

    sol.soloud_deinit(solcore);
    
    sol.speech_destroy(speech);
    sol.soloud_destroy(solcore);
}
```
