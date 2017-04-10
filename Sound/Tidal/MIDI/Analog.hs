module Sound.Tidal.MIDI.Analog where

import Sound.Tidal.Params
import Sound.Tidal.MIDI.Control

analogController :: ControllerShape
analogController = ControllerShape {controls = [

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
                            mCC ampvol_p 7,

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
                            mCC osc2pw_p 81,
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

                            mCC amp_atk_p 104,
                            mCC amp_dec_p 105,
                            mCC amp_sus_p 106,
                            mCC amp_rel_p 107,
                            mCC amp_cho_p 91,
                            mCC amp_del_p 92,
                            mCC amp_rev_p 93,
                            mCC amp_pan_p 10,
                            mCC amp_vol_p 7,

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
                           latency = 0.07719}


analog = toShape analogController

-- Analog Rytm params
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

--BD plastic
(bdpllev, bdpllev_p) = pF "synth1" (Just 0)
(bdpltun, bdpltun_p) = pF "synth2" (Just 0)
(bdpldec, bdpldec_p) = pF "synth3" (Just 0)
(bdplmod, bdplmod_p) = pF "synth8" (Just 0)
(bdplswt, bdplswt_p) = pF "synth5" (Just 0)
(bdplswd, bdplswd_p) = pF "synth4" (Just 0)
(bdpltyp, bdpltyp_p) = pF "synth6" (Just 0)
(bdpltic, bdpltic_p) = pF "synth7" (Just 0)

--BD silky
(bdsilev, bdsilev_p) = pF "synth1" (Just 0)
(bdsitun, bdsitun_p) = pF "synth2" (Just 0)
(bdsidec, bdsidec_p) = pF "synth3" (Just 0)
(bdsiswd, bdsiswd_p) = pF "synth4" (Just 0)
(bdsiswt, bdsiswt_p) = pF "synth5" (Just 0)
(bdsihld, bdsihld_p) = pF "synth6" (Just 0)
(bdsiclk, bdsiclk_p) = pF "synth7" (Just 0)
(bdsidus, bdsidus_p) = pF "synth8" (Just 0)

--BD sharp
(bdshlev, bdshlev_p) = pF "synth1" (Just 0)
(bdshtun, bdshtun_p) = pF "synth2" (Just 0)
(bdshdec, bdshdec_p) = pF "synth3" (Just 0)
(bdshswd, bdshswd_p) = pF "synth4" (Just 0)
(bdshswt, bdshswt_p) = pF "synth5" (Just 0)
(bdshhld, bdshhld_p) = pF "synth6" (Just 0)
(bdshtic, bdshtic_p) = pF "synth7" (Just 0)
(bdshwav, bdshwav_p) = pF "synth8" (Just 0)

--BD FM
(bdfmlev, bdfmlev_p) = pF "synth1" (Just 0)
(bdfmtun, bdfmtun_p) = pF "synth2" (Just 0)
(bdfmdec, bdfmdec_p) = pF "synth3" (Just 0)
(bdfmfma, bdfmfma_p) = pF "synth4" (Just 0)
(bdfmswt, bdfmswt_p) = pF "synth5" (Just 0)
(bdfmfms, bdfmfms_p) = pF "synth6" (Just 0)
(bdfmfmd, bdfmfmd_p) = pF "synth7" (Just 0)
(bdfmfmt, bdfmfmt_p) = pF "synth8" (Just 0)

--BD hard
(bdhdlev, bdhdlev_p) = pF "synth1" (Just 0)
(bdhdtun, bdhdtun_p) = pF "synth2" (Just 0)
(bdhddec, bdhddec_p) = pF "synth3" (Just 0)
(bdhdhld, bdhdhld_p) = pF "synth4" (Just 0)
(bdhdswt, bdhdswt_p) = pF "synth5" (Just 0)
(bdhdsnp, bdhdsnp_p) = pF "synth6" (Just 0)
(bdhdwav, bdhdwav_p) = pF "synth7" (Just 0)
(bdhdtic, bdhdtic_p) = pF "synth8" (Just 0)

--BD classic
(bdcllev, bdcllev_p) = pF "synth1" (Just 0)
(bdcltun, bdcltun_p) = pF "synth2" (Just 0)
(bdcldec, bdcldec_p) = pF "synth3" (Just 0)
(bdclhld, bdclhld_p) = pF "synth4" (Just 0)
(bdclswt, bdclswt_p) = pF "synth5" (Just 0)
(bdclswd, bdclswd_p) = pF "synth6" (Just 0)
(bdclwav, bdclwav_p) = pF "synth7" (Just 0)
(bdcltra, bdcltra_p) = pF "synth8" (Just 0)

--SD natural
(sdnalev, sdnalev_p) = pF "synth1" (Just 0)
(sdnatun, sdnatun_p) = pF "synth2" (Just 0)
(sdnabdy, sdnabdy_p) = pF "synth3" (Just 0)
(sdnadec, sdnadec_p) = pF "synth4" (Just 0)
(sdnalpf, sdnalpf_p) = pF "synth5" (Just 0)
(sdnabal, sdnabal_p) = pF "synth6" (Just 0)
(sdnares, sdnares_p) = pF "synth7" (Just 0)
(sdnahpf, sdnahpf_p) = pF "synth8" (Just 0)

--SD hard
(sdhdlev, sdhdlev_p) = pF "synth1" (Just 0)
(sdhdtun, sdhdtun_p) = pF "synth2" (Just 0)
(sdhddec, sdhddec_p) = pF "synth3" (Just 0)
(sdhdswd, sdhdswd_p) = pF "synth4" (Just 0)
(sdhdtic, sdhdtic_p) = pF "synth5" (Just 0)
(sdhdnod, sdhdnod_p) = pF "synth6" (Just 0)
(sdhdnol, sdhdnol_p) = pF "synth7" (Just 0)
(sdhdswt, sdhdswt_p) = pF "synth8" (Just 0)

--SD classic
(sdcllev, sdcllev_p) = pF "synth1" (Just 0)
(sdcltun, sdcltun_p) = pF "synth2" (Just 0)
(sdcldec, sdcldec_p) = pF "synth3" (Just 0)
(sdcldet, sdcldet_p) = pF "synth4" (Just 0)
(sdclsnp, sdclsnp_p) = pF "synth5" (Just 0)
(sdclnod, sdclnod_p) = pF "synth6" (Just 0)
(sdclnol, sdclnol_p) = pF "synth7" (Just 0)
(sdclbal, sdclbal_p) = pF "synth8" (Just 0)

--SD FM
(sdfmlev, sdfmlev_p) = pF "synth1" (Just 0)
(sdfmtun, sdfmtun_p) = pF "synth2" (Just 0)
(sdfmdec, sdfmdec_p) = pF "synth3" (Just 0)
(sdfmfmt, sdfmfmt_p) = pF "synth4" (Just 0)
(sdfmfmd, sdfmfmd_p) = pF "synth5" (Just 0)
(sdfmnod, sdfmnod_p) = pF "synth6" (Just 0)
(sdfmnol, sdfmnol_p) = pF "synth7" (Just 0)
(sdfmfma, sdfmfma_p) = pF "synth8" (Just 0)

--RS hard
(rshdlev, rshdlev_p) = pF "synth1" (Just 0)
(rshdtun, rshdtun_p) = pF "synth2" (Just 0)
(rshddec, rshddec_p) = pF "synth3" (Just 0)
(rshdswd, rshdswd_p) = pF "synth4" (Just 0)
(rshdtic, rshdtic_p) = pF "synth5" (Just 0)
(rshdnol, rshdnol_p) = pF "synth6" (Just 0)
(rshdsym, rshdsym_p) = pF "synth7" (Just 0)
(rshdswt, rshdswt_p) = pF "synth8" (Just 0)

--RS classic
(rscllev, rscllev_p) = pF "synth1" (Just 0)
(rsclt1, rsclt1_p) = pF "synth2" (Just 0)
(rscldec, rscldec_p) = pF "synth3" (Just 0)
(rsclbal, rsclbal_p) = pF "synth4" (Just 0)
(rsclt2, rsclt2_p) = pF "synth5" (Just 0)
(rsclsym, rsclsym_p) = pF "synth6" (Just 0)
(rsclnol, rsclnol_p) = pF "synth7" (Just 0)
(rscltic, rscltic_p) = pF "synth8" (Just 0)

--CP classic
(cpcllev, cpcllev_p) = pF "synth1" (Just 0)
(cpclton, cpclton_p) = pF "synth2" (Just 0)
(cpclnod, cpclnod_p) = pF "synth3" (Just 0)
(cpclnum, cpclnum_p) = pF "synth4" (Just 0)
(cpclrat, cpclrat_p) = pF "synth5" (Just 0)
(cpclnol, cpclnol_p) = pF "synth6" (Just 0)
(cpclrnd, cpclrnd_p) = pF "synth7" (Just 0)
(cpclcpd, cpclcpd_p) = pF "synth8" (Just 0)

--BT classic
(btcllev, btcllev_p) = pF "synth1" (Just 0)
(btcltun, btcltun_p) = pF "synth2" (Just 0)
(btcldec, btcldec_p) = pF "synth3" (Just 0)
(btclsnp, btclsnp_p) = pF "synth6" (Just 0)
(btclnol, btclnol_p) = pF "synth5" (Just 0)

--XT classic
(xtcllev, xtcllev_p) = pF "synth1" (Just 0)
(xtcltun, xtcltun_p) = pF "synth2" (Just 0)
(xtclswt, xtclswt_p) = pF "synth5" (Just 0)
(xtclswd, xtclswd_p) = pF "synth4" (Just 0)
(xtcldec, xtcldec_p) = pF "synth3" (Just 0)
(xtclton, xtclton_p) = pF "synth8" (Just 0)
(xtclnod, xtclnod_p) = pF "synth6" (Just 0)
(xtclnol, xtclnol_p) = pF "synth7" (Just 0)

--CH classic
(chcllev, chcllev_p) = pF "synth1" (Just 0)
(chcltun, chcltun_p) = pF "synth2" (Just 0)
(chcldec, chcldec_p) = pF "synth3" (Just 0)
(chclcol, chclcol_p) = pF "synth4" (Just 0)

--CH metallic
(chmtlev, chmtlev_p) = pF "synth1" (Just 0)
(chmttun, chmttun_p) = pF "synth2" (Just 0)
(chmtdec, chmtdec_p) = pF "synth3" (Just 0)

--0H classic
(ohcllev, ohcllev_p) = pF "synth1" (Just 0)
(ohcltun, ohcltun_p) = pF "synth2" (Just 0)
(ohcldec, ohcldec_p) = pF "synth3" (Just 0)
(ohclcol, ohclcol_p) = pF "synth4" (Just 0)

--OH metallic
(ohmtlev, ohmtlev_p) = pF "synth1" (Just 0)
(ohmttun, ohmttun_p) = pF "synth2" (Just 0)
(ohmtdec, ohmtdec_p) = pF "synth3" (Just 0)

--HH basic
(hhbalev, hhbalev_p) = pF "synth1" (Just 0)
(hhbatun, hhbatun_p) = pF "synth2" (Just 0)
(hhbaton, hhbaton_p) = pF "synth4" (Just 0)
(hhbatrd, hhbatrd_p) = pF "synth5" (Just 0)
(hhbadec, hhbadec_p) = pF "synth3" (Just 0)
(hhbarst, hhbarst_p) = pF "synth6" (Just 0)

--CY classic
(cycllev, cycllev_p) = pF "synth1" (Just 0)
(cycltun, cycltun_p) = pF "synth2" (Just 0)
(cyclton, cyclton_p) = pF "synth5" (Just 0)
(cycldec, cycldec_p) = pF "synth3" (Just 0)
(cyclcol, cyclcol_p) = pF "synth4" (Just 0)

--CY metallic
(cymtlev, cymtlev_p) = pF "synth1" (Just 0)
(cymttun, cymttun_p) = pF "synth2" (Just 0)
(cymtton, cymtton_p) = pF "synth4" (Just 0)
(cymttrd, cymttrd_p) = pF "synth5" (Just 0)
(cymtdec, cymtdec_p) = pF "synth3" (Just 0)

--CY ride
(cyrdlev, cyrdlev_p) = pF "synth1" (Just 0)
(cyrdtun, cyrdtun_p) = pF "synth2" (Just 0)
(cyrdtyp, cyrdtyp_p) = pF "synth5" (Just 0)
(cyrdhit, cyrdhit_p) = pF "synth4" (Just 0)
(cyrddec, cyrddec_p) = pF "synth3" (Just 0)
(cyrdc1, cyrdc1_p) = pF "synth6" (Just 0)
(cyrdc2, cyrdc2_p) = pF "synth7" (Just 0)
(cyrdc3, cyrdc3_p) = pF "synth8" (Just 0)

--CB classic
(cbcllev, cbcllev_p) = pF "synth1" (Just 0)
(cbcltun, cbcltun_p) = pF "synth2" (Just 0)
(cbcldec, cbcldec_p) = pF "synth3" (Just 0)
(cbcldet, cbcldet_p) = pF "synth4" (Just 0)

--CB metallic
(cbmtlev, cbmtlev_p) = pF "synth1" (Just 0)
(cbmttun, cbmttun_p) = pF "synth2" (Just 0)
(cbmtdec, cbmtdec_p) = pF "synth3" (Just 0)
(cbmtdet, cbmtdet_p) = pF "synth4" (Just 0)

--noise GEN
(noislev, noislev_p) = pF "synth1" (Just 0)
(noislpf, noislpf_p) = pF "synth2" (Just 0)
(noislpq, noislpq_p) = pF "synth6" (Just 0)
(noisatk, noisatk_p) = pF "synth8" (Just 0)
(noisdec, noisdec_p) = pF "synth3" (Just 0)
(noishpf, noishpf_p) = pF "synth7" (Just 0)
(noisswd, noisswd_p) = pF "synth4" (Just 0)
(noisswt, noisswt_p) = pF "synth5" (Just 0)

--impulse
(pulslev, pulslev_p) = pF "synth1" (Just 0)
(pulsatk, pulsatk_p) = pF "synth2" (Just 0)
(pulsdec, pulsdec_p) = pF "synth3" (Just 0)
(pulspol, pulspol_p) = pF "synth4" (Just 0)

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

-- distortion params (only used on FX MIDI channel)
(distamt, distamt_p)       = pF "filtatk" (Just 0)
(distsym, distsym_p)       = pF "filtdec" (Just 0)
(distdov, distdov_p)       = pF "filtsus" (Just 0)
(distdel, distdel_p)       = pF "filttyp" (Just 0)
(distrev, distrev_p)       = pF "filtenv" (Just 0)

-- compressor params (only used on FX MIDI channel)
(compthr, compthr_p)       = pF "ampatk" (Just 0)
(compatk, compatk_p)       = pF "amphld" (Just 0)
(comprel, comprel_p)       = pF "ampdec" (Just 0)
(compmup, compmup_p)       = pF "ampovr" (Just 0)
(comprat, comprat_p)       = pF "ampdel" (Just 0)
(compseq, compseq_p)       = pF "amprev" (Just 0)
(compmix, compmix_p)       = pF "oscsnc" (Just 0)
(compvol, compvol_p)       = pF "oscbnd" (Just 0)

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

--lfo
(lfospd, lfospd_p)       = pF "flt1dep" (Just 0)
(lfomul, lfomul_p)       = pF "flt2dep" (Just 0)
(lfofad, lfofad_p)       = pF "amp_atk" (Just 0)
(lfodst, lfodst_p)       = pF "amp_dec" (Just 0)
(lfowav, lfowav_p)       = pF "amp_sus" (Just 0)
(lfosph, lfosph_p)       = pF "amp_rel" (Just 0)
(lfomod, lfomod_p)       = pF "envfatk" (Just 0)
(lfodep, lfodep_p)       = pF "envfdec" (Just 0)


-- Analog Four params
(perfa, perfa_p) = pF "perfa" (Just 0)
(perfb, perfb_p) = pF "perfb" (Just 0)
(perfc, perfc_p) = pF "perfc" (Just 0)
(perfd, perfd_p) = pF "perfd" (Just 0)
(perfe, perfe_p) = pF "perfe" (Just 0)
(perff, perff_p) = pF "perff" (Just 0)
(perfg, perfg_p) = pF "perfg" (Just 0)
(perfh, perfh_p) = pF "perfh" (Just 0)
(perfi, perfi_p) = pF "perfi" (Just 0)
(perfj, perfj_p) = pF "perfj" (Just 0)

(osc1tun, osc1tun_p) = pF "osc1tun" (Just 0)
(osc1det, osc1det_p) = pF "osc1det" (Just 0)
(osc1trk, osc1trk_p) = pF "osc1trk" (Just 0)
(osc1lev, osc1lev_p) = pF "osc1lev" (Just 0)
(osc1wav, osc1wav_p) = pF "osc1wav" (Just 0)
(osc1sub, osc1sub_p) = pF "osc1sub" (Just 0)
(osc1pw, osc1pw_p) = pF "osc1pw" (Just 0)
(osc1spd, osc1spd_p) = pF "osc1spd" (Just 0)
(osc1pwm, osc1pwm_p) = pF "osc1pwm" (Just 0)

(noissah, noissah_p) = pF "noissah" (Just 0)
(noisfad, noisfad_p) = pF "noisfad" (Just 0)
(noislevel, noislevel_p) = pF "noislev" (Just 0)

(osc2tun, osc2tun_p) = pF "osc2tun" (Just 0)
(osc2lev, osc2lev_p) = pF "osc2lev" (Just 0)
(osc2wav, osc2wav_p) = pF "osc2wav" (Just 0)
(osc2sub, osc2sub_p) = pF "osc2sub" (Just 0)
(osc2pw, osc2pw_p) = pF "osc2pw" (Just 0)
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

(amp_atk, amp_atk_p) = pF "amp_atk" (Just 0)
(amp_dec, amp_dec_p) = pF "amp_dec" (Just 0)
(amp_sus, amp_sus_p) = pF "amp_sus" (Just 0)
(amp_rel, amp_rel_p) = pF "amp_rel" (Just 0)
(amp_cho, amp_cho_p) = pF "amp_cho" (Just 0)
(amp_del, amp_del_p) = pF "amp_del" (Just 0)
(amp_rev, amp_rev_p) = pF "amp_rev" (Just 0)
(amp_pan, amp_pan_p) = pF "amp_pan" (Just 0)
(amp_vol, amp_vol_p) = pF "amp_vol" (Just 0)

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
