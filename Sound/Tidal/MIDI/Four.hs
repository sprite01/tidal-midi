module Sound.Tidal.MIDI.Four where

import Sound.Tidal.Params
import Sound.Tidal.MIDI.Control

fourController :: ControllerShape
fourController = ControllerShape {controls = [

                           mCC perfa_p 3,
                           mCC perfb_p 4,
                           mCC perfc_p 8,
                           mCC perfd_p 9,
                           mCC perfe_p 11,
                           mCC perff_p 64,
                           mCC perfg_p 65,
                           mCC perfh_p 66,
                           mCC perfi_p 67,
                           mCC perfj_p 68,

                           mCC osc1tun_p 16,
                           mCC osc1lev_p 69,
                           mCC osc1wav_p 70,
                           mCC osc1sub_p 71,
                           mCC osc1pw_p 72,
                           mCC osc1spd_p 73,
                           mCC osc1pwm_p 74,

                           mCC noissah_p 75,
                           mCC noisfad_p 76,
                           mCC noislev_p 77,

                           mCC osc2tun_p 17,
                           mCC osc2lev_p 78,
                           mCC osc2wav_p 79,
                           mCC osc2sub_p 80,
                           mCC ocs2pw_p 81,
                           mCC osc2spd_p 82,
                           mCC osc2pwm_p 83,

                           mCC oscsnc_p 84,
                           mCC oscbnd_p 85,
                           mCC oscsli_p 5,
                           mCC oscspd_p 87,
                           mCC oscvib_p 88,

                           mCC flt1frq_p 18,
                           mCC flt1res_p 89,
                           mCC flt1dep_p 102,
                           mCC flt2frq_p 19,
                           mCC flt2res_p 90,
                           mCC flt2dep_p 103,

                           mCC ampatk_p 104,
                           mCC ampdec_p 105,
                           mCC ampsus_p 106,
                           mCC amprel_p 107,
                           mCC ampcho_p 91,
                           mCC ampdel_p 92,
                           mCC amprev_p 93,
                           mCC amppan_p 10,
                           mCC ampvol_p 7,

                           mCC envfatk_p 108,
                           mCC envfdec_p 109,
                           mCC envfsus_p 110,
                           mCC envfrel_p 111,
                           mCC envfdepa_p 20,
                           mCC envfdepb_p 21,

                           mCC env2atk_p 112,
                           mCC env2dec_p 113,
                           mCC env2sus_p 114,
                           mCC env2rel_p 115,
                           mCC env2depa_p 22,
                           mCC env2depb_p 23,

                           mCC lfo1spd_p 116,
                           mCC lfo1mul_p 117,
                           mCC lfo1depa_p 24,
                           mCC lfo1depb_p 25,

                           mCC lfo2spd_p 118,
                           mCC lfo2mul_p 119,
                           mCC lfo2depa_p 26,
                           mCC lfo2depb_p 27
                           ],
                          -- duration = ("dur", 0.05),
                          -- velocity = ("vel", 0.5),
                          latency = 0.1}

 four = toShape fourController

 (perfa, perfa_p)         = pF "perfa" (Just 0)
 (perfb, perfb_p)         = pF "perfb" (Just 0)
 (perfc, perfc_p)         = pF "perfc" (Just 0)
 (perfd, perfd_p)         = pF "perfd" (Just 0)
 (perfe, perfe_p)         = pF "perfe" (Just 0)
 (perff, perff_p)         = pF "perff" (Just 0)
 (perfg, perfg_p)         = pF "perfg" (Just 0)
 (perfh, perfh_p)         = pF "perfh" (Just 0)
 (perfi, perfi_p)         = pF "perfi" (Just 0)
 (perfj, perfj_p)         = pF "perfj" (Just 0)

 (osc1tun, osc1tun_p) = pF "osc1tun" (Just 0)
 (osc1det, osc1det_p) = pF "osc1det" (Just 0)
 (osc1trk, osc1trk_p) = pF "osc1trk" (Just 0)
 (osc1lev, osc1lev_p) = pF "osc1lev" (Just 0)
 (osc1wav, osc1wav_p) = pF "osc1wav" (Just 0)
 (osc1sub, osc1sub_p) = pF "osc1sub" (Just 0)
 (osc1pw, osc1pw_p)  = pF "osc1pw" (Just 0)
 (osc1spd, osc1spd_p) = pF "osc1spd" (Just 0)
 (osc1pwm, osc1pwm_p) = pF "osc1pwm" (Just 0)

 (noissah, noissah_p) = pF "noissah" (Just 0)
 (noisfad, noisfad_p) = pF "noisfad" (Just 0)
 (noislev, noislev_p) = pF "noislev" (Just 0)

 (osc2tun, osc2tun_p) = pF "osc2tun" (Just 0)
 (osc2lev, osc2lev_p) = pF "osc2lev" (Just 0)
 (osc2wav, osc2wav_p) = pF "osc2wav" (Just 0)
 (osc2sub, osc2sub_p) = pF "osc2sub" (Just 0)
 (osc2pw, osc2pw_p)  = pF "osc2pw" (Just 0)
 (osc2spd, osc2spd_p) = pF "osc2spd" (Just 0)
 (osc2pwm, osc2pwm_p) = pF "osc2pwm" (Just 0)

 (oscsnc, oscsnc_p) = pF "oscsnc" (Just 0)
 (oscbnd, oscbnd_p) = pF "oscbnd" (Just 0)
 (oscsli, oscsli_p) = pF "oscsli" (Just 0)
 (oscspd, oscspd_p) = pF "oscspd" (Just 0)
 (oscvib, oscvib_p) = pF "oscvib" (Just 0)

 (flt1frq, flt1frq_p) = pF "flt1frq" (Just 0)
 (flt1res, flt1res_p) = pF "flt1res" (Just 0)
 (flt1dep, flt1dep_p) = pF "flt1dep" (Just 0)
 (flt2frq, flt2frq_p) = pF "flt2frq" (Just 0)
 (flt2res, flt2res_p) = pF "flt2res" (Just 0)
 (flt2dep, flt2dep_p) = pF "flt2dep" (Just 0)

 (ampatk, ampatk_p) = pF "ampatk" (Just 0)
 (ampdec, ampdec_p) = pF "ampdec" (Just 0)
 (ampsus, ampsus_p) = pF "ampsus" (Just 0)
 (amprel, amprel_p) = pF "amprel" (Just 0)
 (ampcho, ampcho_p) = pF "ampcho" (Just 0)
 (ampdel, ampdel_p) = pF "ampdel" (Just 0)
 (amprev, amprev_p) = pF "amprev" (Just 0)
 (amppan, amppan_p) = pF "amppan" (Just 0)
 (ampvol, ampvol_p) = pF "ampvol" (Just 0)

 (envfatk, envfatk_p) = pF "envfatk" (Just 0)
 (envfdec, envfdec_p) = pF "envfdec" (Just 0)
 (envfsus, envfsus_p) = pF "envfsus" (Just 0)
 (envfrel, envfrel_p) = pF "envfrel" (Just 0)
 (envfdepa, envfdepa_p) = pF "envfdepa" (Just 0)
 (envfdepb, envfdepb_p) = pF "envfdepb" (Just 0)

 (env2atk, env2atk_p) = pF "env2atk" (Just 0)
 (env2dec, env2dec_p) = pF "env2dec" (Just 0)
 (env2sus, env2sus_p) = pF "env2sus" (Just 0)
 (env2rel, env2rel_p) = pF "env2rel" (Just 0)
 (env2depa, env2depa_p) = pF "env2depa" (Just 0)
 (env2depb, env2depb_p) = pF "env2depb" (Just 0)

 (lfo1spd, lfo1spd_p) = pF "lfo1spd" (Just 0)
 (lfo1mul, lfo1mul_p) = pF "lfo1mul" (Just 0)
 (lfo1depa, lfo1depa_p) = pF "lfo1depa" (Just 0)
 (lfo1depb, lfo1depb_p) = pF "lfo1depb" (Just 0)

 (lfo2spd, lfo2spd_p) = pF "lfo2spd" (Just 0)
 (lfo2mul, lfo2mul_p) = pF "lfo2mul" (Just 0)
 (lfo2depa, lfo2depa_p) = pF "lfo2depa" (Just 0)
 (lfo2depb, lfo2depb_p) = pF "lfo2depb" (Just 0)
