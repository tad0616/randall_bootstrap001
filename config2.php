<?php
$i                           = 0;
$theme_config[$i]['name']    = "show_var";
$theme_config[$i]['text']    = TF_SHOW_VAR;
$theme_config[$i]['desc']    = TF_SHOW_VAR_DESC;
$theme_config[$i]['type']    = "yesno";
$theme_config[$i]['default'] = "0";

//頁首內容樣式設定
$i++;
$theme_config[$i]['name']    = "menu_pin";
$theme_config[$i]['text']    = TF_MENU_PIN;
$theme_config[$i]['desc']    = TF_MENU_PIN_DESC;
$theme_config[$i]['type']    = "yesno";
$theme_config[$i]['default'] = "0";

//頁首內容樣式設定
$i++;
$theme_config[$i]['name']    = "header_style";
$theme_config[$i]['text']    = TF_HEADER_STYLE;
$theme_config[$i]['desc']    = TF_HEADER_STYLE_DESC;
$theme_config[$i]['type']    = "textarea";
$theme_config[$i]['default'] = "font-size:5em;line-height:120%;text-align:center;position:absolute;z-index:10;";

//字型設定
$i++;
$theme_config[$i]['name']    = "font_family";
$theme_config[$i]['text']    = TF_FONT_FAMILY;
$theme_config[$i]['desc']    = TF_FONT_FAMILY_DESC;
$theme_config[$i]['type']    = "text";
$theme_config[$i]['default'] = constant('TF_FONT_FAMILY_DEFAULT');

//中間資訊列設定
$i++;
$theme_config[$i]['name']    = "font_slogan";
$theme_config[$i]['text']    = TF_FONT_SLOGAN;
$theme_config[$i]['desc']    = TF_FONT_SLOGAN_DESC;
$theme_config[$i]['type']    = "text";
$theme_config[$i]['default'] = constant('TF_FONT_SLOGAN_DEFAULT');

//頁尾底色
$i++;
$theme_config[$i]['name']    = "footer_bgcolor";
$theme_config[$i]['text']    = TF_FOOTER_BGCOLOR;
$theme_config[$i]['desc']    = TF_FOOTER_BGCOLOR_DESC;
$theme_config[$i]['type']    = "color";
$theme_config[$i]['default'] = "#696969";

//頁尾底圖
/*$i++;
$theme_config[$i]['name']="footer_img";
$theme_config[$i]['text']=TF_FOOTER_IMG;
$theme_config[$i]['desc']=TF_FOOTER_IMG_DESC;
$theme_config[$i]['type']="file";
$theme_config[$i]['default']=XOOPS_URL."/themes/school2014/images/foot.jpg";*/

//頁尾內容樣式設定
$i++;
$theme_config[$i]['name']    = "footer_style";
$theme_config[$i]['text']    = TF_FOOTER_STYLE;
$theme_config[$i]['desc']    = TF_FOOTER_STYLE_DESC;
$theme_config[$i]['type']    = "textarea";
$theme_config[$i]['default'] = "line-height:180%;text-align:center;font-size:1em;";

//頂頭選單陣列
/*$i++;
$theme_config[$i]['name']="topmenu";
$theme_config[$i]['text']=TF_TOPMENU;
$theme_config[$i]['desc']=TF_TOPMENU_DESC;
$theme_config[$i]['type']="array";
$theme_config[$i]['default']=constant('TF_TOPMENU_DEFAULT');*/
