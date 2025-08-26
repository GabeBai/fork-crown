fn u8next_(txt: *const u8, ch: &mut i32) -> i32 {
    let mut len = 0;
    let mut s = txt;
    let first = unsafe { *s };
    let mut val = 0;
    if first != 0 {
        val = first as i32;
        'fsm_state_start: loop {
            if unsafe { *s } < 0x80 {
                len = 1;
                break 'fsm_state_start;
            }
            if unsafe { *s } == 0xC0 {
                len = 2;
                'fsm_state_null: loop {
                    val = 0;
                    s = unsafe { s.add(1) };
                    if unsafe { *s } != 0x80 {
                        len = -1;
                        break 'fsm_state_start;
                    }
                    break 'fsm_state_start;
                }
            }
            if unsafe { *s } <= 0xC1 {
                len = -1;
                break 'fsm_state_start;
            }
            if unsafe { *s } <= 0xDF {
                val &= 0x1F;
                len = 2;
                'fsm_state_len2_0: loop {
                    s = unsafe { s.add(1) };
                    if unsafe { *s } < 0x80 || 0xBF < unsafe { *s } {
                        len = -1;
                        break 'fsm_state_start;
                    }
                    val = (val << 6) | (unsafe { *s } & 0x3F) as i32;
                    break 'fsm_state_start;
                }
            }
            if unsafe { *s } == 0xE0 {
                val &= 0x0F;
                len = 3;
                'fsm_state_len3_0: loop {
                    s = unsafe { s.add(1) };
                    if unsafe { *s } < 0xA0 || 0xBF < unsafe { *s } {
                        len = -1;
                        break 'fsm_state_start;
                    }
                    'fsm_state_len3: loop {
                        val = (val << 6) | (unsafe { *s } & 0x3F) as i32;
                        'fsm_state_len2_0: loop {
                            s = unsafe { s.add(1) };
                            if unsafe { *s } < 0x80 || 0xBF < unsafe { *s } {
                                len = -1;
                                break 'fsm_state_start;
                            }
                            val = (val << 6) | (unsafe { *s } & 0x3F) as i32;
                            break 'fsm_state_start;
                        }
                    }
                }
            }
            if unsafe { *s } <= 0xEC {
                val &= 0x0F;
                len = 3;
                'fsm_state_len3_1: loop {
                    s = unsafe { s.add(1) };
                    if unsafe { *s } < 0x80 || 0xBF < unsafe { *s } {
                        len = -1;
                        break 'fsm_state_start;
                    }
                    'fsm_state_len3: loop {
                        val = (val << 6) | (unsafe { *s } & 0x3F) as i32;
                        'fsm_state_len2_0: loop {
                            s = unsafe { s.add(1) };
                            if unsafe { *s } < 0x80 || 0xBF < unsafe { *s } {
                                len = -1;
                                break 'fsm_state_start;
                            }
                            val = (val << 6) | (unsafe { *s } & 0x3F) as i32;
                            break 'fsm_state_start;
                        }
                    }
                }
            }
            if unsafe { *s } == 0xED {
                val &= 0x0F;
                len = 3;
                'fsm_state_len3_2: loop {
                    s = unsafe { s.add(1) };
                    if unsafe { *s } < 0x80 || 0x9F < unsafe { *s } {
                        len = -1;
                        break 'fsm_state_start;
                    }
                    'fsm_state_len3: loop {
                        val = (val << 6) | (unsafe { *s } & 0x3F) as i32;
                        'fsm_state_len2_0: loop {
                            s = unsafe { s.add(1) };
                            if unsafe { *s } < 0x80 || 0xBF < unsafe { *s } {
                                len = -1;
                                break 'fsm_state_start;
                            }
                            val = (val << 6) | (unsafe { *s } & 0x3F) as i32;
                            break 'fsm_state_start;
                        }
                    }
                }
            }
            if unsafe { *s } <= 0xEF {
                val &= 0x0F;
                len = 3;
                'fsm_state_len3_1: loop {
                    s = unsafe { s.add(1) };
                    if unsafe { *s } < 0x80 || 0xBF < unsafe { *s } {
                        len = -1;
                        break 'fsm_state_start;
                    }
                    'fsm_state_len3: loop {
                        val = (val << 6) | (unsafe { *s } & 0x3F) as i32;
                        'fsm_state_len2_0: loop {
                            s = unsafe { s.add(1) };
                            if unsafe { *s } < 0x80 || 0xBF < unsafe { *s } {
                                len = -1;
                                break 'fsm_state_start;
                            }
                            val = (val << 6) | (unsafe { *s } & 0x3F) as i32;
                            break 'fsm_state_start;
                        }
                    }
                }
            }
            if unsafe { *s } == 0xF0 {
                val &= 0x07;
                len = 4;
                'fsm_state_len4_0: loop {
                    s = unsafe { s.add(1) };
                    if unsafe { *s } < 0x90 || 0xBF < unsafe { *s } {
                        len = -1;
                        break 'fsm_state_start;
                    }
                    'fsm_state_len4: loop {
                        val = (val << 6) | (unsafe { *s } & 0x3F) as i32;
                        'fsm_state_len3_1: loop {
                            s = unsafe { s.add(1) };
                            if unsafe { *s } < 0x80 || 0xBF < unsafe { *s } {
                                len = -1;
                                break 'fsm_state_start;
                            }
                            'fsm_state_len3: loop {
                                val = (val << 6) | (unsafe { *s } & 0x3F) as i32;
                                'fsm_state_len2_0: loop {
                                    s = unsafe { s.add(1) };
                                    if unsafe { *s } < 0x80 || 0xBF < unsafe { *s } {
                                        len = -1;
                                        break 'fsm_state_start;
                                    }
                                    val = (val << 6) | (unsafe { *s } & 0x3F) as i32;
                                    break 'fsm_state_start;
                                }
                            }
                        }
                    }
                }
            }
            if unsafe { *s } <= 0xF3 {
                val &= 0x07;
                len = 4;
                'fsm_state_len4_1: loop {
                    s = unsafe { s.add(1) };
                    if unsafe { *s } < 0x80 || 0xBF < unsafe { *s } {
                        len = -1;
                        break 'fsm_state_start;
                    }
                    'fsm_state_len4: loop {
                        val = (val << 6) | (unsafe { *s } & 0x3F) as i32;
                        'fsm_state_len3_1: loop {
                            s = unsafe { s.add(1) };
                            if unsafe { *s } < 0x80 || 0xBF < unsafe { *s } {
                                len = -1;
                                break 'fsm_state_start;
                            }
                            'fsm_state_len3: loop {
                                val = (val << 6) | (unsafe { *s } & 0x3F) as i32;
                                'fsm_state_len2_0: loop {
                                    s = unsafe { s.add(1) };
                                    if unsafe { *s } < 0x80 || 0xBF < unsafe { *s } {
                                        len = -1;
                                        break 'fsm_state_start;
                                    }
                                    val = (val << 6) | (unsafe { *s } & 0x3F) as i32;
                                    break 'fsm_state_start;
                                }
                            }
                        }
                    }
                }
            }
            if unsafe { *s } == 0xF4 {
                val &= 0x07;
                len = 4;
                'fsm_state_len4_2: loop {
                    s = unsafe { s.add(1) };
                    if unsafe { *s } < 0x80 || 0x8F < unsafe { *s } {
                        len = -1;
                        break 'fsm_state_start;
                    }
                    'fsm_state_len4: loop {
                        val = (val << 6) | (unsafe { *s } & 0x3F) as i32;
                        'fsm_state_len3_1: loop {
                            s = unsafe { s.add(1) };
                            if unsafe { *s } < 0x80 || 0xBF < unsafe { *s } {
                                len = -1;
                                break 'fsm_state_start;
                            }
                            'fsm_state_len3: loop {
                                val = (val << 6) | (unsafe { *s } & 0x3F) as i32;
                                'fsm_state_len2_0: loop {
                                    s = unsafe { s.add(1) };
                                    if unsafe { *s } < 0x80 || 0xBF < unsafe { *s } {
                                        len = -1;
                                        break 'fsm_state_start;
                                    }
                                    val = (val << 6) | (unsafe { *s } & 0x3F) as i32;
                                    break 'fsm_state_start;
                                }
                            }
                        }
                    }
                }
            }
            len = -1;
            break 'fsm_state_start;
        }
    }
    *ch = val;
    len
}
