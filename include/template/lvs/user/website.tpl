<{include file="header.tpl" }>
<{include file="navibar.tpl" }>
<{include file="sidebar.tpl" }>
<!-- START 以上内容不需更改，保证该TPL页内的标签匹配即可 -->

<{$osadmin_action_alert}>
<{$osadmin_quick_note}>

<div class="btn-toolbar" style="margin-bottom:2px;">
  <a href="website_add.php" class="btn btn-primary"><i class="icon-plus"></i> 平台</a>
  <a href="website_ip.php" class="btn btn-primary"><i class="icon-th-list"></i> 平台IP管理</a>
</div>

<div class="block">
  <a href="#page-stats" class="block-heading" data-toggle="collapse">平台列表</a>
  <div id="page-stats" class="block-body collapse in">
  <table class="table table-striped">
    <thead>
      <tr>
        <th style="width:120px">平台名称</th>
        <th style="width:120px">平台缩写</th>
        <th style="width:120px">备注</th>
        <th style="width:80px">操作</th>
      </tr>
    </thead>
    <tbody>
      <{foreach name=website from=$website_list item=website}>
      <tr>
        <td><{$website.website_name}></td>
        <td><{$website.website_short_name}></td>
        <td><{$website.remark}></td>
        <td>
          <a href="website_modify.php?website_id=<{$website.website_id}>" title= "修改" ><i class="icon-pencil"></i></a>
          <a data-toggle="modal" href="#myModal" title= "删除" ><i class="icon-remove" href="website_delete.php?website_id=<{$website.website_id}>" ></i></a>
        </td>
      </tr>
      <{/foreach}>
    </tbody>
  </table>
  </div>
</div>

<!-- 操作的确认层，相当于javascript:confirm函数 -->
<{$osadmin_action_confirm}>

<!-- END 以下内容不需更改，请保证该TPL页内的标签匹配即可 -->
<{include file="footer.tpl" }>
