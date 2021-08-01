var characters = [
    host+"/api/Live2D/default/haru/LAppDefine.js",
    host+"/api/Live2D/default/Epsilon/LAppDefine.js",
    host+"/api/Live2D/default/katou/LAppDefine.js",
    host+"/api/Live2D/default/Liang/LAppDefine.js",
    host+"/api/Live2D/default/Pio/LAppDefine.js",
    host+"/api/Live2D/default/rem/LAppDefine.js",
    host+"/api/Live2D/default/Sagiri/LAppDefine.js",
    host+"/api/Live2D/default/Shizuku/LAppDefine.js",
    host+"/api/Live2D/default/wanko/LAppDefine.js",
    host+"/api/Live2D/default/xiaomai/LAppDefine.js",
    host+"/api/Live2D/shiwuyu/100005_lonjingxiaren/LAppDefine.js",
    host+"/api/Live2D/shiwuyu/100034_baozaifan/LAppDefine.js",
    host+"/api/Live2D/shiwuyu/100025_guobaorou/LAppDefine.js",
    host+"/api/Live2D/shiwuyu/100009_jiaozi/LAppDefine.js",
    host+"/api/Live2D/shiwuyu/100036_tangyuan/LAppDefine.js",
    host+"/api/Live2D/shiwuyu/100007_fotiaoqiang/LAppDefine.js",
    host+"/api/Live2D/shiwuyu/100026_yipinguo/LAppDefine.js",
    host+"/api/Live2D/shiwuyu/100062_zty/LAppDefine.js",
    host+"/api/Live2D/shiwuyu/100071_tby/LAppDefine.js",
    host+"/api/Live2D/shiwuyu/100068_sxtgy/LAppDefine.js",
    host+"/api/Live2D/shiwuyu/100016_xiajiao/LAppDefine.js",
    host+"/api/Live2D/shiwuyu/150015_jrjss_czjl/LAppDefine.js",
    host+"/api/Live2D/shiwuyu/150031_jrjss_qy/LAppDefine.js",
    host+"/api/Live2D/shiwuyu/150003_gbr_fhlf/LAppDefine.js",
    host+"/api/Live2D/shiwuyu/100012_dezhoupaji/LAppDefine.js",
    host+"/api/Live2D/shiwuyu/100022_beijingkaoya/LAppDefine.js",
    host+"/api/Live2D/shiwuyu/100059_longxusu/LAppDefine.js",
    host+"/api/Live2D/shiwuyu/100035_yangzhouchaofan/LAppDefine.js",
    host+"/api/Live2D/shiwuyu/100047_kaishuibaicai/LAppDefine.js",
    host+"/api/Live2D/shiwuyu/100001_hugeng/LAppDefine.js",
    host+"/api/Live2D/shiwuyu/100106_rgm/LAppDefine.js",
    host+"/api/Live2D/shiwuyu/100053_congshaohaishen/LAppDefine.js",
    host+"/api/Live2D/shiwuyu/100051_shiliyinxing/LAppDefine.js",
    host+"/api/Live2D/shiwuyu/100088_tsj/LAppDefine.js",
    host+"/api/Live2D/shiwuyu/100048_lianhuaxueya/LAppDefine.js",
    host+"/api/Live2D/shiwuyu/100109_xjg/LAppDefine.js",
    host+"/api/Live2D/shiwuyu/100006_qingtuan/LAppDefine.js",
    host+"/api/Live2D/shiwuyu/100072_sxzj/LAppDefine.js",
    host+"/api/Live2D/shiwuyu/100037_pianchuan/LAppDefine.js",
    host+"/api/Live2D/shiwuyu/100112_xhcct/LAppDefine.js",
    host+"/api/Live2D/shiwuyu/100019_zongzi/LAppDefine.js",
    host+"/api/Live2D/shiwuyu/100058_maoerduo/LAppDefine.js",
    host+"/api/Live2D/shiwuyu/100043_songshuguiyu(wumianju)/LAppDefine.js",
    host+"/api/Live2D/shiwuyu/150020_ssgy_cywy/LAppDefine.js",
    host+"/api/Live2D/shiwuyu/100045_bawangbieji/LAppDefine.js",
    host+"/api/Live2D/shiwuyu/100024_yuxiangrousi/LAppDefine.js",
    host+"/api/Live2D/shiwuyu/100027_gonbaojiding/LAppDefine.js",
    host+"/api/Live2D/shiwuyu/100029_mapodoufu/LAppDefine.js",
    host+"/api/Live2D/shiwuyu/100078_cwhg/LAppDefine.js",
    host+"/api/Live2D/shiwuyu/100004_dengyingniurou/LAppDefine.js",
    host+"/api/Live2D/shiwuyu/100038_taijiyuni/LAppDefine.js",
    host+"/api/Live2D/shiwuyu/100069_dblz/LAppDefine.js",
    host+"/api/Live2D/shiwuyu/100115_lfp_feng/LAppDefine.js",
    host+"/api/Live2D/shiwuyu/100115_lfp_feng_2/LAppDefine.js",
    host+"/api/Live2D/shiwuyu/100115_lfp_long/LAppDefine.js",
    host+"/api/Live2D/shiwuyu/100039_bingtanghulu/LAppDefine.js",
    host+"/api/Live2D/shiwuyu/100023_fulijishaoji/LAppDefine.js",
    host+"/api/Live2D/shiwuyu/100018_danzaimian/LAppDefine.js",
    host+"/api/Live2D/shiwuyu/100003_sixiwangzi/LAppDefine.js",
    host+"/api/Live2D/shiwuyu/100028_baxianguihainaoluohan/LAppDefine.js",
    host+"/api/Live2D/shiwuyu/100008_jiaohuaji/LAppDefine.js",
];
function tellMoe(Moc) {
    switch (Moc) {
        case "Haru":
        case "#01001":
            return characters[0];
             break;
        case "Epsilon":
        case "#01002":
            return characters[1];
             break;
        case "Katou":
        case "#01003":
            return characters[2];
             break;
        case "Liang":
        case "#01004":
            return characters[3];
             break;
        case "Pio":
        case "#01005":
            return characters[4];
             break;
        case "Remu":
        case "#01006":
            return characters[5];
             break;
        case "Sagiri":
        case "#01007":
            return characters[6];
             break;
        case "Shizuku":
        case "#01008":
            return characters[7];
             break;
        case "Wanko":
        case "#01009":
            return characters[8];
             break;
        case "Xiaomai":
        case "#01010":
            return characters[9];
             break;
        case "Lonjingxiaren":
        case "#02001":
            return characters[10];
             break;
        case "Baozaifan":
        case "#02002":
            return characters[11];
             break;
        case "Guobaorou":
        case "#02003":
            return characters[12];
             break;
        case "Jiaozi":
        case "#02004":
            return characters[13];
             break;
        case "Tangyuan":
        case "#02005":
            return characters[14];
             break;
        case "Fotiaoqiang":
        case "#02006":
            return characters[15];
             break;
        case "Yipinguo":
        case "#02007":
            return characters[16];
             break;
        case "Zituiyan":
        case "#02008":
            return characters[17];
             break;
        case "Taibaiya":
        case "#02009":
            return characters[18];
             break;
        case "Sanxiantuoguyu":
        case "#02010":
            return characters[19];
             break;
        case "Xiajiao":
        case "#02011":
            return characters[20];
             break;
        case "Jirongjinsisun_chizhongjinlin":
        case "#02012":
            return characters[21];
             break;
        case "Jirongjinsisun":
        case "#02013":
            return characters[22];
             break;
        case "Guobaorou_feihulifeng":
        case "#02014":
            return characters[23];
             break;
        case "Dezhoupaji":
        case "#02015":
            return characters[24];
             break;
        case "Beijingkaoya":
        case "#02016":
            return characters[25];
             break;
        case "Longxusu":
        case "#02017":
            return characters[26];
             break;
        case "Yangzhouchaofan":
        case "#02018":
            return characters[27];
             break;
        case "Kaishuibaicai":
        case "#02019":
            return characters[28];
             break;
        case "Hugeng":
        case "#02020":
            return characters[29];
             break;
        case "Rgm":
        case "#02021":
            return characters[30];
             break;
        case "Congshaohaishen":
        case "#02022":
            return characters[31];
             break;
        case "Shiliyinxing":
        case "#02023":
            return characters[32];
             break;
        case "Tusujiu":
        case "#02024":
            return characters[33];
             break;
        case "Lianhuaxueya":
        case "#02025":
            return characters[34];
             break;
        case "Xuejigeng":
        case "#02026":
            return characters[35];
             break;
        case "Qingtuan":
        case "#02027":
            return characters[36];
             break;
        case "Shaoxingzuiji":
        case "#02028":
            return characters[37];
             break;
        case "Pianchuan":
        case "#02029":
            return characters[38];
             break;
        case "Xihuchuncaigeng":
        case "#02030":
            return characters[39];
             break;
        case "Zongzi":
        case "#02031":
            return characters[40];
             break;
        case "Maoerduo":
        case "#02032":
            return characters[41];
             break;
        case "Songshuguiyu":
        case "#02033":
            return characters[42];
             break;
        case "Songshuguiyu_cywy":
        case "#02034":
            return characters[43];
             break;
        case "Bawangbieji":
        case "#02035":
            return characters[44];
             break;
        case "Yuxiangrousi":
        case "#02036":
            return characters[45];
             break;
        case "Gongbaojiding":
        case "#02037":
            return characters[46];
             break;
        case "Mapodoufu":
        case "#02038":
            return characters[47];
             break;
        case "Chuanweihuoguo":
        case "#02039":
            return characters[48];
             break;
        case "Dengyingniurou":
        case "#02040":
            return characters[49];
             break;
        case "Taijiyuni":
        case "#02041":
            return characters[50];
             break;
        case "Dongbilongzhu":
        case "#02042":
            return characters[51];
             break;
        case "Longfengpei_feng":
        case "#02043":
            return characters[52];
             break;
        case "Longfengpei_feng_2":
        case "#02044":
            return characters[53];
             break;
        case "Longfengpei_long":
        case "#02045":
            return characters[54];
             break;
        case "Bingtanghulu":
        case "#02046":
            return characters[55];
             break;
        case "Fulijishaoji":
        case "#02047":
            return characters[56];
             break;
        case "Danzaimian":
        case "#02048":
            return characters[57];
             break;
        case "Sixiwangzi":
        case "#02049":
            return characters[58];
             break;
        case "Baxianguihainaoluohan":
        case "#02050":
            return characters[59];
             break;
        case "Jiaohuaji":
        case "#02051":
            return characters[60];
             break;
        default:
            return characters[0];
             break;
        };
};
function moeNum(Grp) {
	var moe_num = [];
    switch (Grp) {
        case "Default":
        case "#01":
            moe_num[0] = 0;
            moe_num[1] = 9;
            return moe_num;
             break;
        case "Shiwuyu":
        case "#02":
            moe_num[0] = 10;
            moe_num[1] = 60;
            return moe_num;
             break;
        default:
            moe_num[0] = 0;
            moe_num[1] = 9;
            return moe_num;
             break;
        };
};