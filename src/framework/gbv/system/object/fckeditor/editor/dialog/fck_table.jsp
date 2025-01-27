<%@ page contentType="text/html;charset=UTF-8"%>
<%@ page import="org.limp.mine.RandomUtil"%>
<%
    String tableName = "DOC_" + RandomUtil.getRandomString(10, true);
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<!--
 * FCKeditor - The text editor for Internet - http://www.fckeditor.net
 * Copyright (C) 2003-2009 Frederico Caldeira Knabben
 *
 * == BEGIN LICENSE ==
 *
 * Licensed under the terms of any of the following licenses at your
 * choice:
 *
 *  - GNU General Public License Version 2 or later (the "GPL")
 *    http://www.gnu.org/licenses/gpl.html
 *
 *  - GNU Lesser General Public License Version 2.1 or later (the "LGPL")
 *    http://www.gnu.org/licenses/lgpl.html
 *
 *  - Mozilla Public License Version 1.1 or later (the "MPL")
 *    http://www.mozilla.org/MPL/MPL-1.1.html
 *
 * == END LICENSE ==
 *
 * Table dialog window.
-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>Table Properties</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="robots" content="noindex, nofollow" />
	<script src="common/fck_dialog_common.js" type="text/javascript"></script>
	<script type="text/javascript">

var dialog	= window.parent ;
var oEditor = dialog.InnerDialogLoaded() ;

var FCKDomTools = oEditor.FCKDomTools ;

// Gets the table if there is one selected.
var table ;
var e = dialog.Selection.GetSelectedElement() ;
var hasColumnHeaders ;

if ( ( !e && document.location.search.substr(1) == 'Parent' ) || ( e && e.tagName != 'TABLE' ) )
	e = oEditor.FCKSelection.MoveToAncestorNode( 'TABLE' ) ;

if ( e && e.tagName == "TABLE" )
	table = e ;

// Fired when the window loading process is finished. It sets the fields with the
// actual values if a table is selected in the editor.
window.onload = function()
{
	// First of all, translate the dialog box texts
	oEditor.FCKLanguageManager.TranslatePage(document) ;

	if (table)
	{
		document.getElementById('txtRows').value    = table.rows.length ;
		document.getElementById('txtColumns').value = table.rows[0].cells.length ;

		// Gets the value from the Width or the Style attribute
		var iWidth  = (table.style.width  ? table.style.width  : table.width ) ;
		var iHeight = (table.style.height ? table.style.height : table.height ) ;

		if (iWidth.indexOf('%') >= 0)			// Percentual = %
		{
			iWidth = parseInt( iWidth.substr(0,iWidth.length - 1), 10 ) ;
			document.getElementById('selWidthType').value = "percent" ;
		}
		else if (iWidth.indexOf('px') >= 0)		// Style Pixel = px
		{																										  //
			iWidth = iWidth.substr(0,iWidth.length - 2);
			document.getElementById('selWidthType').value = "pixels" ;
		}

		if (iHeight && iHeight.indexOf('px') >= 0)		// Style Pixel = px
			iHeight = iHeight.substr(0,iHeight.length - 2);

		document.getElementById('txtWidth').value		= iWidth || '' ;
		document.getElementById('txtHeight').value		= iHeight || '' ;
		document.getElementById('txtBorder').value		= GetAttribute( table, 'border', '' ) ;
		document.getElementById('selAlignment').value	= GetAttribute( table, 'align', '' ) ;
		document.getElementById('txtCellPadding').value	= GetAttribute( table, 'cellPadding', '' ) ;
		document.getElementById('txtCellSpacing').value	= GetAttribute( table, 'cellSpacing', '' ) ;
		document.getElementById('txtSummary').value     = GetAttribute( table, 'summary', '' ) ;
		
		var id = GetAttribute( table, 'id', '' );

		if(id != ""){
		   document.getElementById('txtMultiArea').value = id;
		   document.getElementById('txtMultiArea').checked = true;
		}
		
//		document.getElementById('cmbFontStyle').value	= table.className ;

		var eCaption = oEditor.FCKDomTools.GetFirstChild( table, 'CAPTION' ) ;
		if ( eCaption ) document.getElementById('txtCaption').value = eCaption.innerHTML ;

		hasColumnHeaders = true ;
		// Check if all the first cells in every row are TH
		for (var row=0; row<table.rows.length; row++)
		{
			// If just one cell isn't a TH then it isn't a header column
			if ( table.rows[row].cells[0].nodeName != 'TH' )
			{
				hasColumnHeaders = false ;

				break;
			}
		}

		// Check if the table contains <thead>
		if ((table.tHead !== null) )
		{
			if (hasColumnHeaders)
				GetE('selHeaders').value = 'both' ;
			else
				GetE('selHeaders').value = 'row' ;
		}
		else
		{
			if (hasColumnHeaders)
				GetE('selHeaders').value = 'col' ;
			else
				GetE('selHeaders').value = '' ;
		}


		document.getElementById('txtRows').disabled    = true ;
		document.getElementById('txtColumns').disabled = true ;
		SelectField( 'txtWidth' ) ;
	}
	else
		SelectField( 'txtRows' ) ;

	dialog.SetOkButton( true ) ;
	dialog.SetAutoSize( true ) ;
}

// Fired when the user press the OK button
function Ok()
{
	var bExists = ( table != null ) ;

	var oDoc = oEditor.FCK.EditorDocument ;
	oEditor.FCKUndo.SaveUndoStep() ;

	if ( ! bExists )
		table = oDoc.createElement( "TABLE" ) ;

	// Removes the Width and Height styles
	if ( bExists && table.style.width )		table.style.width = null ; //.removeAttribute("width") ;
	if ( bExists && table.style.height )	table.style.height = null ; //.removeAttribute("height") ;

	var sWidth = GetE('txtWidth').value ;
	if ( sWidth.length > 0 && GetE('selWidthType').value == 'percent' )
		sWidth += '%' ;

	SetAttribute( table, 'width'		, sWidth ) ;
	SetAttribute( table, 'height'		, GetE('txtHeight').value ) ;
	SetAttribute( table, 'border'		, GetE('txtBorder').value ) ;
	SetAttribute( table, 'align'		, GetE('selAlignment').value ) ;
	SetAttribute( table, 'cellPadding'	, GetE('txtCellPadding').value ) ;
	SetAttribute( table, 'cellSpacing'	, GetE('txtCellSpacing').value ) ;
	SetAttribute( table, 'summary'		, GetE('txtSummary').value ) ;
	
	if(GetE('txtMultiArea').checked){
	   SetAttribute( table, 'id'		, GetE('txtMultiArea').value ) ;
	}

	var eCaption = oEditor.FCKDomTools.GetFirstChild( table, 'CAPTION' ) ;

	if ( document.getElementById('txtCaption').value != '')
	{
		if ( !eCaption )
		{
			eCaption = oDoc.createElement( 'CAPTION' ) ;
			table.insertBefore( eCaption, table.firstChild ) ;
		}

		eCaption.innerHTML = document.getElementById('txtCaption').value ;
	}
	else if ( bExists && eCaption )
	{
		// TODO: It causes an IE internal error if using removeChild or
		// table.deleteCaption() (see #505).
		if ( oEditor.FCKBrowserInfo.IsIE )
			eCaption.innerHTML = '' ;
		else
			eCaption.parentNode.removeChild( eCaption ) ;
	}

	var headers = GetE('selHeaders').value ;
	if ( bExists )
	{
		// Should we make a <thead>?
		if ( table.tHead==null && (headers=='row' || headers=='both') )
		{
			var oThead = table.createTHead() ;
			var tbody = FCKDomTools.GetFirstChild( table, 'TBODY' ) ;
			var theRow= FCKDomTools.GetFirstChild( tbody, 'TR' ) ;

			//now change TD to TH:
			for (var i = 0; i<theRow.childNodes.length ; i++)
			{
				var th = RenameNode(theRow.childNodes[i], 'TH') ;
				if (th != null)
					th.scope='col' ;
			}
			oThead.appendChild( theRow ) ;
		}

		if ( table.tHead!==null && !(headers=='row' || headers=='both') )
		{
			// Move the row out of the THead and put it in the TBody:
			var tHead = table.tHead ;
			var tbody = FCKDomTools.GetFirstChild( table, 'TBODY' ) ;

			var previousFirstRow = tbody.firstChild ;
			while ( tHead.firstChild )
			{
				var theRow = tHead.firstChild ;
				for (var i = 0; i < theRow.childNodes.length ; i++ )
				{
					var newCell = RenameNode( theRow.childNodes[i], 'TD' ) ;
					if ( newCell != null )
						newCell.removeAttribute( 'scope' ) ;
				}
				tbody.insertBefore( theRow, previousFirstRow ) ;
			}
			table.removeChild( tHead ) ;
		}

		// Should we make all first cells in a row TH?
		if ( (!hasColumnHeaders)  && (headers=='col' || headers=='both') )
		{
			for( var row=0 ; row < table.rows.length ; row++ )
			{
				var newCell = RenameNode(table.rows[row].cells[0], 'TH') ;
				if ( newCell != null )
					newCell.scope = 'row' ;
			}
		}

		// Should we make all first TH-cells in a row make TD? If 'yes' we do it the other way round :-)
		if ( (hasColumnHeaders)  && !(headers=='col' || headers=='both') )
		{
			for( var row=0 ; row < table.rows.length ; row++ )
			{
				var oRow = table.rows[row] ;
				if ( oRow.parentNode.nodeName == 'TBODY' )
				{
					var newCell = RenameNode(oRow.cells[0], 'TD') ;
					if (newCell != null)
						newCell.removeAttribute( 'scope' ) ;
				}
			}
		}
	}

	if (! bExists)
	{
		var iRows = GetE('txtRows').value ;
		var iCols = GetE('txtColumns').value ;

		var startRow = 0 ;
		// Should we make a <thead> ?
		if (headers=='row' || headers=='both')
		{
			startRow++ ;
			var oThead = table.createTHead() ;
			var oRow = table.insertRow(-1) ;
			oThead.appendChild(oRow);

			for ( var c = 0 ; c < iCols ; c++ )
			{
				var oThcell = oDoc.createElement( 'TH' ) ;
				oThcell.scope = 'col' ;
				oRow.appendChild( oThcell ) ;
				if ( oEditor.FCKBrowserInfo.IsGeckoLike )
					oEditor.FCKTools.AppendBogusBr( oThcell ) ;
			}
		}

		// Opera automatically creates a tbody when a thead has been added
		var oTbody = FCKDomTools.GetFirstChild( table, 'TBODY' ) ;
		if ( !oTbody )
		{
			// make TBODY if it doesn't exist
			oTbody = oDoc.createElement( 'TBODY' ) ;
			table.appendChild( oTbody ) ;
		}
		for ( var r = startRow ; r < iRows; r++ )
		{
			var oRow = oDoc.createElement( 'TR' ) ;
			oTbody.appendChild(oRow) ;

			var startCol = 0 ;
			// Is the first column a header?
			if (headers=='col' || headers=='both')
			{
				var oThcell = oDoc.createElement( 'TH' ) ;
				oThcell.scope = 'row' ;
				oRow.appendChild( oThcell ) ;
				if ( oEditor.FCKBrowserInfo.IsGeckoLike )
					oEditor.FCKTools.AppendBogusBr( oThcell ) ;

				startCol++ ;
			}
			for ( var c = startCol ; c < iCols ; c++ )
			{
				// IE will leave the TH at the end of the row if we use now oRow.insertCell(-1)
				var oCell = oDoc.createElement( 'TD' ) ;
				oRow.appendChild( oCell ) ;
				if ( oEditor.FCKBrowserInfo.IsGeckoLike )
					oEditor.FCKTools.AppendBogusBr( oCell ) ;
			}
		}

		oEditor.FCK.InsertElement( table ) ;
	}

	return true ;
}

	</script>
</head>
<body style="overflow: hidden">
	<table id="otable" cellspacing="0" cellpadding="0" width="100%" border="0" style="height: 100%">
		<tr>
			<td>
				<table cellspacing="1" cellpadding="1" width="100%" border="0">
					<tr>
						<td valign="top">
							<table cellspacing="1" cellpadding="0" border="0">
								<tr>
									<td>
										<span fcklang="DlgTableRows">Rows</span>:</td>
									<td>
										&nbsp;<input id="txtRows" type="text" maxlength="3" size="2" value="3"
											onkeypress="return IsDigit(event);" /></td>
								</tr>
								<tr>
									<td>
										<span fcklang="DlgTableColumns">Columns</span>:</td>
									<td>
										&nbsp;<input id="txtColumns" type="text" maxlength="2" size="2" value="2"
											onkeypress="return IsDigit(event);" /></td>
								</tr>
								<tr>
									<td><span fcklang="DlgTableHeaders">Headers</span>:</td>
									<td>
										&nbsp;<select id="selHeaders">
											<option fcklang="DlgTableHeadersNone" value="">None</option>
											<option fcklang="DlgTableHeadersRow" value="row">First row</option>
											<option fcklang="DlgTableHeadersColumn" value="col">First column</option>
											<option fcklang="DlgTableHeadersBoth" value="both">Both</option>
										</select>
									</td>
								</tr>
								<tr>
									<td>
										<span fcklang="DlgTableBorder">Border size</span>:</td>
									<td>
										&nbsp;<input id="txtBorder" type="text" maxlength="2" size="2" value="1"
											onkeypress="return IsDigit(event);" /></td>
								</tr>
								<tr>
									<td>
										<span fcklang="DlgTableAlign">Alignment</span>:</td>
									<td>
										&nbsp;<select id="selAlignment">
											<option fcklang="DlgTableAlignNotSet" value="" selected="selected">&lt;Not set&gt;</option>
											<option fcklang="DlgTableAlignLeft" value="left">Left</option>
											<option fcklang="DlgTableAlignCenter" value="center">Center</option>
											<option fcklang="DlgTableAlignRight" value="right">Right</option>
										</select></td>
								</tr>
							</table>
						</td>
						<td>
							&nbsp;&nbsp;&nbsp;</td>
						<td align="right" valign="top">
							<table cellspacing="0" cellpadding="0" border="0">
								<tr>
									<td>
										<span fcklang="DlgTableWidth">Width</span>:</td>
									<td>
										&nbsp;<input id="txtWidth" type="text" maxlength="4" size="3" value="200"
											onkeypress="return IsDigit(event);" /></td>
									<td>
										&nbsp;<select id="selWidthType">
											<option fcklang="DlgTableWidthPx" value="pixels" selected="selected">pixels</option>
											<option fcklang="DlgTableWidthPc" value="percent">percent</option>
										</select></td>
								</tr>
								<tr>
									<td>
										<span fcklang="DlgTableHeight">Height</span>:</td>
									<td>
										&nbsp;<input id="txtHeight" type="text" maxlength="4" size="3" onkeypress="return IsDigit(event);" /></td>
									<td>
										&nbsp;<span fcklang="DlgTableWidthPx">pixels</span></td>
								</tr>
								<!--  <tr>
									<td colspan="3">&nbsp;</td>
								</tr>-->
								<tr>
									<td nowrap="nowrap">
										<span fcklang="DlgTableCellSpace">Cell spacing</span>:</td>
									<td>
										&nbsp;<input id="txtCellSpacing" type="text" maxlength="2" size="2" value="1"
											onkeypress="return IsDigit(event);" /></td>
									<td>
										&nbsp;</td>
								</tr>
								<tr>
									<td nowrap="nowrap">
										<span fcklang="DlgTableCellPad">Cell padding</span>:</td>
									<td>
										&nbsp;<input id="txtCellPadding" type="text" maxlength="2" size="2" value="1"
											onkeypress="return IsDigit(event);" /></td>
									<td>
										&nbsp;</td>
								</tr>
								<tr>
									<td nowrap="nowrap">
										<span fcklang="multiArea">多数据操作区域</span>:</td>
									<td>
										&nbsp;<input id="txtMultiArea" type="checkbox" value="<%=tableName%>"/></td>
									<td>
										&nbsp;</td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
				<table cellspacing="0" cellpadding="0" width="100%" border="0">
					<tr>
						<td nowrap="nowrap">
							<span fcklang="DlgTableCaption">Caption</span>:&nbsp;</td>
						<td>
							&nbsp;</td>
						<td width="100%" nowrap="nowrap">
							<input id="txtCaption" type="text" style="width: 100%" /></td>
					</tr>
					<tr>
						<td nowrap="nowrap">
							<span fcklang="DlgTableSummary">Summary</span>:&nbsp;</td>
						<td>
							&nbsp;</td>
						<td width="100%" nowrap="nowrap">
							<input id="txtSummary" type="text" style="width: 100%" /></td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</body>
</html>
