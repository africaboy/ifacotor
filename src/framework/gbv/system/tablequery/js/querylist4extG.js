/**
 * 初始化对象数据信息在控制台tab页中
 * 
 * @param {}
 *            region 方位
 * @param {}
 *            key 查询key
 * @param {}
 *            func 查询成功后回调函数(开发者自定义)
 * @param {}
 *            _pageSize 列表信息数
 */
function initTQExtListG(key, func, _pageSize, tabparam, comptype) {
	var querykey = key;

	var queryParams;

	var pageSize = _pageSize ? _pageSize : 20;

	var l = document.location + '';

	var param = '';
	if (l.indexOf('?') > -1) {
		param = l.substring(l.indexOf('?') + 1);

		param.replace('querykey=' + querykey, '');
	}

	if (tabparam) {
		param += tabparam;
	}

	if (comptype == null) {
		comptype = 'TQExtGList';
	}

	var url = context + '/system/tablearg.do?method=modelcmp&querykey='
			+ querykey + '&comptype=' + comptype + '&' + param;

	var result = sendRequest(url);

	var json = Ext.util.JSON.decode(result);// 将字符串转换为json类型

	if (json.success) {
		if (json.success) {
			var title = json.title;

			var showchk = (json.showchk == 'true');

			var sm;
			if (showchk) {
				sm = new Ext.grid.CheckboxSelectionModel({
							handleMouseDown : Ext.emptyFn
						});
			}

			var cm;
			if (showchk) {
				var chkColumModel = [];
				chkColumModel.push(sm);

				Ext.each(json.columModel, function(item) {
							chkColumModel.push(item);
						});

				cm = new Ext.grid.ColumnModel(chkColumModel);
			} else {
				cm = new Ext.grid.ColumnModel(json.columModel);
			}

			gridCMMap.put(querykey, cm);

			var queryItems = json.queryCmp;

			gridQIMap.put(querykey, queryItems);

			var defaultToolbarMenus = [];

			if (queryItems.length > 0) {
				defaultToolbarMenus.push({
					iconCls : 'objqueryset',
					text : '<font class="oaFont">数据查询</font>',
					handler : function() {
						var queryForm = getQueryFormCmp(querykey, json.title,
								queryItems, queryParams);

						var queryWin = new Ext.Window({
							renderTo : Ext.getBody(),
							layout : 'fit',
							width : 450,
							height : 300,
							title : '<font class="oaFont">' + title
									+ '_查询</font>',
							resizable : true,
							plain : true,
							modal : true,

							items : [queryForm],

							buttons : [{
										id : 'objectQueryButton',
										text : '<font class="oaFont">查 询</font>',
										handler : function() {
											if (queryForm.form.isValid()) {
												initQueryTestParams(key,
														pageSize);

												var queryParams = getQueryParams(key);

												Ext.getCmp(key).getStore()
														.reload({
															params : queryParams
														});

												queryWin.close();
											}
										}
									}, {
										text : '<font class="oaFont">重 置</font>',
										handler : function() {
											queryForm.form.reset();
										}
									}, {
										text : '<font class="oaFont">关 闭</font>',
										handler : function() {
											queryWin.close();
										}
									}]
						});

						queryWin.show(this);
					}
				});
			}

			var l = document.location + '';
			var param = '';
			if (l.indexOf('&') > -1) {
				param = l.substring(l.indexOf('&'));
			}

			if (tabparam) {
				param += tabparam;
			}

			var ds = new Ext.data.JsonStore({
				idProperty : 'PAGINATION_NUMBER',
				remoteSort : false,
				totalProperty : 'totalCount',
				root : 'queryList',
				fields : json.fieldsNames,
				proxy : new Ext.data.HttpProxy({
							url : context
									+ '/system/tablearg.do?method=list&querykey='
									+ key + '&' + param
						})
			});

			var grid;

			var gridId = key;

			if (showchk) {
				grid = new Ext.grid.GridPanel({
							id : gridId,
							title : '<font class="oaFont">' + title
									+ '_列表</font>',
							cm : cm,
							ds : ds,
							sm : sm,
							stateful : true,
							layout : 'fit',
							stripeRows : true,
							margins : '1 1 1 1',
							viewConfig : {
								forceFit : true
							},
							border : false,
							// config options for stateful behavior
							stateful : true,
							stateId : 'grid',
							loadMask : {
								msg : "数据加载中，请稍等..."
							},
							tbar : new Ext.Toolbar({
										id : key + '_toolbar',
										autoWidth : true,
										autoShow : true,
										items : [defaultToolbarMenus]
									}),
							bbar : new Ext.PagingToolbar({
										pageSize : pageSize,// 每页显示的记录值
										store : ds,
										displayInfo : true,
										displayMsg : '总记录数 {0} - {1} of {2}',
										emptyMsg : "没有记录"
									})
						});
			} else {
				grid = new Ext.grid.GridPanel({
							id : gridId,
							title : '<font class="oaFont">' + title
									+ '_列表</font>',
							cm : cm,
							ds : ds,
							stateful : true,
							layout : 'fit',
							stripeRows : true,
							margins : '1 1 1 1',
							viewConfig : {
								forceFit : true
							},
							border : false,
							// config options for stateful behavior
							stateful : true,
							stateId : 'grid',
							loadMask : {
								msg : "数据加载中，请稍等..."
							},
							tbar : new Ext.Toolbar({
										id : key + '_toolbar',
										autoWidth : true,
										autoShow : true,
										items : [defaultToolbarMenus]
									}),
							bbar : new Ext.PagingToolbar({
										pageSize : pageSize,// 每页显示的记录值
										store : ds,
										displayInfo : true,
										displayMsg : '总记录数 {0} - {1} of {2}',
										emptyMsg : "没有记录"
									})
						});
			}

			/* 设置自定义参数 */
			ds.on('beforeload', function(thiz, options) {
						/* 查询参数 */
						var queryParams = getQueryParams(key);
						Ext.apply(thiz.baseParams, queryParams);
					});

			ds.load({
						params : {
							start : 0,
							limit : pageSize
						}
					});

			if (func) {
				func(grid);
			}

			return grid;
		} else {
			Ext.Msg.alert('提示', json.msg);
		}
	} else {
		Ext.Msg.alert('提示', '未知的异常错误: ' + result);
	}
}

/**
 * 默认列render函数
 * 
 * @param {}
 *            value
 * @param {}
 *            cellmeta
 * @param {}
 *            record
 * @param {}
 *            rowIndex
 * @param {}
 *            columnIndex
 * @param {}
 *            store
 * @return {}
 */
function renderTQExtGListHeader(value, cellmeta, record, rowIndex, columnIndex,
		store) {
	return value;
}