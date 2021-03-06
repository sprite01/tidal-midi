module Sound.Tidal.MIDI.Rytm where

import Sound.Tidal.Params
import Sound.Tidal.MIDI.Control

rytmController :: ControllerShape
rytmController = ControllerShape {controls = [

                            mCC synth1_p 16,
                            mCC synth2_p 17,
                            mCC synth3_p 18,
                            mCC synth4_p 19,
                            mCC synth5_p 20,
                            mCC synth6_p 21,
                            mCC synth7_p 22,
                            mCC synth8_p 23,

                            mCC revpre_p 24,
                            mCC revdec_p 25,
                            mCC revfrq_p 26,
                            mCC revgai_p 27,
                            mCC revhpf_p 28,
                            mCC revlpf_p 29,
                            mCC revvol_p 31,

                            mCC samptun_p 24,
                            mCC sampfin_p 25,
                            mCC sampbr_p 26,
                            mCC sampsmp_p 27,
                            mCC sampsta_p 28,
                            mCC sampend_p 29,
                            mCC samplop_p 30,
                            mCC samplev_p 31,

                            mCC machtype_p 15,

                            mCC filtatk_p 70,
                            mCC filtdec_p 71,
                            mCC filtsus_p 72,
                            mCC filtrel_p 73,
                            mCC filtfrq_p 74,
                            mCC filtres_p 75,
                            mCC filttyp_p 76,
                            mCC filtenv_p 77,

                            mCC perf1_p 35,
                            mCC perf2_p 36,
                            mCC perf3_p 37,
                            mCC perf4_p 39,
                            mCC perf5_p 40,
                            mCC perf6_p 41,
                            mCC perf7_p 42,
                            mCC perf8_p 43,
                            mCC perf9_p 44,
                            mCC perf10_p 45,
                            mCC perf11_p 46,
                            mCC perf12_p 47,

                            mCC ampatk_p 78,
                            mCC amphld_p 79,
                            mCC ampdec_p 80,
                            mCC ampovr_p 81,
                            mCC ampdel_p 82,
                            mCC amprev_p 83,
                            mCC amppan_p 10,
                            mCC ampvol_p 7
                          ],
                         -- duration = ("dur", 0.05),
                         -- velocity = ("vel", 0.5),
                         latency = 0.1}

rytm = toShape rytmController

-- standard synth params
(synth1, synth1_p) = pF "synth1" (Just 0)
(synth2, synth2_p) = pF "synth2" (Just 0)
(synth3, synth3_p) = pF "synth3" (Just 0)
(synth4, synth4_p) = pF "synth4" (Just 0)
(synth5, synth5_p) = pF "synth5" (Just 0)
(synth6, synth6_p) = pF "synth6" (Just 0)
(synth7, synth7_p) = pF "synth7" (Just 0)
(synth8, synth8_p) = pF "synth8" (Just 0)

-- machine type (e.g. hard snare, classic snare, hard bd, classic bd, etc)
(machtype, machtype_p) = pF "machtype" (Just 0)

-- generic synth level and tuning
(lev, lev_p) = pF "synth1" (Just 0)
(tun, tun_p) = pF "synth2" (Just 0)

-- generic bd decay and sweep type
(bddec, bddec_p) = pF "synth3" (Just 0)
(bdswt, bdswt_p) = pF "synth5" (Just 0)

-- FM bd params
(fmbdfmamt, fmbdfmamt_p) = pF "synth4" (Just 0)
(fmbdfmswt, fmbdfmswt_p) = pF "synth6" (Just 0)
(fmbdfmdec, fmbdfmdec_p) = pF "synth7" (Just 0)
(fmbdfmtun, fmbdfmtun_p) = pF "synth8" (Just 0)

-- hard bd params
(hardbdhold, hardbdhold_p) = pF "synth4" (Just 0)
(hardbdsnap, hardbdsnap_p) = pF "synth6" (Just 0)
(hardbdwav, hardbdwav_p)   = pF "synth7" (Just 0)
(hardbdtic, hardbdtic_p)   = pF "synth8" (Just 0)

-- classic bd params
(clasbdswd, clasbdswd_p) = pF "synth6" (Just 0)
(clasbdtra, clasbdtra_p) = pF "synth7" (Just 0)
(clasbdwav, clasbdwav_p) = pF "synth8" (Just 0)

-- generic sd params (decay, noise decay, noise level)
(sddec, sddec_p) = pF "synth3" (Just 0)
(sdnod, sdnod_p) = pF "synth6" (Just 0)
(sdnol, sdnol_p) = pF "synth7" (Just 0)

-- hard sd params
(hardsdswd, hardsdswd_p) = pF "synth4" (Just 0)
(hardsdtic, hardsdtic_p) = pF "synth5" (Just 0)
(hardsdswt, hardsdswt_p) = pF "synth8" (Just 0)

-- classic sd params
(classddet, classddet_p) = pF "synth4" (Just 0)
(classdsnp, classdsnp_p) = pF "synth5" (Just 0)
(classdbal, classdbal_p) = pF "synth8" (Just 0)

-- FM sd params
(fmsdfmt, fmsdfmt_p) = pF "synth4" (Just 0)
(fmsdfmd, fmsdfmd_p) = pF "synth5" (Just 0)
(fmsdfma, fmsdfma_p) = pF "synth8" (Just 0)

-- BT
(btdec, btdec_p) = pF "synth3" (Just 0)

-- CP
(cpton, cpton_p) = pF "synth2" (Just 0)
(cpnod, cpnod_p) = pF "synth3" (Just 0)
(cpnum, cpnum_p) = pF "synth4" (Just 0)
(cprat, cprat_p) = pF "synth5" (Just 0)
(cpnol, cpnol_p) = pF "synth6" (Just 0)
(cprnd, cprnd_p) = pF "synth7" (Just 0)
(cpcpd, cpcpd_p) = pF "synth8" (Just 0)

-- filter params
(filtatk, filtatk_p)      = pF "filtatk" (Just 0)
(filtdec, filtdec_p)      = pF "filtdec" (Just 0)
(filtsus, filtsus_p)      = pF "filtsus" (Just 0)
(filtrel, filtrel_p)      = pF "filtrel" (Just 0)
(filtfrq, filtfrq_p)      = pF "filtfrq" (Just 0)
(filtres, filtres_p)      = pF "filtres" (Just 0)
(filttyp, filttyp_p)      = pF "filttyp" (Just 0)
(filtenv, filtenv_p)      = pF "filtenv" (Just 0)

-- amplitude params
(ampatk, ampatk_p)          = pF "ampatk" (Just 0)
(amphld, amphld_p)          = pF "amphld" (Just 0)
(ampdec, ampdec_p)          = pF "ampdec" (Just 0)
(ampovr, ampovr_p)          = pF "ampovr" (Just 0)
(ampdel, ampdel_p)          = pF "ampdel" (Just 0)
(amprev, amprev_p)          = pF "amprev" (Just 0)
(amppan, amppan_p)          = pF "amppan" (Just 0)
(ampvol, ampvol_p)          = pF "ampvol" (Just 0)

-- delay params (only used on FX MIDI channel)
(deltim, deltim_p)    = pF "synth1" (Just 0)
(delx, delx_p)        = pF "synth2" (Just 0)
(delwid, delwid_p)    = pF "synth3" (Just 0)
(delfdb, delffdb_p)   = pF "synth4" (Just 0)
(delhpf, delhpf_p)    = pF "synth5" (Just 0)
(dellpf, dellpf_p)    = pF "synth6" (Just 0)
(delrev, delrev_p)    = pF "synth7" (Just 0)
(delvol, delvol_p)    = pF "synth8" (Just 0)

-- reverb params (only used on FX MIDI channel)
(revpre, revpre_p)       = pF "revpre" (Just 0)
(revdec, revdec_p)       = pF "revdec" (Just 0)
(revfrq, revfrq_p)       = pF "revfrq" (Just 0)
(revgai, revgai_p)       = pF "revgai" (Just 0)
(revhpf, revhpf_p)       = pF "revhpf" (Just 0)
(revlpf, revlpf_p)       = pF "revlpf" (Just 0)
(revvol, revvol_p)       = pF "revvol" (Just 0)

-- performance
(perf1, perf1_p)         = pF "perf1" (Just 0)
(perf2, perf2_p)         = pF "perf2" (Just 0)
(perf3, perf3_p)         = pF "perf3" (Just 0)
(perf4, perf4_p)         = pF "perf4" (Just 0)
(perf5, perf5_p)         = pF "perf5" (Just 0)
(perf6, perf6_p)         = pF "perf6" (Just 0)
(perf7, perf7_p)         = pF "perf7" (Just 0)
(perf8, perf8_p)         = pF "perf8" (Just 0)
(perf9, perf9_p)         = pF "perf9" (Just 0)
(perf10, perf10_p)       = pF "perf10" (Just 0)
(perf11, perf11_p)       = pF "perf11" (Just 0)
(perf12, perf12_p)       = pF "perf12" (Just 0)

-- sample
(samptun, samptun_p)     = pF "samptun" (Just 0)
(sampfin, sampfin_p)     = pF "sampfin" (Just 0)
(sampbr, sampbr_p)       = pF "sampbr" (Just 0)
(sampsmp, sampsmp_p)     = pF "sampsmp" (Just 0)
(sampsta, sampsta_p)     = pF "sampsta" (Just 0)
(sampend, sampend_p)     = pF "sampend" (Just 0)
(samplop, samplop_p)     = pF "samplop" (Just 0)
(samplev, samplev_p)     = pF "samplev" (Just 0)
