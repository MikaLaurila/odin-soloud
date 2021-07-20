package soloud

import "core:os"

when os.OS == "windows" do foreign import lib "src/lib/soloud_x64.lib"

@(default_calling_convention="c")
foreign lib {

    // Soloud
    @(link_name="Soloud_destroy") soloud_destroy :: proc(soloud: Soloud) ---;
    @(link_name="Soloud_create") soloud_create :: proc() -> Soloud ---;
    @(link_name="Soloud_init") soloud_init :: proc(soloud: Soloud) -> i32 ---;
    @(link_name="Soloud_initEx") soloud_init_ex :: proc(soloud: Soloud, flags: u32, backend: u32, sample_rate: u32, buffersize: u32, channels: u32) -> i32 ---;
    @(link_name="Soloud_deinit") soloud_deinit :: proc(soloud: Soloud) ---;
    @(link_name="Soloud_getVersion") soloud_get_version :: proc(soloud: Soloud) -> u32 ---;
    @(link_name="Soloud_getErrorString") soloud_get_error_string :: proc(soloud: Soloud, errorCode: i32) -> cstring ---;
    @(link_name="Soloud_getBackendId") soloud_get_backend_id :: proc(soloud: Soloud) -> u32 ---;
    @(link_name="Soloud_getBackendString") soloud_get_backend_string :: proc(soloud: Soloud) -> cstring ---;
    @(link_name="Soloud_getBackendChannels") soloud_get_backend_channels :: proc(soloud: Soloud) -> u32 ---;
    @(link_name="Soloud_getBackendSamplerate") soloud_get_backend_samplerate :: proc(soloud: Soloud) -> u32 ---;
    @(link_name="Soloud_getBackendBufferSize") soloud_get_backend_buffer_size :: proc(soloud: Soloud) -> u32 ---;
    @(link_name="Soloud_setSpeakerPosition") soloud_set_speaker_position :: proc(soloud: Soloud, channel: u32, x: f32, y: f32, z: f32) -> i32 ---;
    @(link_name="Soloud_getSpeakerPosition") soloud_get_speaker_position :: proc(soloud: Soloud, channel: u32, x: ^f32, y: ^f32, z: ^f32) -> i32 ---;
    @(link_name="Soloud_play") soloud_play :: proc(soloud: Soloud, sound: Audio_Source) -> u32 ---;
    @(link_name="Soloud_playEx") soloud_play_ex :: proc(soloud: Soloud, sound: Audio_Source, volume: f32 /* = -1.0f */, pan: f32 /* = 0.0f */, paused: i32 /* = 0 */, bus: u32 /* = 0 */) -> u32 ---;
    @(link_name="Soloud_playClocked") soloud_play_clocked :: proc(soloud: Soloud, sound_time: f64, sound: Audio_Source) -> u32 ---;
    @(link_name="Soloud_playClockedEx") soloud_play_clocked_ex :: proc(soloud: Soloud, sound_time: f64, sound: Audio_Source, volume: f32 /* = -1.0f */, pan: f32 /* = 0.0f */, bus: u32 /* = 0 */) -> u32 ---;
    @(link_name="Soloud_play3d") soloud_play_3d :: proc(soloud: Soloud, sound: Audio_Source, x: f32, y: f32, z: f32) -> u32 ---;
    @(link_name="Soloud_play3dEx") soloud_play_3d_ex :: proc(soloud: Soloud, sound: Audio_Source, x: f32, y: f32, z: f32, vel_x: f32 /* = 0.0f */, vel_y: f32 /* = 0.0f */, vel_z: f32 /* = 0.0f */, volume: f32 /* = 1.0f */, paused: i32 /* = 0 */, bus: u32 /* = 0 */) -> u32 ---;
    @(link_name="Soloud_play3dClocked") soloud_play_3d_clocked :: proc(soloud: Soloud, sound_time: f64, sound: Audio_Source, x: f32, y: f32, z: f32) -> u32 ---;
    @(link_name="Soloud_play3dClockedEx") soloud_play_3d_clocked_ex :: proc(soloud: Soloud, sound_time: f64, sound: Audio_Source, x: f32, y: f32, z: f32, vel_x: f32 /* = 0.0f */, vel_y: f32 /* = 0.0f */, vel_z: f32 /* = 0.0f */, volume: f32 /* = 1.0f */, bus: u32 /* = 0 */) -> u32 ---;
    @(link_name="Soloud_playBackground") soloud_play_background :: proc(soloud: Soloud, sound: Audio_Source) -> u32 ---;
    @(link_name="Soloud_playBackgroundEx") soloud_play_background_ex :: proc(soloud: Soloud, sound: Audio_Source, volume: f32 /* = -1.0f */, paused: i32 /* = 0 */, bus: u32 /* = 0 */) -> u32 ---;
    @(link_name="Soloud_seek") soloud_seek :: proc(soloud: Soloud, voice_handle: u32, seconds: f64) -> i32 ---;
    @(link_name="Soloud_stop") soloud_stop :: proc(soloud: Soloud, voice_handle: u32) ---;
    @(link_name="Soloud_stopAll") soloud_stop_all :: proc(soloud: Soloud) ---;
    @(link_name="Soloud_stopAudioSource") soloud_stop_audio_source :: proc(soloud: Soloud, sound: Audio_Source) ---;
    @(link_name="Soloud_countAudioSource") soloud_count_audio_source :: proc(soloud: Soloud, sound: Audio_Source) -> i32 ---;
    @(link_name="Soloud_setFilterParameter") soloud_set_filter_parameter :: proc(soloud: Soloud, voice_handle: u32, filter_id: u32, attribute_id: u32, value: f32) ---;
    @(link_name="Soloud_getFilterParameter") soloud_get_filter_parameter :: proc(soloud: Soloud, voice_handle: u32, filter_id: u32, attribute_id: u32) -> f32 ---;
    @(link_name="Soloud_fadeFilterParameter") soloud_fade_filter_parameter :: proc(soloud: Soloud, voice_handle: u32, filter_id: u32, attribute_id: u32, to: f32, time: f64) ---;
    @(link_name="Soloud_oscillateFilterParameter") soloud_oscillate_filter_parameter :: proc(soloud: Soloud, voice_handle: u32, filter_id: u32, attribute_id: u32, from: f32, to: f32, time: f64) ---;
    @(link_name="Soloud_getStreamTime") soloud_get_stream_time :: proc(soloud: Soloud, voice_handle: u32) -> f64 ---;
    @(link_name="Soloud_getStreamPosition") soloud_get_stream_position :: proc(soloud: Soloud, voice_handle: u32) -> f64 ---;
    @(link_name="Soloud_getPause") soloud_get_pause :: proc(soloud: Soloud, voice_handle: u32) -> i32 ---;
    @(link_name="Soloud_getVolume") soloud_get_volume :: proc(soloud: Soloud, voice_handle: u32) -> f32 ---;
    @(link_name="Soloud_getOverallVolume") soloud_get_overall_volume :: proc(soloud: Soloud, voice_handle: u32) -> f32 ---;
    @(link_name="Soloud_getPan") soloud_get_pan :: proc(soloud: Soloud, voice_handle: u32) -> f32 ---;
    @(link_name="Soloud_getSamplerate") soloud_get_samplerate :: proc(soloud: Soloud, voice_handle: u32) -> f32 ---;
    @(link_name="Soloud_getProtectVoice") soloud_protect_voice :: proc(soloud: Soloud, voice_handle: u32) -> i32 ---;
    @(link_name="Soloud_getActiveVoiceCount") soloud_get_active_voice_count :: proc(soloud: Soloud) -> u32 ---;
    @(link_name="Soloud_getVoiceCount") soloud_get_voice_count :: proc(soloud: Soloud) -> u32 ---;
    @(link_name="Soloud_isValidVoiceHandle") soloud_is_valid_voice_handle :: proc(soloud: Soloud, voice_handle: u32) -> i32 ---;
    @(link_name="Soloud_getRelativePlaySpeed") soloud_get_relative_play_speed :: proc(soloud: Soloud, voice_handle: u32) -> f32 ---;
    @(link_name="Soloud_getPostClipScaler") soloud_get_post_clip_scaler :: proc(soloud: Soloud) -> f32 ---;
    @(link_name="Soloud_getGlobalVolume") soloud_get_global_volume :: proc(soloud: Soloud) -> f32 ---;
    @(link_name="Soloud_getMaxActiveVoiceCount") soloud_get_max_active_voice_count :: proc(soloud: Soloud) -> u32 ---;
    @(link_name="Soloud_getLooping") soloud_get_looping :: proc(soloud: Soloud, voice_handle: u32) -> i32 ---;
    @(link_name="Soloud_getLoopPoint") soloud_get_loop_point :: proc(soloud: Soloud, voice_handle: u32) -> f64---;
    @(link_name="Soloud_setLoopPoint") soloud_set_loop_point :: proc(soloud: Soloud, voice_handle: u32, loop_point: f64) ---;
    @(link_name="Soloud_setLooping") soloud_set_looping :: proc(soloud: Soloud, voice_handle: u32, looping: i32) ---;
    @(link_name="Soloud_setMaxActiveVoiceCount") soloud_set_max_active_voice_count :: proc(soloud: Soloud, voice_count: i32) -> i32 ---;
    @(link_name="Soloud_setInaudibleBehavior") soloud_set_inaudible_behavior :: proc(soloud: Soloud, voice_handle: u32, must_tick: i32, kill: i32) ---;
    @(link_name="Soloud_setGlobalVolume") soloud_set_global_volume :: proc(soloud: Soloud, volume: f32) ---;
    @(link_name="Soloud_setPostClipScaler") soloud_set_post_clip_scaler :: proc(soloud: Soloud, scale: f32) ---;
    @(link_name="Soloud_setPause") soloud_set_pause :: proc(soloud: Soloud, voice_handle: u32, pause: i32) ---;
    @(link_name="Soloud_setPauseAll") soloud_pause_all :: proc(soloud: Soloud, pause: i32) ---;
    @(link_name="Soloud_setRelativePlaySpeed") soloud_set_relative_play_speed :: proc(soloud: Soloud, voice_handle: u32, speed: f32) -> i32 ---;
    @(link_name="Soloud_setProtectVoice") soloud_set_protect_voice :: proc(soloud: Soloud, voice_handle: u32, protect: i32) ---;
    @(link_name="Soloud_setSamplerate") soloud_set_samplerate :: proc(soloud: Soloud, voice_handle: u32, samplerate: f32) ---;
    @(link_name="Soloud_setPan") soloud_set_pan :: proc(soloud: Soloud, voice_handle: u32, pan: f32) ---;
    @(link_name="Soloud_setPanAbsolute") soloud_set_pan_absolute :: proc(soloud: Soloud, voice_handle: u32, l_volume: f32, r_volume: f32) ---;
    @(link_name="Soloud_setPanAbsoluteEx") soloud_set_pan_absolute_ex :: proc(soloud: Soloud, voice_handle: u32, l_volume: f32, r_volume: f32, b_volume: f32 /* = 0 */, rb_volume: f32 /* = 0 */, c_volume: f32 /* = 0 */, s_volume: f32 /* = 0 */) ---;
    @(link_name="Soloud_setVolume") soloud_set_volume :: proc(soloud: Soloud, voice_handle: u32, volume: f32) ---;
    @(link_name="Soloud_setDelaySamples") soloud_set_delay_samples :: proc(soloud: Soloud, voice_handle: u32, samples: i32) ---;
    @(link_name="Soloud_fadeVolume") soloud_fade_volume :: proc(soloud: Soloud, voice_handle: u32, to: f32, time: f64) ---;
    @(link_name="Soloud_fadePan") soloud_fade_pan :: proc(soloud: Soloud, voice_handle: u32, to: f32, time: f64) ---;
    @(link_name="Soloud_fadeRelativePlaySpeed") soloud_fade_relative_play_speed :: proc(soloud: Soloud, voice_handle: u32, to: f32, time: f64) ---;
    @(link_name="Soloud_fadeGlobalVolume") soloud_fade_global_volume :: proc(soloud: Soloud, to: f32, time: f64) ---;
    @(link_name="Soloud_schedulePause") soloud_schedule_pause :: proc(soloud: Soloud, voice_handle: u32, time: f64) ---;
    @(link_name="Soloud_scheduleStop") soloud_schedule_stop :: proc(soloud: Soloud, voice_handle: u32, time: f64) ---;
    @(link_name="Soloud_oscillateVolume") soloud_oscillate_volume :: proc(soloud: Soloud, voice_handle: u32, from: f32, to: f32, time: f64) ---;
    @(link_name="Soloud_oscillatePan") soloud_oscillate_pan :: proc(soloud: Soloud, voice_handle: u32, from: f32, to: f32, time: f64) ---;
    @(link_name="Soloud_oscillateRelativePlaySpeed") soloud_oscillate_relative_play_speed :: proc(soloud: Soloud, voice_handle: u32, from: f32, to: f32, time: f64) ---;
    @(link_name="Soloud_oscillateGlobalVolume") soloud_oscillate_global_volume :: proc(soloud: Soloud, from: f32, to: f32, time: f64) ---;
    @(link_name="Soloud_setGlobalFilter") soloud_set_global_filter :: proc(soloud: Soloud, filter_id: u32, filter: Filter) ---;
    @(link_name="Soloud_setVisualizationEnable") soloud_set_visualization_enable :: proc(soloud: Soloud, enable: i32) ---;
    @(link_name="Soloud_calcFFT") soloud_calc_fft :: proc(soloud: Soloud) -> f32 ---;
    @(link_name="Soloud_getWave") soloud_get_wave :: proc(soloud: Soloud) -> f32 ---;
    @(link_name="Soloud_getApproximateVolume") soloud_get_approximate_volume :: proc(soloud: Soloud, channel: i32) -> f32 ---;
    @(link_name="Soloud_getLoopCount") soloud_get_loop_count :: proc(soloud: Soloud, voice_handle: u32) -> u32 ---;
    @(link_name="Soloud_getInfo") soloud_get_info :: proc(soloud: Soloud, voice_handle: u32, info_key: u32) -> f32 ---;
    @(link_name="Soloud_createVoiceGroup") soloud_create_voice_group :: proc(soloud: Soloud) -> u32 ---;
    @(link_name="Soloud_destroyVoiceGroup") soloud_destroy_voice_group :: proc(soloud: Soloud, voice_group_handle: u32) -> i32 ---;
    @(link_name="Soloud_addVoiceToGroup") soloud_add_voice_to_group :: proc(soloud: Soloud, voice_group_handle: u32, voice_handle: u32) -> i32 ---;
    @(link_name="Soloud_isVoiceGroup") soloud_is_voice_group :: proc(soloud: Soloud, voice_group_handle: u32) -> i32 ---;
    @(link_name="Soloud_isVoiceGroupEmpty") soloud_is_voice_group_empty :: proc(soloud: Soloud, voice_group_handle: u32) -> i32 ---;
    @(link_name="Soloud_update3dAudio") soloud_update_3d_audio :: proc(soloud: Soloud) ---;
    @(link_name="Soloud_set3dSoundSpeed") soloud_set_3d_sound_speed :: proc(soloud: Soloud, speed: f32) -> i32 ---;
    @(link_name="Soloud_get3dSoundSpeed") soloud_get_3d_sound_speed :: proc(soloud: Soloud) -> f32 ---;
    @(link_name="Soloud_set3dListenerParameters") soloud_set_3d_listener_parameters :: proc(soloud: Soloud, x: f32, y: f32, z: f32, at_x: f32, at_y: f32, at_z: f32, up_x: f32, up_y: f32, up_z: f32) ---;
    @(link_name="Soloud_set3dListenerParametersEx") soloud_set_3d_listener_parameters_ex :: proc(soloud: Soloud, x: f32, y: f32, z: f32, at_x: f32, at_y: f32, at_z: f32, up_x: f32, up_y: f32, up_z: f32, vel_x: f32 /* = 0.0f */, vel_y: f32 /* = 0.0f */, vel_z: f32 /* = 0.0f */) ---;
    @(link_name="Soloud_set3dListenerPosition") soloud_set_3d_listener_position :: proc(soloud: Soloud, x: f32, y: f32, z: f32) ---;
    @(link_name="Soloud_set3dListenerAt") soloud_set_3d_listener_at :: proc(soloud: Soloud, at_x: f32, at_y: f32, at_z: f32) ---;
    @(link_name="Soloud_set3dListenerUp") soloud_set_3d_listener_up :: proc(soloud: Soloud, up_x: f32, up_y: f32, up_z: f32) ---;
    @(link_name="Soloud_set3dListenerVelocity") soloud_set_3d_listener_velocity :: proc(soloud: Soloud, vel_x: f32, vel_y: f32, vel_z: f32) ---;
    @(link_name="Soloud_set3dSourceParameters") soloud_set_3d_source_parameters :: proc(soloud: Soloud, voice_handle: u32, x: f32, y: f32, z: f32) ---;
    @(link_name="Soloud_set3dSourceParametersEx") soloud_set_3d_source_parameters_ex :: proc(soloud: Soloud, voice_handle: u32, x: f32, y: f32, z: f32, vel_x: f32 /* = 0.0f */, vel_y: f32 /* = 0.0f */, vel_z: f32 /* = 0.0f */) ---;
    @(link_name="Soloud_set3dSourcePosition") soloud_set_3d_source_position :: proc(soloud: Soloud, voice_handle: u32, x: f32, y: f32, z: f32) ---;
    @(link_name="Soloud_set3dSourceVelocity") soloud_set_3d_source_velocity :: proc(soloud: Soloud, voice_handle: u32, vel_x: f32, vel_y: f32, vel_z: f32) ---;
    @(link_name="Soloud_set3dSourceMinMaxDistance") soloud_set_3d_source_min_max_distance :: proc(soloud: Soloud, voice_handle: u32, min_dist: f32, max_dist: f32) ---;
    @(link_name="Soloud_set3dSourceAttenuation") soloud_set_3d_source_attenuation :: proc(soloud: Soloud, voice_handle: u32, attenuation_model: u32, attenuation_rolloff_factor: f32) ---;
    @(link_name="Soloud_set3dSourceDopplerFactor") soloud_set_3d_source_doppler_factor :: proc(soloud: Soloud, voice_handle: u32, doppler_factor: f32) ---;
    @(link_name="Soloud_mix") soloud_mix :: proc(soloud: Soloud, buffer: ^f32, samples: i32) ---;
    @(link_name="Soloud_mixSigned16") soloud_mix_signed_16 :: proc(soloud: Soloud, buffer: ^i16, samples: i32) ---;


    // Bassboost_Filter
    @(link_name="BassboostFilter_destroy") bassboost_filter_destroy :: proc(bassboost_filter: Bassboost_Filter) ---;
    @(link_name="BassboostFilter_getParamCount") bassboost_filter_get_param_count :: proc(bassboost_filter: Bassboost_Filter) -> i32 ---;
    @(link_name="BassboostFilter_getParamName") bassboost_filter_get_param_name :: proc(bassboost_filter: Bassboost_Filter, param_index: u32) -> cstring ---;
    @(link_name="BassboostFilter_getParamType") bassboost_filter_get_param_type :: proc(bassboost_filter: Bassboost_Filter, param_index: u32) -> u32 ---;
    @(link_name="BassboostFilter_getParamMax") bassboost_filter_get_param_max :: proc(bassboost_filter: Bassboost_Filter, param_index: u32) -> f32 ---;
    @(link_name="BassboostFilter_getParamMin") bassboost_filter_get_param_min :: proc(bassboost_filter: Bassboost_Filter, param_index: u32) -> f32 ---;
    @(link_name="BassboostFilter_setParams") bassboost_filter_set_params :: proc(bassboost_filter: Bassboost_Filter, boost: f32) -> i32 ---;
    @(link_name="BassboostFilter_create") bassboost_filter_create :: proc() -> Bassboost_Filter ---;   


    // Biquad_Resonant_Filter
    @(link_name="BiquadResonantFilter_destroy") biquad_resonant_filter_destroy :: proc(biquad_resonant_filter: Biquad_Resonant_Filter) ---;
    @(link_name="BiquadResonantFilter_getParamCount") biquad_resonant_filter_get_param_count :: proc(biquad_resonant_filter: Biquad_Resonant_Filter) -> i32 ---;
    @(link_name="BiquadResonantFilter_getParamName") biquad_resonant_filter_get_param_name :: proc(biquad_resonant_filter: Biquad_Resonant_Filter, param_index: u32) -> cstring ---;
    @(link_name="BiquadResonantFilter_getParamType") biquad_resonant_filter_param_type :: proc(biquad_resonant_filter: Biquad_Resonant_Filter, param_index: u32) -> u32 ---;
    @(link_name="BiquadResonantFilter_getParamMax") biquad_resonant_filter_param_max :: proc(biquad_resonant_filter: Biquad_Resonant_Filter, param_index: u32) -> f32 ---;
    @(link_name="BiquadResonantFilter_getParamMin") biquad_resonant_filter_param_min :: proc(biquad_resonant_filter: Biquad_Resonant_Filter, param_index: u32) -> f32 ---;
    @(link_name="BiquadResonantFilter_create") biquad_resonant_filter_create :: proc() -> Biquad_Resonant_Filter ---;
    @(link_name="BiquadResonantFilter_setParams") biquad_resonant_filter_set_params :: proc(biquad_resonant_filter: Biquad_Resonant_Filter, type: i32, frequency: f32, resonance: f32) -> i32 ---;


    // Bus
    @(link_name="Bus_destroy") bus_destroy :: proc(bus: Bus) ---;
    @(link_name="Bus_create") bus_create :: proc() -> Bus ---;
    @(link_name="Bus_setFilter") bus_set_filter :: proc(bus: Bus, filter_id: u32, filter: Filter) ---;
    @(link_name="Bus_play") bus_play :: proc(bus: Bus, sound: Audio_Source) -> u32 ---;
    @(link_name="Bus_playEx") bus_play_ex :: proc(bus: Bus, sound: Audio_Source, volume: f32 /* = 1.0f */, pan: f32 /* = 0.0f */, paused: i32 /* = 0 */) -> u32 ---;
    @(link_name="Bus_playClocked") bus_play_clocked :: proc(bus: Bus, sound_time: f64, sound: Audio_Source) -> u32 ---;
    @(link_name="Bus_playClockedEx") bus_play_clocked_ex :: proc(bus: Bus, sound_time: f64, sound: Audio_Source, volume: f32 /* = 1.0f */, pan: f32 /* = 0.0f */) -> u32 ---;
    @(link_name="Bus_play3d") bus_play_3d :: proc(bus: Bus, sound: Audio_Source, x: f32, y: f32, z: f32) -> u32 ---;
    @(link_name="Bus_play3dEx") bus_play_3d_ex :: proc(bus: Bus, sound: Audio_Source, x: f32, y: f32, z: f32, vel_x: f32 /* = 0.0f */, vel_y: f32 /* = 0.0f */, vel_z: f32 /* = 0.0f */, volume: f32 /* = 1.0f */, paused: i32 /* = 0 */) -> u32 ---;
    @(link_name="Bus_play3dClocked") bus_play_3d_clocked :: proc(bus: Bus, sound_time: f64, sound: Audio_Source, x: f32, y: f32, z: f32) -> u32 ---;
    @(link_name="Bus_play3dClockedEx") bus_play_3d_clocked_ex :: proc(bus: Bus, sound_time: f64, sound: Audio_Source, x: f32, y: f32, z: f32, vel_x: f32 /* = 0.0f */, vel_y: f32 /* = 0.0f */, vel_z: f32 /* = 0.0f */, volume: f32 /* = 1.0f */) -> u32 ---;
    @(link_name="Bus_setChannels") bus_set_channels :: proc(bus: Bus, channels: u32) -> i32 ---;
    @(link_name="Bus_setVisualizationEnable") bus_set_visualization_enable :: proc(bus: Bus, enable: i32) ---;
    @(link_name="Bus_annexSound") bus_annex_sound :: proc(bus: Bus, voice_handle: u32) ---;
    @(link_name="Bus_calcFFT") bus_calc_fft :: proc(bus: Bus) -> f32 ---;
    @(link_name="Bus_getWave") bus_get_wave :: proc(bus: Bus) -> f32 ---;
    @(link_name="Bus_getApproximateVolume") bus_get_approximate_volume :: proc(bus: Bus, channel: u32) -> f32 ---;
    @(link_name="Bus_getActiveVoiceCount") bus_get_active_count :: proc(bus: Bus) -> u32 ---;
    @(link_name="Bus_setVolume") bus_set_volume :: proc(bus: Bus, volume: f32) ---;
    @(link_name="Bus_setLooping") bus_set_looping :: proc(bus: Bus, loop: i32) ---;
    @(link_name="Bus_set3dMinMaxDistance") bus_set_3d_min_max_distance :: proc(bus: Bus, min_dist: f32, max_dist: f32) ---;
    @(link_name="Bus_set3dAttenuation") bus_set_3d_attenuation :: proc(bus: Bus, attenuation_mode: u32, attenuation_rolloff_factor: f32) ---;
    @(link_name="Bus_set3dDopplerFactor") bus_set_3d_doppler_factor :: proc(bus: Bus, doppler_factor: f32) ---;
    @(link_name="Bus_set3dListenerRelative") bus_set_3d_listener_relative :: proc(bus: Bus, listener_relative: i32) ---;
    @(link_name="Bus_set3dDistanceDelay") bus_set_3d_distance_delay :: proc(bus: Bus, distance_delay: i32) ---;
    @(link_name="Bus_set3dCollider") bus_set_3d_collider :: proc(bus: Bus, collider: Audio_Collider) ---;
    @(link_name="Bus_set3dColliderEx") bus_set_3d_collider_ex :: proc(bus: Bus, collider: Audio_Collider, use_data: i32 /* = 0 */) ---;
    @(link_name="Bus_set3dAttenuator") bus_set_3d_attenuator :: proc(bus: Bus, attenuator: Audio_Attenuator) ---;
    @(link_name="Bus_setInaudibleBehavior") bus_set_inaudible_behavior :: proc(bus: Bus, must_tick: i32, kill: i32) ---;
    @(link_name="Bus_setLoopPoint") bus_set_loop_point :: proc(bus: Bus, loop_point: f64) ---;
    @(link_name="Bus_getLoopPoint") bus_get_loop_point :: proc(bus: Bus) -> f64 ---;
    @(link_name="Bus_stop") bus_stop :: proc(bus: Bus) ---;


    // DC_Removal_Filter
    @(link_name="DCRemovalFilter_destroy") dc_removal_filter_destroy :: proc(dc_removal_filter: DC_Removal_Filter) ---;
    @(link_name="DCRemovalFilter_create") dc_removal_filter_create :: proc() -> DC_Removal_Filter ---;
    @(link_name="DCRemovalFilter_setParams") dc_removal_filter_set_params :: proc(dc_removal_filter: DC_Removal_Filter) -> i32 ---;
    @(link_name="DCRemovalFilter_setParamsEx") dc_removal_filter_set_params_ex :: proc(dc_removal_filter: DC_Removal_Filter, length: f32 /* = 0.1f */) -> i32 ---;
    @(link_name="DCRemovalFilter_getParamCount") dc_removal_filter_get_param_count :: proc(dc_removal_filter: DC_Removal_Filter) -> i32 ---;
    @(link_name="DCRemovalFilter_getParamName") dc_removal_filter_get_param_name :: proc(dc_removal_filter: DC_Removal_Filter, param_index: u32) -> cstring ---;
    @(link_name="DCRemovalFilter_getParamType") dc_removal_filter_get_param_type :: proc(dc_removal_filter: DC_Removal_Filter, param_index: u32) -> u32 ---;
    @(link_name="DCRemovalFilter_getParamMax") dc_removal_filter_get_param_max :: proc(dc_removal_filter: DC_Removal_Filter, param_index: u32) -> f32 ---;
    @(link_name="DCRemovalFilter_getParamMin") dc_removal_filter_get_param_min :: proc(dc_removal_filter: DC_Removal_Filter, param_index: u32) -> f32 ---;


    // Echo_Filter
    @(link_name="EchoFilter_destroy") echo_filter_destroy :: proc(echo_filter: Echo_Filter) ---;
    @(link_name="EchoFilter_getParamCount") echo_filter_get_param_count :: proc(echo_filter: Echo_Filter) -> i32 ---;
    @(link_name="EchoFilter_getParamName") echo_filter_get_param_name :: proc(echo_filter: Echo_Filter, param_index: u32) -> cstring ---;
    @(link_name="EchoFilter_getParamType") echo_filter_get_param_type :: proc(echo_filter: Echo_Filter, param_index: u32) -> u32 ---;
    @(link_name="EchoFilter_getParamMax") echo_filter_get_param_max :: proc(echo_filter: Echo_Filter, param_index: u32) -> f32 ---;
    @(link_name="EchoFilter_getParamMin") echo_filter_get_param_min :: proc(echo_filter: Echo_Filter, param_index: u32) -> f32 ---;
    @(link_name="EchoFilter_create") echo_filter_create :: proc() -> Echo_Filter ---;
    @(link_name="EchoFilter_setParams") echo_filter_set_params :: proc(echo_filter: Echo_Filter, delay: f32) -> i32 ---;
    @(link_name="EchoFilter_setParamsEx") echo_filter_set_params_ex :: proc(echo_filter: Echo_Filter, delay: f32, decay: f32 /* = 0.7f */, filter: f32 /* = 0.0f */) -> i32 ---;


    // FFT_Filter
    @(link_name="FFTFilter_destroy") fft_filter_destroy :: proc(fft_filter: FFT_Filter) ---;
    @(link_name="FFTFilter_create") fft_filter_create :: proc() -> FFT_Filter ---;
    @(link_name="FFTFilter_getParamCount") fft_filter_get_param_count :: proc(fft_filter: FFT_Filter) -> i32 ---;
    @(link_name="FFTFilter_getParamName") fft_filter_get_param_name :: proc(fft_filter: FFT_Filter, param_index: u32) -> cstring ---;
    @(link_name="FFTFilter_getParamType") fft_filter_get_param_type :: proc(fft_filter: FFT_Filter, param_index: u32) -> u32 ---;
    @(link_name="FFTFilter_getParamMax") fft_filter_get_param_max :: proc(fft_filter: FFT_Filter, param_index: u32) -> f32 ---;
    @(link_name="FFTFilter_getParamMin") fft_filter_get_param_min :: proc(fft_filter: FFT_Filter, param_index: u32) -> f32 ---;


    // Flanger_Filter
    @(link_name="FlangerFilter_destroy") flanger_filter_destroy :: proc(flanger_filter: Flanger_Filter) ---;
    @(link_name="FlangerFilter_getParamCount") flanger_filter_get_param_count :: proc(flanger_filter: Flanger_Filter) -> i32 ---;
    @(link_name="FlangerFilter_getParamName") flanger_filter_get_param_name :: proc(flanger_filter: Flanger_Filter, param_index: u32) -> cstring ---;
    @(link_name="FlangerFilter_getParamType") flanger_filter_get_param_type :: proc(flanger_filter: Flanger_Filter, param_index: u32) -> u32 ---;
    @(link_name="FlangerFilter_getParamMax") flanger_filter_get_param_max :: proc(flanger_filter: Flanger_Filter, param_index: u32) -> f32 ---;
    @(link_name="FlangerFilter_getParamMin") flanger_filter_get_param_min :: proc(flanger_filter: Flanger_Filter, param_index: u32) -> f32 ---;
    @(link_name="FlangerFilter_create") flanger_filter_create :: proc() -> Flanger_Filter ---;
    @(link_name="FlangerFilter_setParams") flanger_filter_set_params :: proc(flanger_filter: Flanger_Filter, delay: f32, freq: f32) -> i32 ---;


    // Freeverb_Filter
    @(link_name="FreeverbFilter_destroy") freeberb_filter_destroy :: proc(freeverb_filter: Freeverb_Filter) ---;
    @(link_name="FreeverbFilter_getParamCount") freeberb_filter_get_param_count :: proc(freeverb_filter: Freeverb_Filter) -> i32 ---;
    @(link_name="FreeverbFilter_getParamName") freeberb_filter_get_param_name :: proc(freeverb_filter: Freeverb_Filter, param_index: u32) -> cstring ---;
    @(link_name="FreeverbFilter_getParamType") freeberb_filter_get_param_type :: proc(freeverb_filter: Freeverb_Filter, param_index: u32) -> u32 ---;
    @(link_name="FreeverbFilter_getParamMax") freeberb_filter_get_param_max :: proc(freeverb_filter: Freeverb_Filter, param_index: u32) -> f32 ---;
    @(link_name="FreeverbFilter_getParamMin") freeberb_filter_get_param_min :: proc(freeverb_filter: Freeverb_Filter, param_index: u32) -> f32 ---;
    @(link_name="FreeverbFilter_create") freeberb_filter_create :: proc() -> Freeverb_Filter ---;
    @(link_name="FreeverbFilter_setParams") freeberb_filter_set_params :: proc(freeverb_filter: Freeverb_Filter, mode: f32, room_size: f32, damp: f32, width: f32) -> i32 ---;


    // Lofi_Filter
    @(link_name="LofiFilter_destroy") lofi_filter_destroy :: proc(lofi_filter: Lofi_Filter) ---;
    @(link_name="LofiFilter_getParamCount") lofi_filter_get_param_count :: proc(lofi_filter: Lofi_Filter) -> i32 ---;
    @(link_name="LofiFilter_getParamName") lofi_filter_get_param_name :: proc(lofi_filter: Lofi_Filter, param_index: u32) -> cstring ---;
    @(link_name="LofiFilter_getParamType") lofi_filter_get_param_type :: proc(lofi_filter: Lofi_Filter, param_index: u32) -> u32 ---;
    @(link_name="LofiFilter_getParamMax") lofi_filter_get_param_max :: proc(lofi_filter: Lofi_Filter, param_index: u32) -> f32 ---;
    @(link_name="LofiFilter_getParamMin") lofi_filter_get_param_min :: proc(lofi_filter: Lofi_Filter, param_index: u32) -> f32 ---;
    @(link_name="LofiFilter_create") lofi_filter_create :: proc() -> Lofi_Filter ---;
    @(link_name="LofiFilter_setParams") lofi_filter_set_params :: proc(lofi_filter: Lofi_Filter, sample_rate: f32, bit_depth: f32) -> i32 ---;


    // Monotone
    @(link_name="Monotone_destroy") monotone_destroy :: proc(monotone: Monotone) ---;
    @(link_name="Monotone_create") monotone_create :: proc() -> Monotone ---;
    @(link_name="Monotone_setParams") monotone_set_params :: proc(monotone: Monotone, hardware_channels: i32) -> i32 ---;
    @(link_name="Monotone_setParamsEx") monotone_set_params_ex :: proc(monotone: Monotone, hardware_channels: i32, wave_form: i32 /* = SoLoud::Misc::WAVE_SQUARE */) -> i32 ---;
    @(link_name="Monotone_load") monotone_load :: proc(monotone: Monotone, filename: cstring) -> i32 ---;
    @(link_name="Monotone_loadMem") monotone_load_mem :: proc(monotone: Monotone, mem: ^u8, length: i32) -> i32 ---;
    @(link_name="Monotone_loadMemEx") monotone_load_mem_ex :: proc(monotone: Monotone, mem: ^u8, length: i32, copy: i32 /* = false */, take_ownership: i32 /* = true */) -> i32 ---;
    @(link_name="Monotone_loadFile") monotone_load_file :: proc(monotone: Monotone, file: File) -> i32 ---;
    @(link_name="Monotone_setVolume") monotone_set_volume :: proc(monotone: Monotone, volume: f32) ---;
    @(link_name="Monotone_setLooping") monotone_set_looping :: proc(monotone: Monotone, loop: i32) ---;
    @(link_name="Monotone_set3dMinMaxDistance") monotone_set_3d_min_max_distance :: proc(monotone: Monotone, min_dist: f32, max_dist: f32) ---;
    @(link_name="Monotone_set3dAttenuation") monotone_set_3d_attenuation :: proc(monotone: Monotone, attenuation_mode: u32, attenuation_rolloff_factor: f32) ---;
    @(link_name="Monotone_set3dDopplerFactor") monotone_set_3d_doppler_factor :: proc(monotone: Monotone, doppler_factor: f32) ---;
    @(link_name="Monotone_set3dListenerRelative") monotone_set_3d_listener_relative :: proc(monotone: Monotone, listener_relative: i32) ---;
    @(link_name="Monotone_set3dDistanceDelay") monotone_set_3d_distance_delay :: proc(monotone: Monotone, distance_delay: i32) ---;
    @(link_name="Monotone_set3dCollider") monotone_set_3d_collider :: proc(monotone: Monotone, collider: Audio_Collider) ---;
    @(link_name="Monotone_set3dColliderEx") monotone_set_3d_collider_ex :: proc(monotone: Monotone, collider: Audio_Collider, user_data: i32 /* = 0 */) ---;
    @(link_name="Monotone_set3dAttenuator") monotone_set_3d_attenuator :: proc(monotone: Monotone, attenuator: Audio_Attenuator) ---;
    @(link_name="Monotone_setInaudibleBehavior") monotone_set_inaudible_behavior :: proc(monotone: Monotone, must_tick: i32, kill: i32) ---;
    @(link_name="Monotone_setLoopPoint") monotone_set_loop_point :: proc(monotone: Monotone, loop_point: f64) ---;
    @(link_name="Monotone_getLoopPoint") monotone_get_loop_point :: proc(monotone: Monotone) -> f64 ---;
    @(link_name="Monotone_setFilter") monotone_set_filter :: proc(monotone: Monotone, filter_id: u32, filter: Filter) ---;
    @(link_name="Monotone_stop") monotone_stop :: proc(monotone: Monotone) ---;


    // Noise
    @(link_name="Noise_destroy") noise_destroy :: proc(noise: Noise) ---;
    @(link_name="Noise_create") noise_create :: proc() -> Noise ---;
    @(link_name="Noise_setOctaveScale") noise_set_octave_scale :: proc(noise: Noise, oct0: f32, oct1: f32, oct2: f32, oct3: f32, oct4: f32, oct5: f32, oct6: f32, oct7: f32, oct8: f32, oct9: f32) ---;
    @(link_name="Noise_setType") noise_set_type :: proc(noise: Noise, type: i32) ---;
    @(link_name="Noise_setVolume") noise_set_volume :: proc(noise: Noise, volume: f32) ---;
    @(link_name="Noise_setLooping") noise_set_looping :: proc(noise: Noise, loop: i32) ---;
    @(link_name="Noise_set3dMinMaxDistance") noise_set_3d_min_max_distance :: proc(noise: Noise, min_dist: f32, max_dist: f32) ---;
    @(link_name="Noise_set3dAttenuation") noise_set_3d_attenuation :: proc(noise: Noise, attenuation_mode: u32, attenuation_rolloff_factor: f32) ---;
    @(link_name="Noise_set3dDopplerFactor") noise_set_3d_doppler_factor :: proc(noise: Noise, doppler_factor: f32) ---;
    @(link_name="Noise_set3dListenerRelative") noise_set_3d_listener_relative :: proc(noise: Noise, listener_relative: i32) ---;
    @(link_name="Noise_set3dDistanceDelay") noise_set_3d_distance_delay :: proc(noise: Noise, distance_delay: i32) ---;
    @(link_name="Noise_set3dCollider") noise_set_3d_collider :: proc(noise: Noise, collider: Audio_Collider) ---;
    @(link_name="Noise_set3dColliderEx") noise_set_3d_collider_ex :: proc(noise: Noise, collider: Audio_Collider, user_data: i32 /* = 0 */) ---;
    @(link_name="Noise_set3dAttenuator") noise_set_3d_attenuator :: proc(noise: Noise, attenuator: Audio_Attenuator) ---;
    @(link_name="Noise_setInaudibleBehavior") noise_set_inaudible_behavior :: proc(noise: Noise, must_tick: i32, kill: i32) ---;
    @(link_name="Noise_setLoopPoint") noise_set_loop_point :: proc(noise: Noise, loop_point: f64) ---;
    @(link_name="Noise_getLoopPoint") noise_get_loop_point :: proc(noise: Noise) -> f64 ---;
    @(link_name="Noise_setFilter") noise_set_filter :: proc(noise: Noise, filter_id: u32, filter: Filter) ---;
    @(link_name="Noise_stop") noise_stop :: proc(noise: Noise) ---;


    // Openmpt
    @(link_name="Openmpt_destroy") openmpt_destroy :: proc(openmpt: Openmpt) ---;
    @(link_name="Openmpt_create") openmpt_create :: proc() -> Openmpt ---;
    @(link_name="Openmpt_load") openmpt_load :: proc(openmpt: Openmpt, filename: cstring) -> i32 ---;
    @(link_name="Openmpt_loadMem") openmpt_load_mem :: proc(openmpt: Openmpt, mem: ^u8, length: u32) -> i32 ---;
    @(link_name="Openmpt_loadMemEx") openmpt_load_mem_ex :: proc(openmpt: Openmpt, mem: ^u8, length: u32, copy: i32 /* = false */, take_ownership: i32 /* = true */) -> i32 ---;
    @(link_name="Openmpt_loadFile") openmpt_load_file :: proc(openmpt: Openmpt, file: File) -> i32 ---;
    @(link_name="Openmpt_setVolume") openmpt_set_volume :: proc(openmpt: Openmpt, volume: f32) ---;
    @(link_name="Openmpt_setLooping") openmpt_set_looping :: proc(openmpt: Openmpt, loop: i32) ---;
    @(link_name="Openmpt_set3dMinMaxDistance") openmpt_set_3d_min_max_distance :: proc(openmpt: Openmpt, min_dist: f32, max_dist: f32) ---;
    @(link_name="Openmpt_set3dAttenuation") openmpt_set_3d_attenuation :: proc(openmpt: Openmpt, attenuation_mode: u32, attenuation_rolloff_factor: f32) ---;
    @(link_name="Openmpt_set3dDopplerFactor") openmpt_set_3d_doppler_factor :: proc(openmpt: Openmpt, doppler_factor: f32) ---;
    @(link_name="Openmpt_set3dListenerRelative") openmpt_set_3d_listener_relative :: proc(openmpt: Openmpt, listener_relative: i32) ---;
    @(link_name="Openmpt_set3dDistanceDelay") openmpt_set_3d_distance_delay :: proc(openmpt: Openmpt, distance_delay: i32) ---;
    @(link_name="Openmpt_set3dCollider") openmpt_set_3d_collider :: proc(openmpt: Openmpt, collider: Audio_Collider) ---;
    @(link_name="Openmpt_set3dColliderEx") openmpt_set_3d_collider_ex :: proc(openmpt: Openmpt, collider: Audio_Collider, user_data: i32 /* = 0 */) ---;
    @(link_name="Openmpt_set3dAttenuator") openmpt_set_3d_attenuator :: proc(openmpt: Openmpt, attenuator: Audio_Attenuator) ---;
    @(link_name="Openmpt_setInaudibleBehavior") openmpt_set_inaudible_behavior :: proc(openmpt: Openmpt, must_tick: i32, kill: i32) ---;
    @(link_name="Openmpt_setLoopPoint") openmpt_set_loop_point :: proc(openmpt: Openmpt, loop_point: f64) ---;
    @(link_name="Openmpt_getLoopPoint") openmpt_get_loop_point :: proc(openmpt: Openmpt) -> f64 ---;
    @(link_name="Openmpt_setFilter") openmpt_set_filter :: proc(openmpt: Openmpt, filter_id: u32, filter: Filter) ---;
    @(link_name="Openmpt_stop") openmpt_stop :: proc(openmpt: Openmpt) ---;


    // Queue
    @(link_name="Queue_destroy") queue_destroy :: proc(queue: Queue) ---;
    @(link_name="Queue_create") queue_create :: proc() -> Queue ---;
    @(link_name="Queue_play") queue_play :: proc(queue: Queue, sound: Audio_Source) -> i32 ---;
    @(link_name="Queue_getQueueCount") queue_get_queue_count :: proc(queue: Queue) -> u32 ---;
    @(link_name="Queue_isCurrentlyPlaying") queue_is_currently_playing :: proc(queue: Queue, sound: Audio_Source) -> i32 ---;
    @(link_name="Queue_setParamsFromAudioSource") queue_set_params_from_audio_source :: proc(queue: Queue, sound: Audio_Source) -> i32 ---;
    @(link_name="Queue_setParams") queue_set_params :: proc(queue: Queue, samplerate: f32) -> i32 ---;
    @(link_name="Queue_setParamsEx") queue_set_params_ex :: proc(queue: Queue, samplerate: f32, channels: u32 /* = 2 */) -> i32 ---;
    @(link_name="Queue_setVolume") queue_set_volume :: proc(queue: Queue, volume: f32) ---;
    @(link_name="Queue_setLooping") queue_set_looping :: proc(queue: Queue, loop: i32) ---;
    @(link_name="Queue_set3dMinMaxDistance") queue_set_3d_min_max_distance :: proc(queue: Queue, min_dist: f32, max_dist: f32) ---;
    @(link_name="Queue_set3dAttenuation") queue_set_3d_attenuation :: proc(queue: Queue, attenuation_mode: u32, attenuation_rolloff_factor: f32) ---;
    @(link_name="Queue_set3dDopplerFactor") queue_set_3d_doppler_factor :: proc(queue: Queue, doppler_factor: f32) ---;
    @(link_name="Queue_set3dListenerRelative") queue_set_3d_listener_relative :: proc(queue: Queue, listener_relative: i32) ---;
    @(link_name="Queue_set3dDistanceDelay") queue_set_3d_distance_delay :: proc(queue: Queue, distance_delay: i32) ---;
    @(link_name="Queue_set3dCollider") queue_set_3d_collider :: proc(queue: Queue, collider: Audio_Collider) ---;
    @(link_name="Queue_set3dColliderEx") queue_set_3d_collider_ex :: proc(queue: Queue, collider: Audio_Collider, user_data: i32 /* = 0 */) ---;
    @(link_name="Queue_set3dAttenuator") queue_set_3d_attenuator :: proc(queue: Queue, attenuator: Audio_Attenuator) ---;
    @(link_name="Queue_setInaudibleBehavior") queue_set_inaudible_behavior :: proc(queue: Queue, must_tick: i32, kill: i32) ---;
    @(link_name="Queue_setLoopPoint") queue_set_loop_point :: proc(queue: Queue, loop_point: f64) ---;
    @(link_name="Queue_getLoopPoint") queue_get_loop_point :: proc(queue: Queue) -> f64 ---;
    @(link_name="Queue_setFilter") queue_set_filter :: proc(queue: Queue, filter_id: u32, filter: Filter) ---;
    @(link_name="Queue_stop") queue_stop :: proc(queue: Queue) ---;


    // Robotize_Filter
    @(link_name="RobotizeFilter_destroy") robotize_filter_destroy :: proc(robotize_filter: Robotize_Filter) ---;
    @(link_name="RobotizeFilter_getParamCount") robotize_filter_get_param_count :: proc(robotize_filter: Robotize_Filter) -> i32 ---;
    @(link_name="RobotizeFilter_getParamName") robotize_filter_get_param_name :: proc(robotize_filter: Robotize_Filter, param_index: u32) -> cstring ---;
    @(link_name="RobotizeFilter_getParamType") robotize_filter_get_param_type :: proc(robotize_filter: Robotize_Filter, param_index: u32) -> u32 ---;
    @(link_name="RobotizeFilter_getParamMax") robotize_filter_get_param_max :: proc(robotize_filter: Robotize_Filter, param_index: u32) -> f32 ---;
    @(link_name="RobotizeFilter_getParamMin") robotize_filter_get_param_min :: proc(robotize_filter: Robotize_Filter, param_index: u32) -> f32 ---;
    @(link_name="RobotizeFilter_setParams") robotize_filter_set_params :: proc(robotize_filter: Robotize_Filter, freq: f32, waveform: i32) ---;
    @(link_name="RobotizeFilter_create") robotize_filter_create :: proc() -> Robotize_Filter ---;


    // Sfxr
    @(link_name="Sfxr_destroy") sfxr_destroy :: proc(sfxr: Sfxr) ---;
    @(link_name="Sfxr_create") sfxr_create :: proc() -> Sfxr ---;
    @(link_name="Sfxr_resetParams") sfxr_reset_params :: proc(sfxr: Sfxr) ---;
    @(link_name="Sfxr_loadParams") sfxr_load_params :: proc(sfxr: Sfxr, filename: cstring) -> i32 ---;
    @(link_name="Sfxr_loadParamsMem") sfxr_load_params_mem :: proc(sfxr: Sfxr, mem: ^u8, length: u32) -> i32 ---;
    @(link_name="Sfxr_loadParamsMemEx") sfxr_load_params_mem_ex :: proc(sfxr: Sfxr, mem: ^u8, length: u32, copy: i32 /* = false */, take_ownership: i32 /* = true */) -> i32 ---;
    @(link_name="Sfxr_loadParamsFile") sfxr_load_params_file :: proc(sfxr: Sfxr, file: File) -> i32 ---;
    @(link_name="Sfxr_loadPreset") sfxr_load_preset :: proc(sfxr: Sfxr, preset_nro: i32, rand_seed: i32) -> i32 ---;
    @(link_name="Sfxr_setVolume") sfxr_set_volume :: proc(sfxr: Sfxr, volume: f32) ---;
    @(link_name="Sfxr_setLooping") sfxr_set_looping :: proc(sfxr: Sfxr, loop: i32) ---;
    @(link_name="Sfxr_set3dMinMaxDistance") sfxr_set_3d_min_max_distance :: proc(sfxr: Sfxr, min_dist: f32, max_dist: f32) ---;
    @(link_name="Sfxr_set3dAttenuation") sfxr_set_3d_attenuation :: proc(sfxr: Sfxr, attenuation_model: u32, attenuation_rolloff_factor: f32) ---;
    @(link_name="Sfxr_set3dDopplerFactor") sfxr_set_3d_doppler_factor :: proc(sfxr: Sfxr, doppler_factor: f32) ---;
    @(link_name="Sfxr_set3dListenerRelative") sfxr_set_3d_listener_relative :: proc(sfxr: Sfxr, listener_relative: i32) ---;
    @(link_name="Sfxr_set3dDistanceDelay") sfxr_set_3d_distance_delay :: proc(sfxr: Sfxr, distance_delay: i32) ---;
    @(link_name="Sfxr_set3dCollider") sfxr_set_3d_collider :: proc(sfxr: Sfxr, collider: Audio_Collider) ---;
    @(link_name="Sfxr_set3dColliderEx") sfxr_set_3d_collider_ex :: proc(sfxr: Sfxr, collider: Audio_Collider, user_data: i32 /* = 0 */) ---;
    @(link_name="Sfxr_set3dAttenuator") sfxr_set_3d_attenuator :: proc(sfxr: Sfxr, attenuator: Audio_Attenuator) ---;
    @(link_name="Sfxr_setInaudibleBehavior") sfxr_set_inaudible_behavior :: proc(sfxr: Sfxr, must_tick: i32, kill: i32) ---;
    @(link_name="Sfxr_setLoopPoint") sfxr_set_loop_point :: proc(sfxr: Sfxr, loop_point: f64) ---;
    @(link_name="Sfxr_getLoopPoint") sfxr_get_loop_point :: proc(sfxr: Sfxr) -> f64 ---;
    @(link_name="Sfxr_setFilter") sfxr_set_filter :: proc(sfxr: Sfxr, filter_id: u32, filter: Filter) ---;
    @(link_name="Sfxr_stop") sfxr_stop :: proc(sfxr: Sfxr) ---;


    // Speech
    @(link_name="Speech_destroy") speech_destroy :: proc(speech: Speech) ---;
    @(link_name="Speech_create") speech_create :: proc() -> Speech ---;
    @(link_name="Speech_setText") speech_set_text :: proc(speech: Speech, text: cstring) -> i32 ---;
    @(link_name="Speech_setParams") speech_set_params :: proc(speech: Speech) -> i32 ---;
    @(link_name="Speech_setParamsEx") speech_set_params_ex :: proc(speech: Speech, base_freq: u32 /* = 1330 */, base_speed: f32 /* = 10.0f */, base_declination: f32 /* = 0.5f */, base_waveform: i32 /* = KW_TRIANGLE */) -> i32 ---;
    @(link_name="Speech_setVolume") speech_set_volume :: proc(speech: Speech, volume: f32) ---;
    @(link_name="Speech_setLooping") speech_set_looping :: proc(speech: Speech, loop: i32) ---;
    @(link_name="Speech_set3dMinMaxDistance") speech_set_3d_min_max_distance :: proc(speech: Speech, min_dist: f32, max_dist: f32) ---;
    @(link_name="Speech_set3dAttenuation") speech_set_3d_attenuation :: proc(speech: Speech, attenuation_model: u32, attenuation_rolloff_factor: f32) ---;
    @(link_name="Speech_set3dDopplerFactor") speech_set_3d_doppler_factor :: proc(speech: Speech, doppler_factor: f32) ---;
    @(link_name="Speech_set3dListenerRelative") speech_set_3d_listener_relative :: proc(speech: Speech, listener_relative: i32) ---;
    @(link_name="Speech_set3dDistanceDelay") speech_set_3d_distance_delay :: proc(speech: Speech, distance_delay: i32) ---;
    @(link_name="Speech_set3dCollider") speech_set_3d_collider :: proc(speech: Speech, collider: Audio_Collider) ---;
    @(link_name="Speech_set3dColliderEx") speech_set_3d_collider_ex :: proc(speech: Speech, collider: Audio_Collider, user_data: i32 /* = 0 */) ---;
    @(link_name="Speech_set3dAttenuator") speech_set_3d_attenuator :: proc(speech: Speech, attenuator: Audio_Attenuator) ---;
    @(link_name="Speech_setInaudibleBehavior") speech_set_inaudible_behavior :: proc(speech: Speech, must_tick: i32, kill: i32) ---;
    @(link_name="Speech_setLoopPoint") speech_set_loop_point :: proc(speech: Speech, loop_point: f64) ---;
    @(link_name="Speech_getLoopPoint") speech_get_loop_point :: proc(speech: Speech) -> f64 ---;
    @(link_name="Speech_setFilter") speech_set_filter :: proc(speech: Speech, filter_id: u32, filter: Filter) ---;
    @(link_name="Speech_stop") speech_stop :: proc(speech: Speech) ---;


    // Ted_Sid
    @(link_name="TedSid_destroy") ted_sid_destroy :: proc(ted_sid: Ted_Sid) ---;
    @(link_name="TedSid_create") ted_sid_create :: proc() -> Ted_Sid ---;
    @(link_name="TedSid_load") ted_sid_load :: proc(ted_sid: Ted_Sid, filename: cstring) -> i32 ---;
    @(link_name="TedSid_loadToMem") ted_sid_load_to_mem :: proc(ted_sid: Ted_Sid, filename: cstring) -> i32 ---;
    @(link_name="TedSid_loadMem") ted_sid_load_mem :: proc(ted_sid: Ted_Sid, mem: ^u8, length: u32) -> i32 ---;
    @(link_name="TedSid_loadMemEx") ted_sid_load_mem_ex :: proc(ted_sid: Ted_Sid, mem: ^u8, length: u32, copy: i32 /* = false */, take_ownership: i32 /* = true */) -> i32 ---;
    @(link_name="TedSid_loadFileToMem") ted_sid_file_to_mem :: proc(ted_sid: Ted_Sid, file: File) -> i32 ---;
    @(link_name="TedSid_loadFile") ted_sid_load_file :: proc(ted_sid: Ted_Sid, file: File) -> i32 ---;
    @(link_name="TedSid_setVolume") ted_sid_set_volume :: proc(ted_sid: Ted_Sid, volume: f32) ---;
    @(link_name="TedSid_setLooping") ted_sid_set_looping :: proc(ted_sid: Ted_Sid, loop: i32) ---;
    @(link_name="TedSid_set3dMinMaxDistance") ted_sid_set_3d_min_max_distance :: proc(ted_sid: Ted_Sid, min_dist: f32, max_dist: f32) ---;
    @(link_name="TedSid_set3dAttenuation") ted_sid_set_3d_attenuation :: proc(ted_sid: Ted_Sid, attenuation_model: u32, attenuation_rolloff_factor: f32) ---;
    @(link_name="TedSid_set3dDopplerFactor") ted_sid_set_3d_doppler_factor :: proc(ted_sid: Ted_Sid, doppler_factor: f32) ---;
    @(link_name="TedSid_set3dListenerRelative") ted_sid_set_3d_listener_relative :: proc(ted_sid: Ted_Sid, listener_relative: i32) ---;
    @(link_name="TedSid_set3dDistanceDelay") ted_sid_set_3d_distance_delay :: proc(ted_sid: Ted_Sid, distance_delay: i32) ---;
    @(link_name="TedSid_set3dCollider") ted_sid_set_3d_collider :: proc(ted_sid: Ted_Sid, collider: Audio_Collider) ---;
    @(link_name="TedSid_set3dColliderEx") ted_sid_set_3d_collider_ex :: proc(ted_sid: Ted_Sid, collider: Audio_Collider, user_data: i32 /* = 0 */) ---;
    @(link_name="TedSid_set3dAttenuator") ted_sid_set_3d_attenuator :: proc(ted_sid: Ted_Sid, attenuator: Audio_Attenuator) ---;
    @(link_name="TedSid_setInaudibleBehavior") ted_sid_set_inaudible_behavior :: proc(ted_sid: Ted_Sid, must_tick: i32, kill: i32) ---;
    @(link_name="TedSid_setLoopPoint") ted_sid_set_loop_point :: proc(ted_sid: Ted_Sid, loop_point: f64) ---;
    @(link_name="TedSid_getLoopPoint") ted_sid_get_loop_point :: proc(ted_sid: Ted_Sid) -> f64 ---;
    @(link_name="TedSid_setFilter") ted_sid_set_filter :: proc(ted_sid: Ted_Sid, filter_id: u32, filter: Filter) ---;
    @(link_name="TedSid_stop") ted_sid_stop :: proc(ted_sid: Ted_Sid) ---;


    // Vic
    @(link_name="Vic_destroy") vic_destroy :: proc(vic: Vic) ---;
    @(link_name="Vic_create") vic_create :: proc() -> Vic ---;
    @(link_name="Vic_setModel") vic_set_model :: proc(vic: Vic, model: i32) ---;
    @(link_name="Vic_getModel") vic_get_model :: proc(vic: Vic) -> i32 ---;
    @(link_name="Vic_setRegister") vic_set_register :: proc(vic: Vic, reg: i32, value: u8) ---;
    @(link_name="Vic_getRegister") vic_get_register :: proc(vic: Vic, reg: i32) -> u32 ---;
    @(link_name="Vic_setVolume") vic_set_volume :: proc(vic: Vic, volume: f32) ---;
    @(link_name="Vic_setLooping") vic_set_looping :: proc(vic: Vic, loop: i32) ---;
    @(link_name="Vic_set3dMinMaxDistance") vic_set_3d_min_max_distance :: proc(vic: Vic, min_dist: f32, max_dist: f32) ---;
    @(link_name="Vic_set3dAttenuation") vic_set_3d_attenuation :: proc(vic: Vic, attenuation_model: u32, attenuation_rolloff_factor: f32) ---;
    @(link_name="Vic_set3dDopplerFactor") vic_set_3d_doppler_factor :: proc(vic: Vic, doppler_factor: f32) ---;
    @(link_name="Vic_set3dListenerRelative") vic_set_3d_listener_relative :: proc(vic: Vic, listener_relative: i32) ---;
    @(link_name="Vic_set3dDistanceDelay") vic_set_3d_distance_delay :: proc(vic: Vic, distance_delay: i32) ---;
    @(link_name="Vic_set3dCollider") vic_set_3d_collider :: proc(vic: Vic, collider: Audio_Collider) ---;
    @(link_name="Vic_set3dColliderEx") vic_set_3d_collider_ex :: proc(vic: Vic, collider: Audio_Collider, user_data: i32 /* = 0 */) ---;
    @(link_name="Vic_set3dAttenuator") vic_set_3d_attenuator :: proc(vic: Vic, attenuator: Audio_Attenuator) ---;
    @(link_name="Vic_setInaudibleBehavior") vic_set_inaudible_behavior :: proc(vic: Vic, must_tick: i32, kill: i32) ---;
    @(link_name="Vic_setLoopPoint") vic_set_loop_point :: proc(vic: Vic, loop_point: f64) ---;
    @(link_name="Vic_getLoopPoint") vic_get_loop_point :: proc(vic: Vic) -> f64 ---;
    @(link_name="Vic_setFilter") vic_set_filter :: proc(vic: Vic, filter_id: u32, filter: Filter) ---;
    @(link_name="Vic_stop") vic_stop :: proc(vic: Vic) ---;


    // Vizsn
    @(link_name="Vizsn_destroy") vizsn_destroy :: proc(vizsn: Vizsn) ---;
    @(link_name="Vizsn_create") vizsn_create :: proc() -> Vizsn ---;
    @(link_name="Vizsn_setText") vizsn_set_text :: proc(vizsn: Vizsn, text: cstring) ---;
    @(link_name="Vizsn_setVolume") vizsn_set_volume :: proc(vizsn: Vizsn, volume: f32) ---;
    @(link_name="Vizsn_setLooping") vizsn_set_looping :: proc(vizsn: Vizsn, loop: i32) ---;
    @(link_name="Vizsn_set3dMinMaxDistance") vizsn_set_3d_min_max_distance :: proc(vizsn: Vizsn, min_dist: f32, max_dist: f32) ---;
    @(link_name="Vizsn_set3dAttenuation") vizsn_set_3d_attenuation :: proc(vizsn: Vizsn, attenuation_model: u32, attenuation_rolloff_factor: f32) ---;
    @(link_name="Vizsn_set3dDopplerFactor") vizsn_set_3d_doppler_factor :: proc(vizsn: Vizsn, doppler_factor: f32) ---;
    @(link_name="Vizsn_set3dListenerRelative") vizsn_set_3d_listener_relative :: proc(vizsn: Vizsn, listener_relative: i32) ---;
    @(link_name="Vizsn_set3dDistanceDelay") vizsn_set_3d_distance_delay :: proc(vizsn: Vizsn, distance_delay: i32) ---;
    @(link_name="Vizsn_set3dCollider") vizsn_set_3d_collider :: proc(vizsn: Vizsn, collider: Audio_Collider) ---;
    @(link_name="Vizsn_set3dColliderEx") vizsn_set_3d_collider_ex :: proc(vizsn: Vizsn, collider: Audio_Collider, user_data: i32 /* = 0 */) ---;
    @(link_name="Vizsn_set3dAttenuator") vizsn_set_3d_attenuator :: proc(vizsn: Vizsn, attenuator: Audio_Attenuator) ---;
    @(link_name="Vizsn_setInaudibleBehavior") vizsn_set_inaudible_behavior :: proc(vizsn: Vizsn, must_tick: i32, kill: i32) ---;
    @(link_name="Vizsn_setLoopPoint") vizsn_set_loop_point :: proc(vizsn: Vizsn, loop_point: f64) ---;
    @(link_name="Vizsn_getLoopPoint") vizsn_get_loop_point :: proc(vizsn: Vizsn) -> f64 ---;
    @(link_name="Vizsn_setFilter") vizsn_set_filter :: proc(vizsn: Vizsn, filter_id: u32, filter: Filter) ---;
    @(link_name="Vizsn_stop") vizsn_stop :: proc(vizsn: Vizsn) ---;


    // Wav
    @(link_name="Wav_destroy") wav_destroy :: proc(wav: Wav) ---;
    @(link_name="Wav_create") wav_create :: proc() -> Wav ---;
    @(link_name="Wav_load") wav_load :: proc(wav: Wav, filename: cstring) -> i32 ---;
    @(link_name="Wav_loadMem") wav_load_mem :: proc(wav: Wav, mem: ^u8, length: u32) -> i32 ---;
    @(link_name="Wav_loadMemEx") wav_load_mem_ex :: proc(wav: Wav, mem: ^u8, length: u32, copy: i32 /* = false */, take_ownership: i32 /* = true */) -> i32 ---;
    @(link_name="Wav_loadFile") wav_load_file :: proc(wav: Wav, file: File) -> i32 ---;
    @(link_name="Wav_loadRawWave8") wav_load_raw_wave_8 :: proc(wav: Wav, mem: ^u8, length: u32) -> i32 ---;
    @(link_name="Wav_loadRawWave8Ex") wav_load_raw_wave_8_ex :: proc(wav: Wav, mem: ^u8, length: u32, samplerate: f32 /* = 44100.0f */, channels: u32 /* = 1 */) -> i32 ---;
    @(link_name="Wav_loadRawWave16") wav_load_raw_wave_16 :: proc(wav: Wav, mem: ^i16, length: u32) -> i32 ---;
    @(link_name="Wav_loadRawWave16Ex") wav_load_raw_wave_16_ex :: proc(wav: Wav, mem: ^i16, length: u32, samplerate: f32 /* = 44100.0f */, channels: u32 /* = 1 */) -> i32 ---;
    @(link_name="Wav_loadRawWave") wav_load_raw_wave :: proc(wav: Wav, mem: ^f32, length: u32) -> i32 ---;
    @(link_name="Wav_loadRawWaveEx") wav_load_raw_wave_ex :: proc(wav: Wav, mem: ^f32, length: u32, samplerate: f32 /* = 44100.0f */, channels: u32 /* = 1 */, copy: i32 /* = false */, take_ownership: i32 /* = true */) -> i32 ---;
    @(link_name="Wav_getLength") wav_get_length :: proc(wav: Wav) -> f64 ---;
    @(link_name="Wav_setVolume") wav_set_volume :: proc(wav: Wav, volume: f32) ---;
    @(link_name="Wav_setLooping") wav_set_looping :: proc(wav: Wav, loop: i32) ---;
    @(link_name="Wav_set3dMinMaxDistance") wav_set_3d_min_max_distance :: proc(wav: Wav, min_dist: f32, max_dist: f32) ---;
    @(link_name="Wav_set3dAttenuation") wav_set_3d_attenuation :: proc(wav: Wav, attenuation_model: u32, attenuation_rolloff_factor: f32) ---;
    @(link_name="Wav_set3dDopplerFactor") wav_set_3d_doppler_factor :: proc(wav: Wav, doppler_factor: f32) ---;
    @(link_name="Wav_set3dListenerRelative") wav_set_3d_listener_relative :: proc(wav: Wav, listener_relative: i32) ---;
    @(link_name="Wav_set3dDistanceDelay") wav_set_3d_distance_delay :: proc(wav: Wav, distance_delay: i32) ---;
    @(link_name="Wav_set3dCollider") wav_set_3d_collider :: proc(wav: Wav, collider: Audio_Collider) ---;
    @(link_name="Wav_set3dColliderEx") wav_set_3d_collider_ex :: proc(wav: Wav, collider: Audio_Collider, user_data: i32 /* = 0 */) ---;
    @(link_name="Wav_set3dAttenuator") wav_set_3d_attenuator :: proc(wav: Wav, attenuator: Audio_Attenuator) ---;
    @(link_name="Wav_setInaudibleBehavior") wav_set_inaudible_behavior :: proc(wav: Wav, must_tick: i32, kill: i32) ---;
    @(link_name="Wav_setLoopPoint") wav_set_loop_point :: proc(wav: Wav, loop_point: f64) ---;
    @(link_name="Wav_getLoopPoint") wav_get_loop_point :: proc(wav: Wav) -> f64 ---;
    @(link_name="Wav_setFilter") wav_set_filter :: proc(wav: Wav, filter_id: u32, filter: Filter) ---;
    @(link_name="Wav_stop") wav_stop :: proc(wav: Wav) ---;


    // Wave_Shaper_Filter
    @(link_name="WaveShaperFilter_destroy") wave_shaper_filter_destroy :: proc(wave_shaper_filter: Wave_Shaper_Filter) ---;
    @(link_name="WaveShaperFilter_setParams") wave_shaper_filter_set_params :: proc(wave_shaper_filter: Wave_Shaper_Filter, amount: f32) -> i32 ---;
    @(link_name="WaveShaperFilter_create") wave_shaper_filter_create :: proc() -> Wave_Shaper_Filter ---;
    @(link_name="WaveShaperFilter_getParamCount") wave_shaper_filter_get_param_count :: proc(wave_shaper_filter: Wave_Shaper_Filter) -> i32 ---;
    @(link_name="WaveShaperFilter_getParamName") wave_shaper_filter_get_param_name :: proc(wave_shaper_filter: Wave_Shaper_Filter, param_index: u32) -> cstring ---;
    @(link_name="WaveShaperFilter_getParamType") wave_shaper_filter_get_param_type :: proc(wave_shaper_filter: Wave_Shaper_Filter, param_index: u32) -> u32 ---;
    @(link_name="WaveShaperFilter_getParamMax") wave_shaper_filter_get_param_max :: proc(wave_shaper_filter: Wave_Shaper_Filter, param_index: u32) -> f32 ---;
    @(link_name="WaveShaperFilter_getParamMin") wave_shaper_filter_get_param_min :: proc(wave_shaper_filter: Wave_Shaper_Filter, param_index: u32) -> f32---;


    // Wav_Stream
    @(link_name="WavStream_destroy") wav_stream_destroy :: proc(wav_stream: Wav_Stream) ---;
    @(link_name="WavStream_create") wav_stream_create :: proc() -> Wav_Stream ---;
    @(link_name="WavStream_load") wav_stream_load :: proc(wav_stream: Wav_Stream, filename: cstring) -> i32 ---;
    @(link_name="WavStream_loadMem") wav_stream_load_mem :: proc(wav_stream: Wav_Stream, data: ^u8, datalen: u32) -> i32 ---;
    @(link_name="WavStream_loadMemEx") wav_stream_load_mem_ex :: proc(wav_stream: Wav_Stream, data: ^u8, datalen: u32, copy: i32 /* = false */, take_ownership: i32 /* = true */) -> i32 ---;
    @(link_name="WavStream_loadToMem") wav_stream_load_to_mem :: proc(wav_stream: Wav_Stream, filename: cstring) -> i32 ---;
    @(link_name="WavStream_loadFile") wav_stream_load_file :: proc(wav_stream: Wav_Stream, file: File) -> i32 ---;
    @(link_name="WavStream_loadFileToMem") wav_stream_load_file_to_mem :: proc(wav_stream: Wav_Stream, file: File) -> i32 ---;
    @(link_name="WavStream_getLength") wav_stream_get_length :: proc(wav_stream: Wav_Stream) -> f64 ---;
    @(link_name="WavStream_setVolume") wav_stream_set_volume :: proc(wav_stream: Wav_Stream, volume: f32) ---;
    @(link_name="WavStream_setLooping") wav_stream_set_looping :: proc(wav_stream: Wav_Stream, loop: i32) ---;
    @(link_name="WavStream_set3dMinMaxDistance") wav_stream_set_3d_min_max_distance :: proc(wav_stream: Wav_Stream, min_dist: f32, max_dist: f32) ---;
    @(link_name="WavStream_set3dAttenuation") wav_stream_set_3d_attenuation :: proc(wav_stream: Wav_Stream, attenuation_model: u32, attenuation_rolloff_factor: f32) ---;
    @(link_name="WavStream_set3dDopplerFactor") wav_stream_set_3d_doppler_factor :: proc(wav_stream: Wav_Stream, doppler_factor: f32) ---;
    @(link_name="WavStream_set3dListenerRelative") wav_stream_set_3d_listener_relative :: proc(wav_stream: Wav_Stream, listener_relative: i32) ---;
    @(link_name="WavStream_set3dDistanceDelay") wav_stream_set_3d_distance_delay :: proc(wav_stream: Wav_Stream, distance_delay: i32) ---;
    @(link_name="WavStream_set3dCollider") wav_stream_set_3d_collider :: proc(wav_stream: Wav_Stream, collider: Audio_Collider) ---;
    @(link_name="WavStream_set3dColliderEx") wav_stream_set_3d_collider_ex :: proc(wav_stream: Wav_Stream, collider: Audio_Collider, user_data: i32 /* = 0 */) ---;
    @(link_name="WavStream_set3dAttenuator") wav_stream_set_3d_attenuator :: proc(wav_stream: Wav_Stream, attenuator: Audio_Attenuator) ---;
    @(link_name="WavStream_setInaudibleBehavior") wav_stream_set_inaudible_behavior :: proc(wav_stream: Wav_Stream, must_tick: i32, kill: i32) ---;
    @(link_name="WavStream_setLoopPoint") wav_stream_set_loop_point :: proc(wav_stream: Wav_Stream, loop_point: f64) ---;
    @(link_name="WavStream_getLoopPoint") wav_stream_get_loop_point :: proc(wav_stream: Wav_Stream) -> f64 ---;
    @(link_name="WavStream_setFilter") wav_stream_set_filter :: proc(wav_stream: Wav_Stream, filter_id: u32, filter: Filter) ---;
    @(link_name="WavStream_stop") wav_stream_stop :: proc(wav_stream: Wav_Stream) ---;
}


Aligned_Float_Buffer :: rawptr;
Tiny_Aligned_Float_Buffer :: rawptr;
Soloud :: rawptr;
Audio_Collider :: rawptr;
Audio_Attenuator :: rawptr;
Audio_Source :: rawptr;
Bassboost_Filter :: rawptr;
Biquad_Resonant_Filter :: rawptr;
Bus :: rawptr;
DC_Removal_Filter :: rawptr;
Echo_Filter :: rawptr;
Fader :: rawptr;
FFT_Filter :: rawptr;
Filter :: rawptr;
Flanger_Filter :: rawptr;
Freeverb_Filter :: rawptr;
Lofi_Filter :: rawptr;
Monotone :: rawptr;
Noise :: rawptr;
Openmpt :: rawptr;
Queue :: rawptr;
Robotize_Filter :: rawptr;
Sfxr :: rawptr;
Speech :: rawptr;
Ted_Sid :: rawptr;
Vic :: rawptr;
Vizsn :: rawptr;
Wav :: rawptr;
Wave_Shaper_Filter :: rawptr;
Wav_Stream :: rawptr;
File :: rawptr;


SOLOUD_AUTO :: 0;
SOLOUD_SDL1 :: 1;
SOLOUD_SDL2 :: 2;
SOLOUD_PORTAUDIO :: 3;
SOLOUD_WINMM :: 4;
SOLOUD_XAUDIO2 :: 5;
SOLOUD_WASAPI :: 6;
SOLOUD_ALSA :: 7;
SOLOUD_JACK :: 8;
SOLOUD_OSS :: 9;
SOLOUD_OPENAL :: 10;
SOLOUD_COREAUDIO :: 11;
SOLOUD_OPENSLES :: 12;
SOLOUD_VITA_HOMEBREW :: 13;
SOLOUD_MINIAUDIO :: 14;
SOLOUD_NOSOUND :: 15;
SOLOUD_NULLDRIVER :: 16;
SOLOUD_BACKEND_MAX :: 17;
SOLOUD_CLIP_ROUNDOFF :: 1;
SOLOUD_ENABLE_VISUALIZATION :: 2;
SOLOUD_LEFT_HANDED_3D :: 4;
SOLOUD_NO_FPU_REGISTER_CHANGE :: 8;
BASSBOOSTFILTER_WET :: 0;
BASSBOOSTFILTER_BOOST :: 1;
BIQUADRESONANTFILTER_LOWPASS :: 0;
BIQUADRESONANTFILTER_HIGHPASS :: 1;
BIQUADRESONANTFILTER_BANDPASS :: 2;
BIQUADRESONANTFILTER_WET :: 0;
BIQUADRESONANTFILTER_TYPE :: 1;
BIQUADRESONANTFILTER_FREQUENCY :: 2;
BIQUADRESONANTFILTER_RESONANCE :: 3;
ECHOFILTER_WET :: 0;
ECHOFILTER_DELAY :: 1;
ECHOFILTER_DECAY :: 2;
ECHOFILTER_FILTER :: 3;
FLANGERFILTER_WET :: 0;
FLANGERFILTER_DELAY :: 1;
FLANGERFILTER_FREQ :: 2;
FREEVERBFILTER_WET :: 0;
FREEVERBFILTER_FREEZE :: 1;
FREEVERBFILTER_ROOMSIZE :: 2;
FREEVERBFILTER_DAMP :: 3;
FREEVERBFILTER_WIDTH :: 4;
LOFIFILTER_WET :: 0;
LOFIFILTER_SAMPLERATE :: 1;
LOFIFILTER_BITDEPTH :: 2;
NOISE_WHITE :: 0;
NOISE_PINK :: 1;
NOISE_BROWNISH :: 2;
NOISE_BLUEISH :: 3;
ROBOTIZEFILTER_WET :: 0;
ROBOTIZEFILTER_FREQ :: 1;
ROBOTIZEFILTER_WAVE :: 2;
SFXR_COIN :: 0;
SFXR_LASER :: 1;
SFXR_EXPLOSION :: 2;
SFXR_POWERUP :: 3;
SFXR_HURT :: 4;
SFXR_JUMP :: 5;
SFXR_BLIP :: 6;
SPEECH_KW_SAW :: 0;
SPEECH_KW_TRIANGLE :: 1;
SPEECH_KW_SIN :: 2;
SPEECH_KW_SQUARE :: 3;
SPEECH_KW_PULSE :: 4;
SPEECH_KW_NOISE :: 5;
SPEECH_KW_WARBLE :: 6;
VIC_PAL :: 0;
VIC_NTSC :: 1;
VIC_BASS :: 0;
VIC_ALTO :: 1;
VIC_SOPRANO :: 2;
VIC_NOISE :: 3;
VIC_MAX_REGS :: 4;
WAVESHAPERFILTER_WET :: 0;
WAVESHAPERFILTER_AMOUNT :: 1;