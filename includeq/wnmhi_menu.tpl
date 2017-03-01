<link rel="stylesheet" type="text/css" href="<{xoImgUrl css/ddsmoothmenu.css}>" />
<!--若有引入tadtools中的jquery則此行不需再引入，否則可能導致版本相沖
<script type="text/javascript" src="<{xoImgUrl js/jquery.min.js}>"></script>
-->
<script type="text/javascript" src="<{xoImgUrl js/ddsmoothmenu.js}>"></script>

<script type="text/javascript">

ddsmoothmenu.init({
  mainmenuid: "templatemo_menu", //menu DIV id
  orientation: 'h', //Horizontal or vertical menu: Set to "h" or "v"
  classname: 'ddsmoothmenu', //class added to menu's outer DIV
  //customtheme: ["#1c5a80", "#18374a"],
  contentsource: "markup" //"markup" or ["container_id", "path_to_menu_file"]
})

</script>
<div id="templatemo_menu" class="ddsmoothmenu" <{if $menu_pin=="1"}>style="position:absolute;z-index:10;"<{/if}>>
  <ul>
    <li>
      <a class="selected" href='<{$xoops_url}>/index.php' title='<{$smarty.const.THEME_HOME}>'><span><i class="icon-home"></i></span></a>
    </li>

          <{foreach from=$menu_var item=wnmhi}>
            <li>
             <a href="<{$wnmhi.url}>"><i class="fa <{$wnmhi.icon}>"></i><{$wnmhi.title}></a>
                <{if $wnmhi.submenu}>
                  <ul>
                    <{foreach from=$wnmhi.submenu item=wnmhi1}>
                      <li>
                       <a href="<{$wnmhi1.url}>"><i class="fa <{$wnmhi1.icon}>"></i><{$wnmhi1.title}></a>
                         <{if $wnmhi1.submenu}>
                          <ul>
                           <{foreach from=$wnmhi1.submenu item=wnmhi2}>
                            <li>
                             <a href="<{$wnmhi2.url}>"><i class="fa <{$wnmhi2.icon}>"></i><{$wnmhi2.title}></a>
                            </li>
                           <{/foreach}>
                          </ul>
                         <{/if}>
                      </li>
                    <{/foreach}>
                  </ul>
                <{/if}>
            </li>
          <{/foreach}>
          <{if $xoops_isadmin}>
           <li>
               <a href='<{$xoops_url}>/admin.php' title='<{$smarty.const.WNMHI_USER_ADMIN}>'><span><i class="icon-th-large"></i></span></a>
           </li>
          <{/if}>
          <{if $menu_var_kind=="all"}>
             <{if !$xoops_isuser}>
                 <li>
                  <a href='<{$xoops_url}>/user.php'><span><{$smarty.const.WMNHI_LOGIN}></span></a>
                 </li>
             <{/if}>
          <{else}>
             <{if $xoops_isadmin || $xoops_isuser}>
               <li><a><{$smarty.const.WMNHI_USER_WELCOME}></a>
                    <ul>
                      <li>
                        <a rel='tooltip' href='<{$xoops_url}>/modules/system/admin.php?fct=preferences&op=show&confcat_id=1' title=' <{$smarty.const.WMNHI_SYSTEM_CONFIG}>'>
                          <span><i class="icon-cog"></i>
                          <{$smarty.const.WMNHI_SYSTEM_CONFIG}></span>
                        </a>
                      </li>

                      <li>
                        <a rel='tooltip' href='<{$xoops_url}>/modules/tad_adm/admin/main.php' title='<{$smarty.const.WMNHI_SYSTEM_MODADM}>'>
                          <span><i class="icon-wrench"></i>
                          <{$smarty.const.WMNHI_SYSTEM_MODADM}></span>
                        </a>
                      </li>

                      <li>
                        <a href='<{$xoops_url}>/modules/tad_themes/admin/main.php'>
                          <span><i class="icon-list-alt"></i>
                          <{$smarty.const.WMNHI_THEME_ADMIN}></span>
                        </a>
                      </li>

                      <li>
                        <a href='<{$xoops_url}>/modules/tadtools/themes_common/tools/debug.php?op=debug&v=0'>
                          <span><i class="icon-warning-sign"></i>
                          <{$smarty.const.WMNHI_THEME_UNDEBUG}></span>
                        </a>
                      </li>

                      <li>
                        <a href='<{$xoops_url}>/modules/system/admin.php?fct=blocksadmin'>
                          <span><i class="icon-th"></i>
                          <{$smarty.const.WMNHI_USER_BLOCK}></span>
                        </a>
                      </li>

                      <li>
                        <a href='<{$xoops_url}>/viewpmsg.php'>
                          <span><i class="icon-envelope"></i>
                          <{$smarty.const.WMNHI_USER_NEWMSG}></span>
                        </a>
                      </li>

                      <li>
                        <a href='<{$xoops_url}>/notifications.php'>
                          <span><i class="icon-info-sign"></i>
                          <{$smarty.const.WMNHI_USER_NOTICE}></span>
                        </a>
                      </li>

                      <li>
                        <a href='<{$xoops_url}>/user.php'>
                          <span><i class="icon-user"></i>
                          <{$smarty.const.WMNHI_USER}></span>
                        </a>
                      </li>

                      <li>
                        <a href="<{$xoops_url}>/user.php?op=logout">
                          <span><i class="icon-share"></i>
                          <{$smarty.const.WMNHI_LOGOUT}></span>
                        </a>
                      </li>

                    </ul>
                   </li>
             <{else}>
                     <li>
                      <a href='<{$xoops_url}>/user.php'><span><{$smarty.const.WMNHI_LOGIN}></span></a>
                     </li>
             <{/if}>
          <{/if}>
  </ul>
  <br style="clear: left" />
</div> <!-- end of templatemo_menu -->

<{if $menu_pin=="1"}>
  <script type="text/javascript" src="<{xoAppUrl modules/tadtools/jquery.pin/jquery.pin.js}>"></script>
  <script type="text/javascript">
    $(document).ready(function(){
      $("#templatemo_menu").pin({
        containerSelector: "#templatemo_pin" , minWidth: 940
      });
    });
  </script>
<{/if}>