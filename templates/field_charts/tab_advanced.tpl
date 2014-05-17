  <input type="hidden" id="vis_id" value="{$vis_id}" />

  <div class="subtitle underline margin_top_large">{$L.phrase_pages_module|upper}</div>

  {include file="messages.tpl"}

  {if $pages_module_available}
    <div class="margin_bottom_large">
      {$L.text_pages_module_intro}
    </div>

    <div class="grey_box margin_bottom_large">
      <div class="margin_bottom bold">{$L.phrase_smarty_pages}</div>
      <input type="text" style="width: 99%" class="medium_grey"
        value="{literal}{{/literal}template_hook location=&quot;data_visualization&quot; vis_id={$vis_id} height=300 width=600{literal}}{/literal}" />
    </div>

    <div class="grey_box margin_bottom_large">
      <div class="margin_bottom bold">{$L.phrase_php_pages}</div>
      <textarea class="medium_grey" style="width:99%; height: 100px">ft_include_module("data_visualization");
$width  = 600;
$height = 300;
dv_display_visualization(1, $width, $height);</textarea>
    </div>

    <div>
      <input type="submit" value="{$L.phrase_create_page_add_menu_item}" id="add_to_menu" />
      <span class="light_grey">|</span> <a href="../../pages/">{$L.phrase_goto_pages_module}</a>
      <span class="light_grey">|</span> <a href="../../../admin/settings/index.php?page=menus">{$L.phrase_goto_menus_page}</a>
    </div>
    <br />

  {else}
    <div class="notify">
      <div style="padding:6px">
        {$L.notify_pages_module_not_installed}
      </div>
    </div>
  {/if}

  <div class="subtitle underline margin_bottom_large margin_top_large">{$L.phrase_use_in_own_pages|upper}</div>

  <div class="margin_bottom_large">
    {$L.text_use_in_pages_desc}
  </div>

  <textarea style="width:100%; height: 150px" class="medium_grey">&lt;?php
require_once('{$g_root_dir}/global/library.php');
ft_include_module("data_visualization");
$width  = 600;
$height = 300;
dv_display_visualization({$vis_id}, $width, $height);
?></textarea>

  <p>
    <input type="button" id="delete_visualization" value="{$L.phrase_delete_visualization}" class="burgundy right" />
  </p>
  <div class="clear"></div>

<div id="add_to_menu_dialog" class="hidden">
  <div class="margin_bottom_large">
    {$L.text_create_page_desc}
  </div>

  <table width="100%">
  <tr>
    <td width="160" class="medium_grey">{$L.phrase_page_menu_title}</td>
    <td>
      <input type="text" style="width: 100%" id="page_title" value="{$vis_info.vis_name|escape}" />
    </td>
  </tr>
  <tr>
    <td valign="top" class="medium_grey">Menu</td>
    <td>{menus_dropdown name_id="menu_id"}</td>
  </tr>
  <tr>
    <td class="medium_grey">{$L.word_position}</td>
    <td>
      <div id="position_div" class="medium_grey">{$L.phrase_please_select_menu}</div>
    </td>
  </tr>
  <tr>
    <td class="medium_grey">{$L.phrase_submenu_item}</td>
    <td>
      <input type="radio" name="is_submenu" id="is1" value="yes" />
        <label for="is1">{$LANG.word_yes}</label>
      <input type="radio" name="is_submenu" id="is2" value="no" checked />
        <label for="is2">{$LANG.word_no}</label>
    </td>
  </tr>
  </table>

</div>