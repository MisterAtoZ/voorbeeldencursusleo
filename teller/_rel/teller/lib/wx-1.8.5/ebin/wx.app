%% This is an -*- erlang -*- file.
%%
%% %CopyrightBegin%
%%
%% Copyright Ericsson AB 2010-2016. All Rights Reserved.
%%
%% Licensed under the Apache License, Version 2.0 (the "License");
%% you may not use this file except in compliance with the License.
%% You may obtain a copy of the License at
%%
%%     http://www.apache.org/licenses/LICENSE-2.0
%%
%% Unless required by applicable law or agreed to in writing, software
%% distributed under the License is distributed on an "AS IS" BASIS,
%% WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
%% See the License for the specific language governing permissions and
%% limitations under the License.
%%
%% %CopyrightEnd%

{application, wx,
 [{description, "Yet another graphics system"},
  {vsn, "1.8.5"},
  {modules,
   [
    %% Generated modules
  wxHelpEvent, wxIcon, wxColourPickerEvent, wxGraphicsMatrix, wxImage, wxPreviewFrame, wxCheckListBox, wxColourData, wxFileDialog, wxFlexGridSizer, wxPrintDialogData, wxTopLevelWindow, wxAuiNotebook, wxMouseCaptureChangedEvent, wxDCOverlay, wxClipboardTextEvent, wxMoveEvent, wxChoicebook, wxSystemOptions, wxGridCellFloatRenderer, wxWindowDC, wxColourDialog, wxStatusBar, wxInitDialogEvent, wxEraseEvent, wxXmlResource, wxToggleButton, wxTaskBarIconEvent, wxGraphicsObject, wxPrintout, wxSysColourChangedEvent, wxListCtrl, wxLocale, wxBitmap, wxQueryNewPaletteEvent, wxRegion, wxSizerItem, wxNavigationKeyEvent, wxFontData, wxGraphicsRenderer, wxGridCellBoolRenderer, wxMouseCaptureLostEvent, wxTextEntryDialog, wxIdleEvent, wxGraphicsBrush, wxStyledTextCtrl, wxListItem, wxSpinCtrl, wxControlWithItems, wxMDIChildFrame, wxStdDialogButtonSizer, wxFontPickerEvent, wxPrintPreview, wxPrintData, wxDirPickerCtrl, wxKeyEvent, wxEvent, wxFontDialog, wxRadioBox, wxCalendarDateAttr, wxGridCellEditor, wxPalette, wxTreebook, wxLogNull, wxGridCellStringRenderer, wxCommandEvent, wxPreviewCanvas, wxTextAttr, wxScrollWinEvent, wxCalendarCtrl, wxSizeEvent, wxAuiDockArt, wxWindowDestroyEvent, wxSetCursorEvent, wxChoice, wxActivateEvent, wxStaticText, wxIconizeEvent, wxControl, wxPrinter, wxStaticBitmap, wxFontPickerCtrl, wxGridBagSizer, wxListbook, wxGridSizer, wxScrollEvent, wx_misc, wxWindowCreateEvent, wxGridCellFloatEditor, wxPrintDialog, wxStaticBox, wxBufferedDC, wxMaximizeEvent, wxDateEvent, wxTextCtrl, wxCalendarEvent, wxGauge, wxSizerFlags, wxGridCellTextEditor, wxShowEvent, wxBitmapDataObject, wxFindReplaceDialog, wxFrame, wxTextDataObject, wxGraphicsPath, wxMiniFrame, wxDisplayChangedEvent, wxListEvent, wxDialog, wxPaintDC, wxScreenDC, wxBitmapButton, wxPopupWindow, wxChildFocusEvent, wxFilePickerCtrl, wxPostScriptDC, wxGrid, wxAuiSimpleTabArt, wxScrolledWindow, wxMask, wxScrollBar, wxMenu, wxCheckBox, wxPaletteChangedEvent, wxListItemAttr, wxMirrorDC, wxAuiManager, wxBoxSizer, wxClipboard, wxMouseEvent, wxDirDialog, wxStyledTextEvent, wxMDIClientWindow, wxSashWindow, wxAuiPaneInfo, wxPaintEvent, wxSplitterWindow, wxProgressDialog, wxJoystickEvent, wxGridCellNumberEditor, wxListBox, wxNotebookEvent, wxFileDirPickerEvent, wxMenuItem, wxCursor, wxMessageDialog, wxButton, wxMenuBar, wxToolBar, wxGraphicsPen, wxGridCellNumberRenderer, wxNotifyEvent, wxArtProvider, wxHtmlEasyPrinting, wxNotebook, wxBufferedPaintDC, wxTreeCtrl, wxFindReplaceData, wxListView, wxSplitterEvent, wxAuiManagerEvent, wxColourPickerCtrl, wxContextMenuEvent, wxLayoutAlgorithm, wxGridCellBoolEditor, wxMultiChoiceDialog, wxOverlay, wxDropFilesEvent, wxHtmlWindow, wxComboBox, wxDataObject, wxGridCellRenderer, wxFocusEvent, wxGridCellChoiceEditor, wxImageList, wxGraphicsContext, wxToolTip, wxSlider, wxPanel, wxSizer, wxPasswordEntryDialog, wxGBSizerItem, wxPen, wxMenuEvent, wxBrush, wxFileDataObject, wxAuiNotebookEvent, wxGLCanvas, wxAcceleratorEntry, wxStaticBoxSizer, wxSashEvent, wxUpdateUIEvent, wxPageSetupDialogData, wxSplashScreen, wxMemoryDC, wxToolbook, wxPopupTransientWindow, wxGridCellAttr, wxRadioButton, wxPickerBase, wxGraphicsFont, wxCloseEvent, wxDC, wxCaret, wxAcceleratorTable, wxMDIParentFrame, wxPreviewControlBar, wxEvtHandler, wxStaticLine, wxGenericDirCtrl, wxFont, wxDatePickerCtrl, wxSystemSettings, wxWindow, wxHtmlLinkEvent, wxTreeEvent, wxAuiTabArt, wxSpinEvent, wxSingleChoiceDialog, wxTaskBarIcon, wxIconBundle, wxClientDC, wxSpinButton, wxPageSetupDialog, wxSashLayoutWindow, wxGridEvent, glu, gl,
    %% Handcrafted modules
    wx,
    wx_object,
    wxe_master,
    wxe_server,
    wxe_util
   ]},
  {registered, []},
  {applications, [stdlib, kernel]},
  {env, []},
  {runtime_dependencies, ["stdlib-2.0","kernel-3.0","erts-6.0"]}
 ]}.
