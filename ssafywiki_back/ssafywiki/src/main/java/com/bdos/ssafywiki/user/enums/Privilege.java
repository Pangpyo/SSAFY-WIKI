package com.bdos.ssafywiki.user.enums;

public enum Privilege {
    READ_LV1,
    WRITE_LV1,
    UPDATE_LV1,

    READ_LV2,
    WRITE_LV2,
    UPDATE_LV2,
    DELETE,


    READ_LV3,
    WRITE_LV3,
    UPDATE_LV3,
    ;


    public static Privilege getOptionLv(char option, Long lv) {
        /*
        option : R, W, U
         */
        if(lv == 1) {
            if(option=='R') return READ_LV1;
            if(option=='U') return UPDATE_LV1;
            if(option=='W') return WRITE_LV1;
        }
        if(lv ==2) {
            if(option=='R') return READ_LV2;
            if(option=='U') return UPDATE_LV2;
            if(option=='W') return WRITE_LV2;
        }
        if(lv==3) {
            if(option=='R') return READ_LV3;
            if(option=='U') return UPDATE_LV3;
            if(option=='W') return WRITE_LV3;
        }
        return null;
    }
}
