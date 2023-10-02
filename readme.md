Experiment to get SLCacheViewer running in WINE within Docker.

Currently not working.

## Reading

* Software: http://slcacheviewer.com/downloads.php
* Base Image: https://github.com/jlesage/docker-baseimage-gui
  * Image in action: https://github.com/jlesage/docker-handbrake

## Blocker

```
[app         ] 010c:err:eventlog:ReportEventW L"Application: SLCacheViewer.exe
Framework Version: v4.0.30319
Description: The process was terminated due to an unhandled exception.
Exception Info: System.ArgumentException
Stack:
   at System.Drawing.FontFamily.GetGdipGenericSansSerif()
   at System.Drawing.FontFamily.CreateFontFam"...
[app         ] Unhandled Exception: System.ArgumentException: Font '?' cannot be found.
[app         ]    at System.Drawing.FontFamily.GetGdipGenericSansSerif()
[app         ]    at System.Drawing.FontFamily.CreateFontFamily(String name, FontCollection fon
[app         ] tCollection)
[app         ]    at System.Drawing.FontFamily..ctor(String name, Boolean createDefaultOnFail)
[app         ]    at System.Drawing.Font.Initialize(String familyName, Single emSize, FontStyle
[app         ]  style, GraphicsUnit unit, Byte gdiCharSet, Boolean gdiVerticalFont)
[app         ]    at System.Drawing.Font..ctor(String familyName, Single emSize, FontStyle styl
[app         ] e)
[app         ]    at SLCacheViewer.MainForm.InitializeComponent()
[app         ]    at SLCacheViewer.MainForm..ctor()
[app         ]    at SLCacheViewer.Program.Main()

```
