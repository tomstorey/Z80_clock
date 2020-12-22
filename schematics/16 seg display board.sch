<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.6.1">
<drawing>
<settings>
<setting alwaysvectorfont="yes"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="2" name="Route2" color="1" fill="3" visible="no" active="no"/>
<layer number="3" name="Route3" color="4" fill="3" visible="no" active="no"/>
<layer number="4" name="Route4" color="1" fill="4" visible="no" active="no"/>
<layer number="5" name="Route5" color="4" fill="4" visible="no" active="no"/>
<layer number="6" name="Route6" color="1" fill="8" visible="no" active="no"/>
<layer number="7" name="Route7" color="4" fill="8" visible="no" active="no"/>
<layer number="8" name="Route8" color="1" fill="2" visible="no" active="no"/>
<layer number="9" name="Route9" color="4" fill="2" visible="no" active="no"/>
<layer number="10" name="Route10" color="1" fill="7" visible="no" active="no"/>
<layer number="11" name="Route11" color="4" fill="7" visible="no" active="no"/>
<layer number="12" name="Route12" color="1" fill="5" visible="no" active="no"/>
<layer number="13" name="Route13" color="4" fill="5" visible="no" active="no"/>
<layer number="14" name="Route14" color="1" fill="6" visible="no" active="no"/>
<layer number="15" name="Route15" color="4" fill="6" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="24" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="rcl">
<description>&lt;b&gt;Resistors, Capacitors, Inductors&lt;/b&gt;&lt;p&gt;
Based on the previous libraries:
&lt;ul&gt;
&lt;li&gt;r.lbr
&lt;li&gt;cap.lbr 
&lt;li&gt;cap-fe.lbr
&lt;li&gt;captant.lbr
&lt;li&gt;polcap.lbr
&lt;li&gt;ipc-smd.lbr
&lt;/ul&gt;
All SMD packages are defined according to the IPC specifications and  CECC&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;&lt;p&gt;
&lt;p&gt;
for Electrolyt Capacitors see also :&lt;p&gt;
www.bccomponents.com &lt;p&gt;
www.panasonic.com&lt;p&gt;
www.kemet.com&lt;p&gt;
http://www.secc.co.jp/pdf/os_e/2004/e_os_all.pdf &lt;b&gt;(SANYO)&lt;/b&gt;
&lt;p&gt;
for trimmer refence see : &lt;u&gt;www.electrospec-inc.com/cross_references/trimpotcrossref.asp&lt;/u&gt;&lt;p&gt;

&lt;table border=0 cellspacing=0 cellpadding=0 width="100%" cellpaddding=0&gt;
&lt;tr valign="top"&gt;

&lt;! &lt;td width="10"&gt;&amp;nbsp;&lt;/td&gt;
&lt;td width="90%"&gt;

&lt;b&gt;&lt;font color="#0000FF" size="4"&gt;TRIM-POT CROSS REFERENCE&lt;/font&gt;&lt;/b&gt;
&lt;P&gt;
&lt;TABLE BORDER=0 CELLSPACING=1 CELLPADDING=2&gt;
  &lt;TR&gt;
    &lt;TD COLSPAN=8&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;RECTANGULAR MULTI-TURN&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;B&gt;
      &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;BOURNS&lt;/FONT&gt;
      &lt;/B&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;B&gt;
      &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;BI&amp;nbsp;TECH&lt;/FONT&gt;
      &lt;/B&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;B&gt;
      &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;DALE-VISHAY&lt;/FONT&gt;
      &lt;/B&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;B&gt;
      &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;PHILIPS/MEPCO&lt;/FONT&gt;
      &lt;/B&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;B&gt;
      &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;MURATA&lt;/FONT&gt;
      &lt;/B&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;B&gt;
      &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;PANASONIC&lt;/FONT&gt;
      &lt;/B&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;B&gt;
      &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;SPECTROL&lt;/FONT&gt;
      &lt;/B&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;B&gt;
      &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;MILSPEC&lt;/FONT&gt;
      &lt;/B&gt;
    &lt;/TD&gt;&lt;TD&gt;&amp;nbsp;&lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3 &gt;
      3005P&lt;BR&gt;
      3006P&lt;BR&gt;
      3006W&lt;BR&gt;
      3006Y&lt;BR&gt;
      3009P&lt;BR&gt;
      3009W&lt;BR&gt;
      3009Y&lt;BR&gt;
      3057J&lt;BR&gt;
      3057L&lt;BR&gt;
      3057P&lt;BR&gt;
      3057Y&lt;BR&gt;
      3059J&lt;BR&gt;
      3059L&lt;BR&gt;
      3059P&lt;BR&gt;
      3059Y&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      89P&lt;BR&gt;
      89W&lt;BR&gt;
      89X&lt;BR&gt;
      89PH&lt;BR&gt;
      76P&lt;BR&gt;
      89XH&lt;BR&gt;
      78SLT&lt;BR&gt;
      78L&amp;nbsp;ALT&lt;BR&gt;
      56P&amp;nbsp;ALT&lt;BR&gt;
      78P&amp;nbsp;ALT&lt;BR&gt;
      T8S&lt;BR&gt;
      78L&lt;BR&gt;
      56P&lt;BR&gt;
      78P&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      T18/784&lt;BR&gt;
      783&lt;BR&gt;
      781&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      2199&lt;BR&gt;
      1697/1897&lt;BR&gt;
      1680/1880&lt;BR&gt;
      2187&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      8035EKP/CT20/RJ-20P&lt;BR&gt;
      -&lt;BR&gt;
      RJ-20X&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      1211L&lt;BR&gt;
      8012EKQ&amp;nbsp;ALT&lt;BR&gt;
      8012EKR&amp;nbsp;ALT&lt;BR&gt;
      1211P&lt;BR&gt;
      8012EKJ&lt;BR&gt;
      8012EKL&lt;BR&gt;
      8012EKQ&lt;BR&gt;
      8012EKR&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      2101P&lt;BR&gt;
      2101W&lt;BR&gt;
      2101Y&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      2102L&lt;BR&gt;
      2102S&lt;BR&gt;
      2102Y&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      EVMCOG&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      43P&lt;BR&gt;
      43W&lt;BR&gt;
      43Y&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      40L&lt;BR&gt;
      40P&lt;BR&gt;
      40Y&lt;BR&gt;
      70Y-T602&lt;BR&gt;
      70L&lt;BR&gt;
      70P&lt;BR&gt;
      70Y&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      RT/RTR12&lt;BR&gt;
      RT/RTR12&lt;BR&gt;
      RT/RTR12&lt;BR&gt;
      -&lt;BR&gt;
      RJ/RJR12&lt;BR&gt;
      RJ/RJR12&lt;BR&gt;
      RJ/RJR12&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD COLSPAN=8&gt;&amp;nbsp;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD COLSPAN=8&gt;
      &lt;FONT SIZE=4 FACE=ARIAL&gt;&lt;B&gt;SQUARE MULTI-TURN&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
   &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;BOURN&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;BI&amp;nbsp;TECH&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;DALE-VISHAY&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;PHILIPS/MEPCO&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;MURATA&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;PANASONIC&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;SPECTROL&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;MILSPEC&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      3250L&lt;BR&gt;
      3250P&lt;BR&gt;
      3250W&lt;BR&gt;
      3250X&lt;BR&gt;
      3252P&lt;BR&gt;
      3252W&lt;BR&gt;
      3252X&lt;BR&gt;
      3260P&lt;BR&gt;
      3260W&lt;BR&gt;
      3260X&lt;BR&gt;
      3262P&lt;BR&gt;
      3262W&lt;BR&gt;
      3262X&lt;BR&gt;
      3266P&lt;BR&gt;
      3266W&lt;BR&gt;
      3266X&lt;BR&gt;
      3290H&lt;BR&gt;
      3290P&lt;BR&gt;
      3290W&lt;BR&gt;
      3292P&lt;BR&gt;
      3292W&lt;BR&gt;
      3292X&lt;BR&gt;
      3296P&lt;BR&gt;
      3296W&lt;BR&gt;
      3296X&lt;BR&gt;
      3296Y&lt;BR&gt;
      3296Z&lt;BR&gt;
      3299P&lt;BR&gt;
      3299W&lt;BR&gt;
      3299X&lt;BR&gt;
      3299Y&lt;BR&gt;
      3299Z&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      66P&amp;nbsp;ALT&lt;BR&gt;
      66W&amp;nbsp;ALT&lt;BR&gt;
      66X&amp;nbsp;ALT&lt;BR&gt;
      66P&amp;nbsp;ALT&lt;BR&gt;
      66W&amp;nbsp;ALT&lt;BR&gt;
      66X&amp;nbsp;ALT&lt;BR&gt;
      -&lt;BR&gt;
      64W&amp;nbsp;ALT&lt;BR&gt;
      -&lt;BR&gt;
      64P&amp;nbsp;ALT&lt;BR&gt;
      64W&amp;nbsp;ALT&lt;BR&gt;
      64X&amp;nbsp;ALT&lt;BR&gt;
      64P&lt;BR&gt;
      64W&lt;BR&gt;
      64X&lt;BR&gt;
      66X&amp;nbsp;ALT&lt;BR&gt;
      66P&amp;nbsp;ALT&lt;BR&gt;
      66W&amp;nbsp;ALT&lt;BR&gt;
      66P&lt;BR&gt;
      66W&lt;BR&gt;
      66X&lt;BR&gt;
      67P&lt;BR&gt;
      67W&lt;BR&gt;
      67X&lt;BR&gt;
      67Y&lt;BR&gt;
      67Z&lt;BR&gt;
      68P&lt;BR&gt;
      68W&lt;BR&gt;
      68X&lt;BR&gt;
      67Y&amp;nbsp;ALT&lt;BR&gt;
      67Z&amp;nbsp;ALT&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      5050&lt;BR&gt;
      5091&lt;BR&gt;
      5080&lt;BR&gt;
      5087&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      T63YB&lt;BR&gt;
      T63XB&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      5887&lt;BR&gt;
      5891&lt;BR&gt;
      5880&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      T93Z&lt;BR&gt;
      T93YA&lt;BR&gt;
      T93XA&lt;BR&gt;
      T93YB&lt;BR&gt;
      T93XB&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      8026EKP&lt;BR&gt;
      8026EKW&lt;BR&gt;
      8026EKM&lt;BR&gt;
      8026EKP&lt;BR&gt;
      8026EKB&lt;BR&gt;
      8026EKM&lt;BR&gt;
      1309X&lt;BR&gt;
      1309P&lt;BR&gt;
      1309W&lt;BR&gt;
      8024EKP&lt;BR&gt;
      8024EKW&lt;BR&gt;
      8024EKN&lt;BR&gt;
      RJ-9P/CT9P&lt;BR&gt;
      RJ-9W&lt;BR&gt;
      RJ-9X&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      3103P&lt;BR&gt;
      3103Y&lt;BR&gt;
      3103Z&lt;BR&gt;
      3103P&lt;BR&gt;
      3103Y&lt;BR&gt;
      3103Z&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      3105P/3106P&lt;BR&gt;
      3105W/3106W&lt;BR&gt;
      3105X/3106X&lt;BR&gt;
      3105Y/3106Y&lt;BR&gt;
      3105Z/3105Z&lt;BR&gt;
      3102P&lt;BR&gt;
      3102W&lt;BR&gt;
      3102X&lt;BR&gt;
      3102Y&lt;BR&gt;
      3102Z&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      EVMCBG&lt;BR&gt;
      EVMCCG&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      55-1-X&lt;BR&gt;
      55-4-X&lt;BR&gt;
      55-3-X&lt;BR&gt;
      55-2-X&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      50-2-X&lt;BR&gt;
      50-4-X&lt;BR&gt;
      50-3-X&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      64P&lt;BR&gt;
      64W&lt;BR&gt;
      64X&lt;BR&gt;
      64Y&lt;BR&gt;
      64Z&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      RT/RTR22&lt;BR&gt;
      RT/RTR22&lt;BR&gt;
      RT/RTR22&lt;BR&gt;
      RT/RTR22&lt;BR&gt;
      RJ/RJR22&lt;BR&gt;
      RJ/RJR22&lt;BR&gt;
      RJ/RJR22&lt;BR&gt;
      RT/RTR26&lt;BR&gt;
      RT/RTR26&lt;BR&gt;
      RT/RTR26&lt;BR&gt;
      RJ/RJR26&lt;BR&gt;
      RJ/RJR26&lt;BR&gt;
      RJ/RJR26&lt;BR&gt;
      RJ/RJR26&lt;BR&gt;
      RJ/RJR26&lt;BR&gt;
      RJ/RJR26&lt;BR&gt;
      RT/RTR24&lt;BR&gt;
      RT/RTR24&lt;BR&gt;
      RT/RTR24&lt;BR&gt;
      RJ/RJR24&lt;BR&gt;
      RJ/RJR24&lt;BR&gt;
      RJ/RJR24&lt;BR&gt;
      RJ/RJR24&lt;BR&gt;
      RJ/RJR24&lt;BR&gt;
      RJ/RJR24&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD COLSPAN=8&gt;&amp;nbsp;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD COLSPAN=8&gt;
      &lt;FONT SIZE=4 FACE=ARIAL&gt;&lt;B&gt;SINGLE TURN&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;BOURN&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;BI&amp;nbsp;TECH&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;DALE-VISHAY&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;PHILIPS/MEPCO&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;MURATA&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;PANASONIC&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;SPECTROL&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;MILSPEC&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      3323P&lt;BR&gt;
      3323S&lt;BR&gt;
      3323W&lt;BR&gt;
      3329H&lt;BR&gt;
      3329P&lt;BR&gt;
      3329W&lt;BR&gt;
      3339H&lt;BR&gt;
      3339P&lt;BR&gt;
      3339W&lt;BR&gt;
      3352E&lt;BR&gt;
      3352H&lt;BR&gt;
      3352K&lt;BR&gt;
      3352P&lt;BR&gt;
      3352T&lt;BR&gt;
      3352V&lt;BR&gt;
      3352W&lt;BR&gt;
      3362H&lt;BR&gt;
      3362M&lt;BR&gt;
      3362P&lt;BR&gt;
      3362R&lt;BR&gt;
      3362S&lt;BR&gt;
      3362U&lt;BR&gt;
      3362W&lt;BR&gt;
      3362X&lt;BR&gt;
      3386B&lt;BR&gt;
      3386C&lt;BR&gt;
      3386F&lt;BR&gt;
      3386H&lt;BR&gt;
      3386K&lt;BR&gt;
      3386M&lt;BR&gt;
      3386P&lt;BR&gt;
      3386S&lt;BR&gt;
      3386W&lt;BR&gt;
      3386X&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      25P&lt;BR&gt;
      25S&lt;BR&gt;
      25RX&lt;BR&gt;
      82P&lt;BR&gt;
      82M&lt;BR&gt;
      82PA&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      91E&lt;BR&gt;
      91X&lt;BR&gt;
      91T&lt;BR&gt;
      91B&lt;BR&gt;
      91A&lt;BR&gt;
      91V&lt;BR&gt;
      91W&lt;BR&gt;
      25W&lt;BR&gt;
      25V&lt;BR&gt;
      25P&lt;BR&gt;
      -&lt;BR&gt;
      25S&lt;BR&gt;
      25U&lt;BR&gt;
      25RX&lt;BR&gt;
      25X&lt;BR&gt;
      72XW&lt;BR&gt;
      72XL&lt;BR&gt;
      72PM&lt;BR&gt;
      72RX&lt;BR&gt;
      -&lt;BR&gt;
      72PX&lt;BR&gt;
      72P&lt;BR&gt;
      72RXW&lt;BR&gt;
      72RXL&lt;BR&gt;
      72X&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      T7YB&lt;BR&gt;
      T7YA&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      TXD&lt;BR&gt;
      TYA&lt;BR&gt;
      TYP&lt;BR&gt;
      -&lt;BR&gt;
      TYD&lt;BR&gt;
      TX&lt;BR&gt;
      -&lt;BR&gt;
      150SX&lt;BR&gt;
      100SX&lt;BR&gt;
      102T&lt;BR&gt;
      101S&lt;BR&gt;
      190T&lt;BR&gt;
      150TX&lt;BR&gt;
      101&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      101SX&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      ET6P&lt;BR&gt;
      ET6S&lt;BR&gt;
      ET6X&lt;BR&gt;
      RJ-6W/8014EMW&lt;BR&gt;
      RJ-6P/8014EMP&lt;BR&gt;
      RJ-6X/8014EMX&lt;BR&gt;
      TM7W&lt;BR&gt;
      TM7P&lt;BR&gt;
      TM7X&lt;BR&gt;
      -&lt;BR&gt;
      8017SMS&lt;BR&gt;
      -&lt;BR&gt;
      8017SMB&lt;BR&gt;
      8017SMA&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      CT-6W&lt;BR&gt;
      CT-6H&lt;BR&gt;
      CT-6P&lt;BR&gt;
      CT-6R&lt;BR&gt;
      -&lt;BR&gt;
      CT-6V&lt;BR&gt;
      CT-6X&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      8038EKV&lt;BR&gt;
      -&lt;BR&gt;
      8038EKX&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      8038EKP&lt;BR&gt;
      8038EKZ&lt;BR&gt;
      8038EKW&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      3321H&lt;BR&gt;
      3321P&lt;BR&gt;
      3321N&lt;BR&gt;
      1102H&lt;BR&gt;
      1102P&lt;BR&gt;
      1102T&lt;BR&gt;
      RVA0911V304A&lt;BR&gt;
      -&lt;BR&gt;
      RVA0911H413A&lt;BR&gt;
      RVG0707V100A&lt;BR&gt;
      RVA0607V(H)306A&lt;BR&gt;
      RVA1214H213A&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      3104B&lt;BR&gt;
      3104C&lt;BR&gt;
      3104F&lt;BR&gt;
      3104H&lt;BR&gt;
      -&lt;BR&gt;
      3104M&lt;BR&gt;
      3104P&lt;BR&gt;
      3104S&lt;BR&gt;
      3104W&lt;BR&gt;
      3104X&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      EVMQ0G&lt;BR&gt;
      EVMQIG&lt;BR&gt;
      EVMQ3G&lt;BR&gt;
      EVMS0G&lt;BR&gt;
      EVMQ0G&lt;BR&gt;
      EVMG0G&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      EVMK4GA00B&lt;BR&gt;
      EVM30GA00B&lt;BR&gt;
      EVMK0GA00B&lt;BR&gt;
      EVM38GA00B&lt;BR&gt;
      EVMB6&lt;BR&gt;
      EVLQ0&lt;BR&gt;
      -&lt;BR&gt;
      EVMMSG&lt;BR&gt;
      EVMMBG&lt;BR&gt;
      EVMMAG&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      EVMMCS&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      EVMM1&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      EVMM0&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      EVMM3&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      62-3-1&lt;BR&gt;
      62-1-2&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      67R&lt;BR&gt;
      -&lt;BR&gt;
      67P&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      67X&lt;BR&gt;
      63V&lt;BR&gt;
      63S&lt;BR&gt;
      63M&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      63H&lt;BR&gt;
      63P&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      63X&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      RJ/RJR50&lt;BR&gt;
      RJ/RJR50&lt;BR&gt;
      RJ/RJR50&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
&lt;/TABLE&gt;
&lt;P&gt;&amp;nbsp;&lt;P&gt;
&lt;TABLE BORDER=0 CELLSPACING=1 CELLPADDING=3&gt;
  &lt;TR&gt;
    &lt;TD COLSPAN=7&gt;
      &lt;FONT color="#0000FF" SIZE=4 FACE=ARIAL&gt;&lt;B&gt;SMD TRIM-POT CROSS REFERENCE&lt;/B&gt;&lt;/FONT&gt;
      &lt;P&gt;
      &lt;FONT SIZE=4 FACE=ARIAL&gt;&lt;B&gt;MULTI-TURN&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;BOURNS&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;BI&amp;nbsp;TECH&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;DALE-VISHAY&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;PHILIPS/MEPCO&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;PANASONIC&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;TOCOS&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;AUX/KYOCERA&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      3224G&lt;BR&gt;
      3224J&lt;BR&gt;
      3224W&lt;BR&gt;
      3269P&lt;BR&gt;
      3269W&lt;BR&gt;
      3269X&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      44G&lt;BR&gt;
      44J&lt;BR&gt;
      44W&lt;BR&gt;
      84P&lt;BR&gt;
      84W&lt;BR&gt;
      84X&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      ST63Z&lt;BR&gt;
      ST63Y&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      ST5P&lt;BR&gt;
      ST5W&lt;BR&gt;
      ST5X&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD COLSPAN=7&gt;&amp;nbsp;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD COLSPAN=7&gt;
      &lt;FONT SIZE=4 FACE=ARIAL&gt;&lt;B&gt;SINGLE TURN&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;BOURNS&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;BI&amp;nbsp;TECH&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;DALE-VISHAY&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;PHILIPS/MEPCO&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;PANASONIC&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;TOCOS&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;AUX/KYOCERA&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      3314G&lt;BR&gt;
      3314J&lt;BR&gt;
      3364A/B&lt;BR&gt;
      3364C/D&lt;BR&gt;
      3364W/X&lt;BR&gt;
      3313G&lt;BR&gt;
      3313J&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      23B&lt;BR&gt;
      23A&lt;BR&gt;
      21X&lt;BR&gt;
      21W&lt;BR&gt;
      -&lt;BR&gt;
      22B&lt;BR&gt;
      22A&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      ST5YL/ST53YL&lt;BR&gt;
      ST5YJ/5T53YJ&lt;BR&gt;
      ST-23A&lt;BR&gt;
      ST-22B&lt;BR&gt;
      ST-22&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      ST-4B&lt;BR&gt;
      ST-4A&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      ST-3B&lt;BR&gt;
      ST-3A&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      EVM-6YS&lt;BR&gt;
      EVM-1E&lt;BR&gt;
      EVM-1G&lt;BR&gt;
      EVM-1D&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      G4B&lt;BR&gt;
      G4A&lt;BR&gt;
      TR04-3S1&lt;BR&gt;
      TRG04-2S1&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      DVR-43A&lt;BR&gt;
      CVR-42C&lt;BR&gt;
      CVR-42A/C&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
&lt;/TABLE&gt;
&lt;P&gt;
&lt;FONT SIZE=4 FACE=ARIAL&gt;&lt;B&gt;ALT =&amp;nbsp;ALTERNATE&lt;/B&gt;&lt;/FONT&gt;
&lt;P&gt;

&amp;nbsp;
&lt;P&gt;
&lt;/td&gt;
&lt;/tr&gt;
&lt;/table&gt;</description>
<packages>
<package name="R0402">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="-0.245" y1="0.224" x2="0.245" y2="0.224" width="0.1524" layer="51"/>
<wire x1="0.245" y1="-0.224" x2="-0.245" y2="-0.224" width="0.1524" layer="51"/>
<wire x1="-1.473" y1="0.483" x2="1.473" y2="0.483" width="0.0508" layer="39"/>
<wire x1="1.473" y1="0.483" x2="1.473" y2="-0.483" width="0.0508" layer="39"/>
<wire x1="1.473" y1="-0.483" x2="-1.473" y2="-0.483" width="0.0508" layer="39"/>
<wire x1="-1.473" y1="-0.483" x2="-1.473" y2="0.483" width="0.0508" layer="39"/>
<smd name="1" x="-0.65" y="0" dx="0.7" dy="0.9" layer="1"/>
<smd name="2" x="0.65" y="0" dx="0.7" dy="0.9" layer="1"/>
<text x="-0.635" y="0.635" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-1.905" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.554" y1="-0.3048" x2="-0.254" y2="0.2951" layer="51"/>
<rectangle x1="0.2588" y1="-0.3048" x2="0.5588" y2="0.2951" layer="51"/>
<rectangle x1="-0.1999" y1="-0.4001" x2="0.1999" y2="0.4001" layer="35"/>
</package>
<package name="R0603">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="-0.432" y1="-0.356" x2="0.432" y2="-0.356" width="0.1524" layer="51"/>
<wire x1="0.432" y1="0.356" x2="-0.432" y2="0.356" width="0.1524" layer="51"/>
<wire x1="-1.473" y1="0.983" x2="1.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.473" y1="0.983" x2="1.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.473" y1="-0.983" x2="-1.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.473" y1="-0.983" x2="-1.473" y2="0.983" width="0.0508" layer="39"/>
<smd name="1" x="-0.85" y="0" dx="1" dy="1.1" layer="1"/>
<smd name="2" x="0.85" y="0" dx="1" dy="1.1" layer="1"/>
<text x="-0.635" y="0.635" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-1.905" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="0.4318" y1="-0.4318" x2="0.8382" y2="0.4318" layer="51"/>
<rectangle x1="-0.8382" y1="-0.4318" x2="-0.4318" y2="0.4318" layer="51"/>
<rectangle x1="-0.1999" y1="-0.4001" x2="0.1999" y2="0.4001" layer="35"/>
</package>
<package name="R0805">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;</description>
<wire x1="-0.41" y1="0.635" x2="0.41" y2="0.635" width="0.1524" layer="51"/>
<wire x1="-0.41" y1="-0.635" x2="0.41" y2="-0.635" width="0.1524" layer="51"/>
<wire x1="-1.973" y1="0.983" x2="1.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="0.983" x2="1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="-0.983" x2="-1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.973" y1="-0.983" x2="-1.973" y2="0.983" width="0.0508" layer="39"/>
<smd name="1" x="-0.95" y="0" dx="1.3" dy="1.5" layer="1"/>
<smd name="2" x="0.95" y="0" dx="1.3" dy="1.5" layer="1"/>
<text x="-0.635" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="0.4064" y1="-0.6985" x2="1.0564" y2="0.7015" layer="51"/>
<rectangle x1="-1.0668" y1="-0.6985" x2="-0.4168" y2="0.7015" layer="51"/>
<rectangle x1="-0.1999" y1="-0.5001" x2="0.1999" y2="0.5001" layer="35"/>
</package>
<package name="R0805W">
<description>&lt;b&gt;RESISTOR&lt;/b&gt; wave soldering&lt;p&gt;</description>
<wire x1="-0.41" y1="0.635" x2="0.41" y2="0.635" width="0.1524" layer="51"/>
<wire x1="-0.41" y1="-0.635" x2="0.41" y2="-0.635" width="0.1524" layer="51"/>
<wire x1="-1.973" y1="0.983" x2="1.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="0.983" x2="1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="-0.983" x2="-1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.973" y1="-0.983" x2="-1.973" y2="0.983" width="0.0508" layer="39"/>
<smd name="1" x="-1.0525" y="0" dx="1.5" dy="1" layer="1"/>
<smd name="2" x="1.0525" y="0" dx="1.5" dy="1" layer="1"/>
<text x="-0.635" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="0.4064" y1="-0.6985" x2="1.0564" y2="0.7015" layer="51"/>
<rectangle x1="-1.0668" y1="-0.6985" x2="-0.4168" y2="0.7015" layer="51"/>
<rectangle x1="-0.1999" y1="-0.5001" x2="0.1999" y2="0.5001" layer="35"/>
</package>
<package name="R1206">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="0.9525" y1="-0.8128" x2="-0.9652" y2="-0.8128" width="0.1524" layer="51"/>
<wire x1="0.9525" y1="0.8128" x2="-0.9652" y2="0.8128" width="0.1524" layer="51"/>
<wire x1="-2.473" y1="0.983" x2="2.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="0.983" x2="2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-0.983" x2="-2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-0.983" x2="-2.473" y2="0.983" width="0.0508" layer="39"/>
<smd name="2" x="1.422" y="0" dx="1.6" dy="1.803" layer="1"/>
<smd name="1" x="-1.422" y="0" dx="1.6" dy="1.803" layer="1"/>
<text x="-1.27" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.6891" y1="-0.8763" x2="-0.9525" y2="0.8763" layer="51"/>
<rectangle x1="0.9525" y1="-0.8763" x2="1.6891" y2="0.8763" layer="51"/>
<rectangle x1="-0.3" y1="-0.7" x2="0.3" y2="0.7" layer="35"/>
</package>
<package name="R1206W">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
wave soldering</description>
<wire x1="-0.913" y1="0.8" x2="0.888" y2="0.8" width="0.1524" layer="51"/>
<wire x1="-0.913" y1="-0.8" x2="0.888" y2="-0.8" width="0.1524" layer="51"/>
<wire x1="-2.473" y1="0.983" x2="2.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="0.983" x2="2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-0.983" x2="-2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-0.983" x2="-2.473" y2="0.983" width="0.0508" layer="39"/>
<smd name="1" x="-1.499" y="0" dx="1.8" dy="1.2" layer="1"/>
<smd name="2" x="1.499" y="0" dx="1.8" dy="1.2" layer="1"/>
<text x="-1.905" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.905" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.651" y1="-0.8763" x2="-0.9009" y2="0.8738" layer="51"/>
<rectangle x1="0.889" y1="-0.8763" x2="1.6391" y2="0.8738" layer="51"/>
<rectangle x1="-0.3" y1="-0.7" x2="0.3" y2="0.7" layer="35"/>
</package>
<package name="R1210">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="-0.913" y1="1.219" x2="0.939" y2="1.219" width="0.1524" layer="51"/>
<wire x1="-0.913" y1="-1.219" x2="0.939" y2="-1.219" width="0.1524" layer="51"/>
<wire x1="-2.473" y1="1.483" x2="2.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="1.483" x2="2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-1.483" x2="-2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-1.483" x2="-2.473" y2="1.483" width="0.0508" layer="39"/>
<smd name="1" x="-1.4" y="0" dx="1.6" dy="2.7" layer="1"/>
<smd name="2" x="1.4" y="0" dx="1.6" dy="2.7" layer="1"/>
<text x="-2.54" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.651" y1="-1.3081" x2="-0.9009" y2="1.2918" layer="51"/>
<rectangle x1="0.9144" y1="-1.3081" x2="1.6645" y2="1.2918" layer="51"/>
<rectangle x1="-0.3" y1="-0.8999" x2="0.3" y2="0.8999" layer="35"/>
</package>
<package name="R1210W">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
wave soldering</description>
<wire x1="-0.913" y1="1.219" x2="0.939" y2="1.219" width="0.1524" layer="51"/>
<wire x1="-0.913" y1="-1.219" x2="0.939" y2="-1.219" width="0.1524" layer="51"/>
<wire x1="-2.473" y1="1.483" x2="2.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="1.483" x2="2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-1.483" x2="-2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-1.483" x2="-2.473" y2="1.483" width="0.0508" layer="39"/>
<smd name="1" x="-1.499" y="0" dx="1.8" dy="1.8" layer="1"/>
<smd name="2" x="1.499" y="0" dx="1.8" dy="1.8" layer="1"/>
<text x="-2.54" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.651" y1="-1.3081" x2="-0.9009" y2="1.2918" layer="51"/>
<rectangle x1="0.9144" y1="-1.3081" x2="1.6645" y2="1.2918" layer="51"/>
<rectangle x1="-0.3" y1="-0.8001" x2="0.3" y2="0.8001" layer="35"/>
</package>
<package name="R2010">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="-1.662" y1="1.245" x2="1.662" y2="1.245" width="0.1524" layer="51"/>
<wire x1="-1.637" y1="-1.245" x2="1.687" y2="-1.245" width="0.1524" layer="51"/>
<wire x1="-3.473" y1="1.483" x2="3.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="3.473" y1="1.483" x2="3.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="3.473" y1="-1.483" x2="-3.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-3.473" y1="-1.483" x2="-3.473" y2="1.483" width="0.0508" layer="39"/>
<smd name="1" x="-2.2" y="0" dx="1.8" dy="2.7" layer="1"/>
<smd name="2" x="2.2" y="0" dx="1.8" dy="2.7" layer="1"/>
<text x="-3.175" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.175" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-2.4892" y1="-1.3208" x2="-1.6393" y2="1.3292" layer="51"/>
<rectangle x1="1.651" y1="-1.3208" x2="2.5009" y2="1.3292" layer="51"/>
</package>
<package name="R2010W">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
wave soldering</description>
<wire x1="-1.662" y1="1.245" x2="1.662" y2="1.245" width="0.1524" layer="51"/>
<wire x1="-1.637" y1="-1.245" x2="1.687" y2="-1.245" width="0.1524" layer="51"/>
<wire x1="-3.473" y1="1.483" x2="3.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="3.473" y1="1.483" x2="3.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="3.473" y1="-1.483" x2="-3.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-3.473" y1="-1.483" x2="-3.473" y2="1.483" width="0.0508" layer="39"/>
<smd name="1" x="-2.311" y="0" dx="2" dy="1.8" layer="1"/>
<smd name="2" x="2.311" y="0" dx="2" dy="1.8" layer="1"/>
<text x="-2.54" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-2.4892" y1="-1.3208" x2="-1.6393" y2="1.3292" layer="51"/>
<rectangle x1="1.651" y1="-1.3208" x2="2.5009" y2="1.3292" layer="51"/>
</package>
<package name="R2012">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="-0.41" y1="0.635" x2="0.41" y2="0.635" width="0.1524" layer="51"/>
<wire x1="-0.41" y1="-0.635" x2="0.41" y2="-0.635" width="0.1524" layer="51"/>
<wire x1="-1.973" y1="0.983" x2="1.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="0.983" x2="1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="-0.983" x2="-1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.973" y1="-0.983" x2="-1.973" y2="0.983" width="0.0508" layer="39"/>
<smd name="1" x="-0.85" y="0" dx="1.3" dy="1.5" layer="1"/>
<smd name="2" x="0.85" y="0" dx="1.3" dy="1.5" layer="1"/>
<text x="-0.635" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="0.4064" y1="-0.6985" x2="1.0564" y2="0.7015" layer="51"/>
<rectangle x1="-1.0668" y1="-0.6985" x2="-0.4168" y2="0.7015" layer="51"/>
<rectangle x1="-0.1001" y1="-0.5999" x2="0.1001" y2="0.5999" layer="35"/>
</package>
<package name="R2012W">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
wave soldering</description>
<wire x1="-0.41" y1="0.635" x2="0.41" y2="0.635" width="0.1524" layer="51"/>
<wire x1="-0.41" y1="-0.635" x2="0.41" y2="-0.635" width="0.1524" layer="51"/>
<wire x1="-1.973" y1="0.983" x2="1.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="0.983" x2="1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="-0.983" x2="-1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.973" y1="-0.983" x2="-1.973" y2="0.983" width="0.0508" layer="39"/>
<smd name="1" x="-0.94" y="0" dx="1.5" dy="1" layer="1"/>
<smd name="2" x="0.94" y="0" dx="1.5" dy="1" layer="1"/>
<text x="-0.635" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="0.4064" y1="-0.6985" x2="1.0564" y2="0.7015" layer="51"/>
<rectangle x1="-1.0668" y1="-0.6985" x2="-0.4168" y2="0.7015" layer="51"/>
<rectangle x1="-0.1001" y1="-0.5999" x2="0.1001" y2="0.5999" layer="35"/>
</package>
<package name="R2512">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="-2.362" y1="1.473" x2="2.387" y2="1.473" width="0.1524" layer="51"/>
<wire x1="-2.362" y1="-1.473" x2="2.387" y2="-1.473" width="0.1524" layer="51"/>
<wire x1="-3.973" y1="1.983" x2="3.973" y2="1.983" width="0.0508" layer="39"/>
<wire x1="3.973" y1="1.983" x2="3.973" y2="-1.983" width="0.0508" layer="39"/>
<wire x1="3.973" y1="-1.983" x2="-3.973" y2="-1.983" width="0.0508" layer="39"/>
<wire x1="-3.973" y1="-1.983" x2="-3.973" y2="1.983" width="0.0508" layer="39"/>
<smd name="1" x="-2.8" y="0" dx="1.8" dy="3.2" layer="1"/>
<smd name="2" x="2.8" y="0" dx="1.8" dy="3.2" layer="1"/>
<text x="-2.54" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-3.2004" y1="-1.5494" x2="-2.3505" y2="1.5507" layer="51"/>
<rectangle x1="2.3622" y1="-1.5494" x2="3.2121" y2="1.5507" layer="51"/>
<rectangle x1="-0.5001" y1="-1" x2="0.5001" y2="1" layer="35"/>
</package>
<package name="R2512W">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
wave soldering</description>
<wire x1="-2.362" y1="1.473" x2="2.387" y2="1.473" width="0.1524" layer="51"/>
<wire x1="-2.362" y1="-1.473" x2="2.387" y2="-1.473" width="0.1524" layer="51"/>
<wire x1="-3.973" y1="1.983" x2="3.973" y2="1.983" width="0.0508" layer="39"/>
<wire x1="3.973" y1="1.983" x2="3.973" y2="-1.983" width="0.0508" layer="39"/>
<wire x1="3.973" y1="-1.983" x2="-3.973" y2="-1.983" width="0.0508" layer="39"/>
<wire x1="-3.973" y1="-1.983" x2="-3.973" y2="1.983" width="0.0508" layer="39"/>
<smd name="1" x="-2.896" y="0" dx="2" dy="2.1" layer="1"/>
<smd name="2" x="2.896" y="0" dx="2" dy="2.1" layer="1"/>
<text x="-1.905" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.905" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-3.2004" y1="-1.5494" x2="-2.3505" y2="1.5507" layer="51"/>
<rectangle x1="2.3622" y1="-1.5494" x2="3.2121" y2="1.5507" layer="51"/>
<rectangle x1="-0.5001" y1="-1" x2="0.5001" y2="1" layer="35"/>
</package>
<package name="R3216">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="-0.913" y1="0.8" x2="0.888" y2="0.8" width="0.1524" layer="51"/>
<wire x1="-0.913" y1="-0.8" x2="0.888" y2="-0.8" width="0.1524" layer="51"/>
<wire x1="-2.473" y1="0.983" x2="2.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="0.983" x2="2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-0.983" x2="-2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-0.983" x2="-2.473" y2="0.983" width="0.0508" layer="39"/>
<smd name="1" x="-1.4" y="0" dx="1.6" dy="1.8" layer="1"/>
<smd name="2" x="1.4" y="0" dx="1.6" dy="1.8" layer="1"/>
<text x="-1.905" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.905" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.651" y1="-0.8763" x2="-0.9009" y2="0.8738" layer="51"/>
<rectangle x1="0.889" y1="-0.8763" x2="1.6391" y2="0.8738" layer="51"/>
<rectangle x1="-0.3" y1="-0.7" x2="0.3" y2="0.7" layer="35"/>
</package>
<package name="R3216W">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
wave soldering</description>
<wire x1="-0.913" y1="0.8" x2="0.888" y2="0.8" width="0.1524" layer="51"/>
<wire x1="-0.913" y1="-0.8" x2="0.888" y2="-0.8" width="0.1524" layer="51"/>
<wire x1="-2.473" y1="0.983" x2="2.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="0.983" x2="2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-0.983" x2="-2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-0.983" x2="-2.473" y2="0.983" width="0.0508" layer="39"/>
<smd name="1" x="-1.499" y="0" dx="1.8" dy="1.2" layer="1"/>
<smd name="2" x="1.499" y="0" dx="1.8" dy="1.2" layer="1"/>
<text x="-1.905" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.905" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.651" y1="-0.8763" x2="-0.9009" y2="0.8738" layer="51"/>
<rectangle x1="0.889" y1="-0.8763" x2="1.6391" y2="0.8738" layer="51"/>
<rectangle x1="-0.3" y1="-0.7" x2="0.3" y2="0.7" layer="35"/>
</package>
<package name="R3225">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="-0.913" y1="1.219" x2="0.939" y2="1.219" width="0.1524" layer="51"/>
<wire x1="-0.913" y1="-1.219" x2="0.939" y2="-1.219" width="0.1524" layer="51"/>
<wire x1="-2.473" y1="1.483" x2="2.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="1.483" x2="2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-1.483" x2="-2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-1.483" x2="-2.473" y2="1.483" width="0.0508" layer="39"/>
<smd name="1" x="-1.4" y="0" dx="1.6" dy="2.7" layer="1"/>
<smd name="2" x="1.4" y="0" dx="1.6" dy="2.7" layer="1"/>
<text x="-2.54" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.651" y1="-1.3081" x2="-0.9009" y2="1.2918" layer="51"/>
<rectangle x1="0.9144" y1="-1.3081" x2="1.6645" y2="1.2918" layer="51"/>
<rectangle x1="-0.3" y1="-1" x2="0.3" y2="1" layer="35"/>
</package>
<package name="R3225W">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
wave soldering</description>
<wire x1="-0.913" y1="1.219" x2="0.939" y2="1.219" width="0.1524" layer="51"/>
<wire x1="-0.913" y1="-1.219" x2="0.939" y2="-1.219" width="0.1524" layer="51"/>
<wire x1="-2.473" y1="1.483" x2="2.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="1.483" x2="2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-1.483" x2="-2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-1.483" x2="-2.473" y2="1.483" width="0.0508" layer="39"/>
<smd name="1" x="-1.499" y="0" dx="1.8" dy="1.8" layer="1"/>
<smd name="2" x="1.499" y="0" dx="1.8" dy="1.8" layer="1"/>
<text x="-1.905" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.905" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.651" y1="-1.3081" x2="-0.9009" y2="1.2918" layer="51"/>
<rectangle x1="0.9144" y1="-1.3081" x2="1.6645" y2="1.2918" layer="51"/>
<rectangle x1="-0.3" y1="-1" x2="0.3" y2="1" layer="35"/>
</package>
<package name="R5025">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="-1.662" y1="1.245" x2="1.662" y2="1.245" width="0.1524" layer="51"/>
<wire x1="-1.637" y1="-1.245" x2="1.687" y2="-1.245" width="0.1524" layer="51"/>
<wire x1="-3.473" y1="1.483" x2="3.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="3.473" y1="1.483" x2="3.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="3.473" y1="-1.483" x2="-3.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-3.473" y1="-1.483" x2="-3.473" y2="1.483" width="0.0508" layer="39"/>
<smd name="1" x="-2.2" y="0" dx="1.8" dy="2.7" layer="1"/>
<smd name="2" x="2.2" y="0" dx="1.8" dy="2.7" layer="1"/>
<text x="-3.175" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.175" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-2.4892" y1="-1.3208" x2="-1.6393" y2="1.3292" layer="51"/>
<rectangle x1="1.651" y1="-1.3208" x2="2.5009" y2="1.3292" layer="51"/>
<rectangle x1="-0.5001" y1="-1" x2="0.5001" y2="1" layer="35"/>
</package>
<package name="R5025W">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
wave soldering</description>
<wire x1="-1.662" y1="1.245" x2="1.662" y2="1.245" width="0.1524" layer="51"/>
<wire x1="-1.637" y1="-1.245" x2="1.687" y2="-1.245" width="0.1524" layer="51"/>
<wire x1="-3.473" y1="1.483" x2="3.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="3.473" y1="1.483" x2="3.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="3.473" y1="-1.483" x2="-3.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-3.473" y1="-1.483" x2="-3.473" y2="1.483" width="0.0508" layer="39"/>
<smd name="1" x="-2.311" y="0" dx="2" dy="1.8" layer="1"/>
<smd name="2" x="2.311" y="0" dx="2" dy="1.8" layer="1"/>
<text x="-3.175" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.175" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-2.4892" y1="-1.3208" x2="-1.6393" y2="1.3292" layer="51"/>
<rectangle x1="1.651" y1="-1.3208" x2="2.5009" y2="1.3292" layer="51"/>
<rectangle x1="-0.5001" y1="-1" x2="0.5001" y2="1" layer="35"/>
</package>
<package name="R6332">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
Source: http://download.siliconexpert.com/pdfs/2005/02/24/Semi_Ap/2/VSH/Resistor/dcrcwfre.pdf</description>
<wire x1="-2.362" y1="1.473" x2="2.387" y2="1.473" width="0.1524" layer="51"/>
<wire x1="-2.362" y1="-1.473" x2="2.387" y2="-1.473" width="0.1524" layer="51"/>
<wire x1="-3.973" y1="1.983" x2="3.973" y2="1.983" width="0.0508" layer="39"/>
<wire x1="3.973" y1="1.983" x2="3.973" y2="-1.983" width="0.0508" layer="39"/>
<wire x1="3.973" y1="-1.983" x2="-3.973" y2="-1.983" width="0.0508" layer="39"/>
<wire x1="-3.973" y1="-1.983" x2="-3.973" y2="1.983" width="0.0508" layer="39"/>
<smd name="1" x="-3.1" y="0" dx="1" dy="3.2" layer="1"/>
<smd name="2" x="3.1" y="0" dx="1" dy="3.2" layer="1"/>
<text x="-2.54" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-3.2004" y1="-1.5494" x2="-2.3505" y2="1.5507" layer="51"/>
<rectangle x1="2.3622" y1="-1.5494" x2="3.2121" y2="1.5507" layer="51"/>
<rectangle x1="-0.5001" y1="-1" x2="0.5001" y2="1" layer="35"/>
</package>
<package name="R6332W">
<description>&lt;b&gt;RESISTOR&lt;/b&gt; wave soldering&lt;p&gt;
Source: http://download.siliconexpert.com/pdfs/2005/02/24/Semi_Ap/2/VSH/Resistor/dcrcwfre.pdf</description>
<wire x1="-2.362" y1="1.473" x2="2.387" y2="1.473" width="0.1524" layer="51"/>
<wire x1="-2.362" y1="-1.473" x2="2.387" y2="-1.473" width="0.1524" layer="51"/>
<wire x1="-3.973" y1="1.983" x2="3.973" y2="1.983" width="0.0508" layer="39"/>
<wire x1="3.973" y1="1.983" x2="3.973" y2="-1.983" width="0.0508" layer="39"/>
<wire x1="3.973" y1="-1.983" x2="-3.973" y2="-1.983" width="0.0508" layer="39"/>
<wire x1="-3.973" y1="-1.983" x2="-3.973" y2="1.983" width="0.0508" layer="39"/>
<smd name="1" x="-3.196" y="0" dx="1.2" dy="3.2" layer="1"/>
<smd name="2" x="3.196" y="0" dx="1.2" dy="3.2" layer="1"/>
<text x="-2.54" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-3.2004" y1="-1.5494" x2="-2.3505" y2="1.5507" layer="51"/>
<rectangle x1="2.3622" y1="-1.5494" x2="3.2121" y2="1.5507" layer="51"/>
<rectangle x1="-0.5001" y1="-1" x2="0.5001" y2="1" layer="35"/>
</package>
<package name="M0805">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
MELF 0.10 W</description>
<wire x1="-1.973" y1="0.983" x2="1.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="-0.983" x2="-1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.973" y1="-0.983" x2="-1.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="0.983" x2="1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="0.7112" y1="0.635" x2="-0.7112" y2="0.635" width="0.1524" layer="51"/>
<wire x1="0.7112" y1="-0.635" x2="-0.7112" y2="-0.635" width="0.1524" layer="51"/>
<smd name="1" x="-0.95" y="0" dx="1.3" dy="1.6" layer="1"/>
<smd name="2" x="0.95" y="0" dx="1.3" dy="1.6" layer="1"/>
<text x="-1.27" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.0414" y1="-0.7112" x2="-0.6858" y2="0.7112" layer="51"/>
<rectangle x1="0.6858" y1="-0.7112" x2="1.0414" y2="0.7112" layer="51"/>
<rectangle x1="-0.1999" y1="-0.5999" x2="0.1999" y2="0.5999" layer="35"/>
</package>
<package name="M1206">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
MELF 0.25 W</description>
<wire x1="-2.473" y1="1.483" x2="2.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-1.483" x2="-2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-1.483" x2="-2.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="1.483" x2="2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="1.143" y1="0.8382" x2="-1.143" y2="0.8382" width="0.1524" layer="51"/>
<wire x1="1.143" y1="-0.8382" x2="-1.143" y2="-0.8382" width="0.1524" layer="51"/>
<smd name="1" x="-1.4" y="0" dx="1.6" dy="2" layer="1"/>
<smd name="2" x="1.4" y="0" dx="1.6" dy="2" layer="1"/>
<text x="-1.27" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.7018" y1="-0.9144" x2="-1.1176" y2="0.9144" layer="51"/>
<rectangle x1="1.1176" y1="-0.9144" x2="1.7018" y2="0.9144" layer="51"/>
<rectangle x1="-0.3" y1="-0.8001" x2="0.3" y2="0.8001" layer="35"/>
</package>
<package name="M1406">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
MELF 0.12 W</description>
<wire x1="-2.973" y1="0.983" x2="2.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.973" y1="-0.983" x2="-2.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-2.973" y1="-0.983" x2="-2.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.973" y1="0.983" x2="2.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.3208" y1="0.762" x2="-1.3208" y2="0.762" width="0.1524" layer="51"/>
<wire x1="1.3208" y1="-0.762" x2="-1.3208" y2="-0.762" width="0.1524" layer="51"/>
<smd name="1" x="-1.7" y="0" dx="1.4" dy="1.8" layer="1"/>
<smd name="2" x="1.7" y="0" dx="1.4" dy="1.8" layer="1"/>
<text x="-1.27" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.8542" y1="-0.8382" x2="-1.2954" y2="0.8382" layer="51"/>
<rectangle x1="1.2954" y1="-0.8382" x2="1.8542" y2="0.8382" layer="51"/>
<rectangle x1="-0.3" y1="-0.7" x2="0.3" y2="0.7" layer="35"/>
</package>
<package name="M2012">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
MELF 0.10 W</description>
<wire x1="-1.973" y1="0.983" x2="1.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="-0.983" x2="-1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.973" y1="-0.983" x2="-1.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="0.983" x2="1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="0.7112" y1="0.635" x2="-0.7112" y2="0.635" width="0.1524" layer="51"/>
<wire x1="0.7112" y1="-0.635" x2="-0.7112" y2="-0.635" width="0.1524" layer="51"/>
<smd name="1" x="-0.95" y="0" dx="1.3" dy="1.6" layer="1"/>
<smd name="2" x="0.95" y="0" dx="1.3" dy="1.6" layer="1"/>
<text x="-1.27" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.0414" y1="-0.7112" x2="-0.6858" y2="0.7112" layer="51"/>
<rectangle x1="0.6858" y1="-0.7112" x2="1.0414" y2="0.7112" layer="51"/>
<rectangle x1="-0.1999" y1="-0.5999" x2="0.1999" y2="0.5999" layer="35"/>
</package>
<package name="M2309">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
MELF 0.25 W</description>
<wire x1="-4.473" y1="1.483" x2="4.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="4.473" y1="-1.483" x2="-4.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-4.473" y1="-1.483" x2="-4.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="4.473" y1="1.483" x2="4.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="2.413" y1="1.1684" x2="-2.4384" y2="1.1684" width="0.1524" layer="51"/>
<wire x1="2.413" y1="-1.1684" x2="-2.413" y2="-1.1684" width="0.1524" layer="51"/>
<smd name="1" x="-2.85" y="0" dx="1.5" dy="2.6" layer="1"/>
<smd name="2" x="2.85" y="0" dx="1.5" dy="2.6" layer="1"/>
<text x="-1.905" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-3.048" y1="-1.2446" x2="-2.3876" y2="1.2446" layer="51"/>
<rectangle x1="2.3876" y1="-1.2446" x2="3.048" y2="1.2446" layer="51"/>
<rectangle x1="-0.5001" y1="-1" x2="0.5001" y2="1" layer="35"/>
</package>
<package name="M3216">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
MELF 0.25 W</description>
<wire x1="-2.473" y1="1.483" x2="2.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-1.483" x2="-2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-1.483" x2="-2.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="1.483" x2="2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="1.143" y1="0.8382" x2="-1.143" y2="0.8382" width="0.1524" layer="51"/>
<wire x1="1.143" y1="-0.8382" x2="-1.143" y2="-0.8382" width="0.1524" layer="51"/>
<smd name="1" x="-1.4" y="0" dx="1.6" dy="2" layer="1"/>
<smd name="2" x="1.4" y="0" dx="1.6" dy="2" layer="1"/>
<text x="-1.27" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.7018" y1="-0.9144" x2="-1.1176" y2="0.9144" layer="51"/>
<rectangle x1="1.1176" y1="-0.9144" x2="1.7018" y2="0.9144" layer="51"/>
<rectangle x1="-0.3" y1="-0.8001" x2="0.3" y2="0.8001" layer="35"/>
</package>
<package name="M3516">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
MELF 0.12 W</description>
<wire x1="-2.973" y1="0.983" x2="2.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.973" y1="-0.983" x2="-2.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-2.973" y1="-0.983" x2="-2.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.973" y1="0.983" x2="2.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.3208" y1="0.762" x2="-1.3208" y2="0.762" width="0.1524" layer="51"/>
<wire x1="1.3208" y1="-0.762" x2="-1.3208" y2="-0.762" width="0.1524" layer="51"/>
<smd name="1" x="-1.7" y="0" dx="1.4" dy="1.8" layer="1"/>
<smd name="2" x="1.7" y="0" dx="1.4" dy="1.8" layer="1"/>
<text x="-1.27" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.8542" y1="-0.8382" x2="-1.2954" y2="0.8382" layer="51"/>
<rectangle x1="1.2954" y1="-0.8382" x2="1.8542" y2="0.8382" layer="51"/>
<rectangle x1="-0.4001" y1="-0.7" x2="0.4001" y2="0.7" layer="35"/>
</package>
<package name="M5923">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
MELF 0.25 W</description>
<wire x1="-4.473" y1="1.483" x2="4.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="4.473" y1="-1.483" x2="-4.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-4.473" y1="-1.483" x2="-4.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="4.473" y1="1.483" x2="4.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="2.413" y1="1.1684" x2="-2.4384" y2="1.1684" width="0.1524" layer="51"/>
<wire x1="2.413" y1="-1.1684" x2="-2.413" y2="-1.1684" width="0.1524" layer="51"/>
<smd name="1" x="-2.85" y="0" dx="1.5" dy="2.6" layer="1"/>
<smd name="2" x="2.85" y="0" dx="1.5" dy="2.6" layer="1"/>
<text x="-1.905" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-3.048" y1="-1.2446" x2="-2.3876" y2="1.2446" layer="51"/>
<rectangle x1="2.3876" y1="-1.2446" x2="3.048" y2="1.2446" layer="51"/>
<rectangle x1="-0.5001" y1="-1" x2="0.5001" y2="1" layer="35"/>
</package>
<package name="0204/5">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0204, grid 5 mm</description>
<wire x1="2.54" y1="0" x2="2.032" y2="0" width="0.508" layer="51"/>
<wire x1="-2.54" y1="0" x2="-2.032" y2="0" width="0.508" layer="51"/>
<wire x1="-1.778" y1="0.635" x2="-1.524" y2="0.889" width="0.1524" layer="21" curve="-90"/>
<wire x1="-1.778" y1="-0.635" x2="-1.524" y2="-0.889" width="0.1524" layer="21" curve="90"/>
<wire x1="1.524" y1="-0.889" x2="1.778" y2="-0.635" width="0.1524" layer="21" curve="90"/>
<wire x1="1.524" y1="0.889" x2="1.778" y2="0.635" width="0.1524" layer="21" curve="-90"/>
<wire x1="-1.778" y1="-0.635" x2="-1.778" y2="0.635" width="0.1524" layer="51"/>
<wire x1="-1.524" y1="0.889" x2="-1.27" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-1.143" y1="0.762" x2="-1.27" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="-0.889" x2="-1.27" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="-1.143" y1="-0.762" x2="-1.27" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="1.143" y1="0.762" x2="1.27" y2="0.889" width="0.1524" layer="21"/>
<wire x1="1.143" y1="0.762" x2="-1.143" y2="0.762" width="0.1524" layer="21"/>
<wire x1="1.143" y1="-0.762" x2="1.27" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="1.143" y1="-0.762" x2="-1.143" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="1.524" y1="0.889" x2="1.27" y2="0.889" width="0.1524" layer="21"/>
<wire x1="1.524" y1="-0.889" x2="1.27" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="1.778" y1="-0.635" x2="1.778" y2="0.635" width="0.1524" layer="51"/>
<pad name="1" x="-2.54" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.0066" y="1.1684" size="0.9906" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.1336" y="-2.3114" size="0.9906" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-2.032" y1="-0.254" x2="-1.778" y2="0.254" layer="51"/>
<rectangle x1="1.778" y1="-0.254" x2="2.032" y2="0.254" layer="51"/>
</package>
<package name="0204/7">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0204, grid 7.5 mm</description>
<wire x1="3.81" y1="0" x2="2.921" y2="0" width="0.508" layer="51"/>
<wire x1="-3.81" y1="0" x2="-2.921" y2="0" width="0.508" layer="51"/>
<wire x1="-2.54" y1="0.762" x2="-2.286" y2="1.016" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.54" y1="-0.762" x2="-2.286" y2="-1.016" width="0.1524" layer="21" curve="90"/>
<wire x1="2.286" y1="-1.016" x2="2.54" y2="-0.762" width="0.1524" layer="21" curve="90"/>
<wire x1="2.286" y1="1.016" x2="2.54" y2="0.762" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.54" y1="-0.762" x2="-2.54" y2="0.762" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="1.016" x2="-1.905" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-1.778" y1="0.889" x2="-1.905" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="-1.016" x2="-1.905" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-1.778" y1="-0.889" x2="-1.905" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="1.778" y1="0.889" x2="1.905" y2="1.016" width="0.1524" layer="21"/>
<wire x1="1.778" y1="0.889" x2="-1.778" y2="0.889" width="0.1524" layer="21"/>
<wire x1="1.778" y1="-0.889" x2="1.905" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="1.778" y1="-0.889" x2="-1.778" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="2.286" y1="1.016" x2="1.905" y2="1.016" width="0.1524" layer="21"/>
<wire x1="2.286" y1="-1.016" x2="1.905" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-0.762" x2="2.54" y2="0.762" width="0.1524" layer="21"/>
<pad name="1" x="-3.81" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="3.81" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.54" y="1.2954" size="0.9906" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.6256" y="-0.4826" size="0.9906" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="2.54" y1="-0.254" x2="2.921" y2="0.254" layer="21"/>
<rectangle x1="-2.921" y1="-0.254" x2="-2.54" y2="0.254" layer="21"/>
</package>
<package name="0204V">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0204, grid 2.5 mm</description>
<wire x1="-1.27" y1="0" x2="1.27" y2="0" width="0.508" layer="51"/>
<wire x1="-0.127" y1="0" x2="0.127" y2="0" width="0.508" layer="21"/>
<circle x="-1.27" y="0" radius="0.889" width="0.1524" layer="51"/>
<circle x="-1.27" y="0" radius="0.635" width="0.0508" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.1336" y="1.1684" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.1336" y="-2.3114" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="0207/10">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0207, grid 10 mm</description>
<wire x1="5.08" y1="0" x2="4.064" y2="0" width="0.6096" layer="51"/>
<wire x1="-5.08" y1="0" x2="-4.064" y2="0" width="0.6096" layer="51"/>
<wire x1="-3.175" y1="0.889" x2="-2.921" y2="1.143" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-2.921" y2="-1.143" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="-1.143" x2="3.175" y2="-0.889" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="1.143" x2="3.175" y2="0.889" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-3.175" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="1.143" x2="-2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="1.016" x2="-2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="-1.143" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="-1.016" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="-2.413" y2="1.016" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="-2.413" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="2.921" y1="1.143" x2="2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.921" y1="-1.143" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-0.889" x2="3.175" y2="0.889" width="0.1524" layer="21"/>
<pad name="1" x="-5.08" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="5.08" y="0" drill="0.8128" shape="octagon"/>
<text x="-3.048" y="1.524" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.2606" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="3.175" y1="-0.3048" x2="4.0386" y2="0.3048" layer="21"/>
<rectangle x1="-4.0386" y1="-0.3048" x2="-3.175" y2="0.3048" layer="21"/>
</package>
<package name="0207/12">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0207, grid 12 mm</description>
<wire x1="6.35" y1="0" x2="5.334" y2="0" width="0.6096" layer="51"/>
<wire x1="-6.35" y1="0" x2="-5.334" y2="0" width="0.6096" layer="51"/>
<wire x1="-3.175" y1="0.889" x2="-2.921" y2="1.143" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-2.921" y2="-1.143" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="-1.143" x2="3.175" y2="-0.889" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="1.143" x2="3.175" y2="0.889" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-3.175" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="1.143" x2="-2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="1.016" x2="-2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="-1.143" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="-1.016" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="-2.413" y2="1.016" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="-2.413" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="2.921" y1="1.143" x2="2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.921" y1="-1.143" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-0.889" x2="3.175" y2="0.889" width="0.1524" layer="21"/>
<wire x1="4.445" y1="0" x2="4.064" y2="0" width="0.6096" layer="21"/>
<wire x1="-4.445" y1="0" x2="-4.064" y2="0" width="0.6096" layer="21"/>
<pad name="1" x="-6.35" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="6.35" y="0" drill="0.8128" shape="octagon"/>
<text x="-3.175" y="1.397" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.286" y="-0.6858" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="3.175" y1="-0.3048" x2="4.0386" y2="0.3048" layer="21"/>
<rectangle x1="-4.0386" y1="-0.3048" x2="-3.175" y2="0.3048" layer="21"/>
<rectangle x1="4.445" y1="-0.3048" x2="5.3086" y2="0.3048" layer="21"/>
<rectangle x1="-5.3086" y1="-0.3048" x2="-4.445" y2="0.3048" layer="21"/>
</package>
<package name="0207/15">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0207, grid 15mm</description>
<wire x1="7.62" y1="0" x2="6.604" y2="0" width="0.6096" layer="51"/>
<wire x1="-7.62" y1="0" x2="-6.604" y2="0" width="0.6096" layer="51"/>
<wire x1="-3.175" y1="0.889" x2="-2.921" y2="1.143" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-2.921" y2="-1.143" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="-1.143" x2="3.175" y2="-0.889" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="1.143" x2="3.175" y2="0.889" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-3.175" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="1.143" x2="-2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="1.016" x2="-2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="-1.143" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="-1.016" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="-2.413" y2="1.016" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="-2.413" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="2.921" y1="1.143" x2="2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.921" y1="-1.143" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-0.889" x2="3.175" y2="0.889" width="0.1524" layer="21"/>
<wire x1="5.715" y1="0" x2="4.064" y2="0" width="0.6096" layer="21"/>
<wire x1="-5.715" y1="0" x2="-4.064" y2="0" width="0.6096" layer="21"/>
<pad name="1" x="-7.62" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="7.62" y="0" drill="0.8128" shape="octagon"/>
<text x="-3.175" y="1.397" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.286" y="-0.6858" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="3.175" y1="-0.3048" x2="4.0386" y2="0.3048" layer="21"/>
<rectangle x1="-4.0386" y1="-0.3048" x2="-3.175" y2="0.3048" layer="21"/>
<rectangle x1="5.715" y1="-0.3048" x2="6.5786" y2="0.3048" layer="21"/>
<rectangle x1="-6.5786" y1="-0.3048" x2="-5.715" y2="0.3048" layer="21"/>
</package>
<package name="0207/2V">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0207, grid 2.5 mm</description>
<wire x1="-1.27" y1="0" x2="-0.381" y2="0" width="0.6096" layer="51"/>
<wire x1="-0.254" y1="0" x2="0.254" y2="0" width="0.6096" layer="21"/>
<wire x1="0.381" y1="0" x2="1.27" y2="0" width="0.6096" layer="51"/>
<circle x="-1.27" y="0" radius="1.27" width="0.1524" layer="21"/>
<circle x="-1.27" y="0" radius="1.016" width="0.1524" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-0.0508" y="1.016" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-0.0508" y="-2.2352" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="0207/5V">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0207, grid 5 mm</description>
<wire x1="-2.54" y1="0" x2="-0.889" y2="0" width="0.6096" layer="51"/>
<wire x1="-0.762" y1="0" x2="0.762" y2="0" width="0.6096" layer="21"/>
<wire x1="0.889" y1="0" x2="2.54" y2="0" width="0.6096" layer="51"/>
<circle x="-2.54" y="0" radius="1.27" width="0.1016" layer="21"/>
<circle x="-2.54" y="0" radius="1.016" width="0.1524" layer="51"/>
<pad name="1" x="-2.54" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="0.8128" shape="octagon"/>
<text x="-1.143" y="0.889" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.143" y="-2.159" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="0207/7">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0207, grid 7.5 mm</description>
<wire x1="-3.81" y1="0" x2="-3.429" y2="0" width="0.6096" layer="51"/>
<wire x1="-3.175" y1="0.889" x2="-2.921" y2="1.143" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-2.921" y2="-1.143" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="-1.143" x2="3.175" y2="-0.889" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="1.143" x2="3.175" y2="0.889" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-3.175" y2="0.889" width="0.1524" layer="51"/>
<wire x1="-2.921" y1="1.143" x2="-2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="1.016" x2="-2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="-1.143" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="-1.016" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="-2.413" y2="1.016" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="-2.413" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="2.921" y1="1.143" x2="2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.921" y1="-1.143" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-0.889" x2="3.175" y2="0.889" width="0.1524" layer="51"/>
<wire x1="3.429" y1="0" x2="3.81" y2="0" width="0.6096" layer="51"/>
<pad name="1" x="-3.81" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="3.81" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.54" y="1.397" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.286" y="-0.5588" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-3.429" y1="-0.3048" x2="-3.175" y2="0.3048" layer="51"/>
<rectangle x1="3.175" y1="-0.3048" x2="3.429" y2="0.3048" layer="51"/>
</package>
<package name="0309/10">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0309, grid 10mm</description>
<wire x1="-4.699" y1="0" x2="-5.08" y2="0" width="0.6096" layer="51"/>
<wire x1="-4.318" y1="1.27" x2="-4.064" y2="1.524" width="0.1524" layer="21" curve="-90"/>
<wire x1="-4.318" y1="-1.27" x2="-4.064" y2="-1.524" width="0.1524" layer="21" curve="90"/>
<wire x1="4.064" y1="-1.524" x2="4.318" y2="-1.27" width="0.1524" layer="21" curve="90"/>
<wire x1="4.064" y1="1.524" x2="4.318" y2="1.27" width="0.1524" layer="21" curve="-90"/>
<wire x1="-4.318" y1="-1.27" x2="-4.318" y2="1.27" width="0.1524" layer="51"/>
<wire x1="-4.064" y1="1.524" x2="-3.429" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-3.302" y1="1.397" x2="-3.429" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-4.064" y1="-1.524" x2="-3.429" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-3.302" y1="-1.397" x2="-3.429" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="3.302" y1="1.397" x2="3.429" y2="1.524" width="0.1524" layer="21"/>
<wire x1="3.302" y1="1.397" x2="-3.302" y2="1.397" width="0.1524" layer="21"/>
<wire x1="3.302" y1="-1.397" x2="3.429" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="3.302" y1="-1.397" x2="-3.302" y2="-1.397" width="0.1524" layer="21"/>
<wire x1="4.064" y1="1.524" x2="3.429" y2="1.524" width="0.1524" layer="21"/>
<wire x1="4.064" y1="-1.524" x2="3.429" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="4.318" y1="-1.27" x2="4.318" y2="1.27" width="0.1524" layer="51"/>
<wire x1="5.08" y1="0" x2="4.699" y2="0" width="0.6096" layer="51"/>
<pad name="1" x="-5.08" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="5.08" y="0" drill="0.8128" shape="octagon"/>
<text x="-4.191" y="1.905" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.175" y="-0.6858" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-4.6228" y1="-0.3048" x2="-4.318" y2="0.3048" layer="51"/>
<rectangle x1="4.318" y1="-0.3048" x2="4.6228" y2="0.3048" layer="51"/>
</package>
<package name="0309/12">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0309, grid 12.5 mm</description>
<wire x1="6.35" y1="0" x2="5.08" y2="0" width="0.6096" layer="51"/>
<wire x1="-6.35" y1="0" x2="-5.08" y2="0" width="0.6096" layer="51"/>
<wire x1="-4.318" y1="1.27" x2="-4.064" y2="1.524" width="0.1524" layer="21" curve="-90"/>
<wire x1="-4.318" y1="-1.27" x2="-4.064" y2="-1.524" width="0.1524" layer="21" curve="90"/>
<wire x1="4.064" y1="-1.524" x2="4.318" y2="-1.27" width="0.1524" layer="21" curve="90"/>
<wire x1="4.064" y1="1.524" x2="4.318" y2="1.27" width="0.1524" layer="21" curve="-90"/>
<wire x1="-4.318" y1="-1.27" x2="-4.318" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-4.064" y1="1.524" x2="-3.429" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-3.302" y1="1.397" x2="-3.429" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-4.064" y1="-1.524" x2="-3.429" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-3.302" y1="-1.397" x2="-3.429" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="3.302" y1="1.397" x2="3.429" y2="1.524" width="0.1524" layer="21"/>
<wire x1="3.302" y1="1.397" x2="-3.302" y2="1.397" width="0.1524" layer="21"/>
<wire x1="3.302" y1="-1.397" x2="3.429" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="3.302" y1="-1.397" x2="-3.302" y2="-1.397" width="0.1524" layer="21"/>
<wire x1="4.064" y1="1.524" x2="3.429" y2="1.524" width="0.1524" layer="21"/>
<wire x1="4.064" y1="-1.524" x2="3.429" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="4.318" y1="-1.27" x2="4.318" y2="1.27" width="0.1524" layer="21"/>
<pad name="1" x="-6.35" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="6.35" y="0" drill="0.8128" shape="octagon"/>
<text x="-4.191" y="1.905" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.175" y="-0.6858" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="4.318" y1="-0.3048" x2="5.1816" y2="0.3048" layer="21"/>
<rectangle x1="-5.1816" y1="-0.3048" x2="-4.318" y2="0.3048" layer="21"/>
</package>
<package name="0309V">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0309, grid 2.5 mm</description>
<wire x1="1.27" y1="0" x2="0.635" y2="0" width="0.6096" layer="51"/>
<wire x1="-0.635" y1="0" x2="-1.27" y2="0" width="0.6096" layer="51"/>
<circle x="-1.27" y="0" radius="1.524" width="0.1524" layer="21"/>
<circle x="-1.27" y="0" radius="0.762" width="0.1524" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="0.254" y="1.016" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="0.254" y="-2.2098" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="0.254" y1="-0.3048" x2="0.5588" y2="0.3048" layer="51"/>
<rectangle x1="-0.635" y1="-0.3048" x2="-0.3302" y2="0.3048" layer="51"/>
<rectangle x1="-0.3302" y1="-0.3048" x2="0.254" y2="0.3048" layer="21"/>
</package>
<package name="0411/12">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0411, grid 12.5 mm</description>
<wire x1="6.35" y1="0" x2="5.461" y2="0" width="0.762" layer="51"/>
<wire x1="-6.35" y1="0" x2="-5.461" y2="0" width="0.762" layer="51"/>
<wire x1="5.08" y1="-1.651" x2="5.08" y2="1.651" width="0.1524" layer="21"/>
<wire x1="4.699" y1="2.032" x2="5.08" y2="1.651" width="0.1524" layer="21" curve="-90"/>
<wire x1="-5.08" y1="-1.651" x2="-4.699" y2="-2.032" width="0.1524" layer="21" curve="90"/>
<wire x1="4.699" y1="-2.032" x2="5.08" y2="-1.651" width="0.1524" layer="21" curve="90"/>
<wire x1="-5.08" y1="1.651" x2="-4.699" y2="2.032" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.699" y1="2.032" x2="4.064" y2="2.032" width="0.1524" layer="21"/>
<wire x1="3.937" y1="1.905" x2="4.064" y2="2.032" width="0.1524" layer="21"/>
<wire x1="4.699" y1="-2.032" x2="4.064" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="3.937" y1="-1.905" x2="4.064" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="-3.937" y1="1.905" x2="-4.064" y2="2.032" width="0.1524" layer="21"/>
<wire x1="-3.937" y1="1.905" x2="3.937" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-3.937" y1="-1.905" x2="-4.064" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="-3.937" y1="-1.905" x2="3.937" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="1.651" x2="-5.08" y2="-1.651" width="0.1524" layer="21"/>
<wire x1="-4.699" y1="2.032" x2="-4.064" y2="2.032" width="0.1524" layer="21"/>
<wire x1="-4.699" y1="-2.032" x2="-4.064" y2="-2.032" width="0.1524" layer="21"/>
<pad name="1" x="-6.35" y="0" drill="0.9144" shape="octagon"/>
<pad name="2" x="6.35" y="0" drill="0.9144" shape="octagon"/>
<text x="-5.08" y="2.413" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.5814" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-5.3594" y1="-0.381" x2="-5.08" y2="0.381" layer="21"/>
<rectangle x1="5.08" y1="-0.381" x2="5.3594" y2="0.381" layer="21"/>
</package>
<package name="0411/15">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0411, grid 15 mm</description>
<wire x1="5.08" y1="-1.651" x2="5.08" y2="1.651" width="0.1524" layer="21"/>
<wire x1="4.699" y1="2.032" x2="5.08" y2="1.651" width="0.1524" layer="21" curve="-90"/>
<wire x1="-5.08" y1="-1.651" x2="-4.699" y2="-2.032" width="0.1524" layer="21" curve="90"/>
<wire x1="4.699" y1="-2.032" x2="5.08" y2="-1.651" width="0.1524" layer="21" curve="90"/>
<wire x1="-5.08" y1="1.651" x2="-4.699" y2="2.032" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.699" y1="2.032" x2="4.064" y2="2.032" width="0.1524" layer="21"/>
<wire x1="3.937" y1="1.905" x2="4.064" y2="2.032" width="0.1524" layer="21"/>
<wire x1="4.699" y1="-2.032" x2="4.064" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="3.937" y1="-1.905" x2="4.064" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="-3.937" y1="1.905" x2="-4.064" y2="2.032" width="0.1524" layer="21"/>
<wire x1="-3.937" y1="1.905" x2="3.937" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-3.937" y1="-1.905" x2="-4.064" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="-3.937" y1="-1.905" x2="3.937" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="1.651" x2="-5.08" y2="-1.651" width="0.1524" layer="21"/>
<wire x1="-4.699" y1="2.032" x2="-4.064" y2="2.032" width="0.1524" layer="21"/>
<wire x1="-4.699" y1="-2.032" x2="-4.064" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="0" x2="-6.35" y2="0" width="0.762" layer="51"/>
<wire x1="6.35" y1="0" x2="7.62" y2="0" width="0.762" layer="51"/>
<pad name="1" x="-7.62" y="0" drill="0.9144" shape="octagon"/>
<pad name="2" x="7.62" y="0" drill="0.9144" shape="octagon"/>
<text x="-5.08" y="2.413" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.5814" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="5.08" y1="-0.381" x2="6.477" y2="0.381" layer="21"/>
<rectangle x1="-6.477" y1="-0.381" x2="-5.08" y2="0.381" layer="21"/>
</package>
<package name="0411V">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0411, grid 3.81 mm</description>
<wire x1="1.27" y1="0" x2="0.3048" y2="0" width="0.762" layer="51"/>
<wire x1="-1.5748" y1="0" x2="-2.54" y2="0" width="0.762" layer="51"/>
<circle x="-2.54" y="0" radius="2.032" width="0.1524" layer="21"/>
<circle x="-2.54" y="0" radius="1.016" width="0.1524" layer="51"/>
<pad name="1" x="-2.54" y="0" drill="0.9144" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.9144" shape="octagon"/>
<text x="-0.508" y="1.143" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-0.5334" y="-2.413" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-1.4732" y1="-0.381" x2="0.2032" y2="0.381" layer="21"/>
</package>
<package name="0414/15">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0414, grid 15 mm</description>
<wire x1="7.62" y1="0" x2="6.604" y2="0" width="0.8128" layer="51"/>
<wire x1="-7.62" y1="0" x2="-6.604" y2="0" width="0.8128" layer="51"/>
<wire x1="-6.096" y1="1.905" x2="-5.842" y2="2.159" width="0.1524" layer="21" curve="-90"/>
<wire x1="-6.096" y1="-1.905" x2="-5.842" y2="-2.159" width="0.1524" layer="21" curve="90"/>
<wire x1="5.842" y1="-2.159" x2="6.096" y2="-1.905" width="0.1524" layer="21" curve="90"/>
<wire x1="5.842" y1="2.159" x2="6.096" y2="1.905" width="0.1524" layer="21" curve="-90"/>
<wire x1="-6.096" y1="-1.905" x2="-6.096" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-5.842" y1="2.159" x2="-4.953" y2="2.159" width="0.1524" layer="21"/>
<wire x1="-4.826" y1="2.032" x2="-4.953" y2="2.159" width="0.1524" layer="21"/>
<wire x1="-5.842" y1="-2.159" x2="-4.953" y2="-2.159" width="0.1524" layer="21"/>
<wire x1="-4.826" y1="-2.032" x2="-4.953" y2="-2.159" width="0.1524" layer="21"/>
<wire x1="4.826" y1="2.032" x2="4.953" y2="2.159" width="0.1524" layer="21"/>
<wire x1="4.826" y1="2.032" x2="-4.826" y2="2.032" width="0.1524" layer="21"/>
<wire x1="4.826" y1="-2.032" x2="4.953" y2="-2.159" width="0.1524" layer="21"/>
<wire x1="4.826" y1="-2.032" x2="-4.826" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="5.842" y1="2.159" x2="4.953" y2="2.159" width="0.1524" layer="21"/>
<wire x1="5.842" y1="-2.159" x2="4.953" y2="-2.159" width="0.1524" layer="21"/>
<wire x1="6.096" y1="-1.905" x2="6.096" y2="1.905" width="0.1524" layer="21"/>
<pad name="1" x="-7.62" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="7.62" y="0" drill="1.016" shape="octagon"/>
<text x="-6.096" y="2.5654" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-4.318" y="-0.5842" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="6.096" y1="-0.4064" x2="6.5024" y2="0.4064" layer="21"/>
<rectangle x1="-6.5024" y1="-0.4064" x2="-6.096" y2="0.4064" layer="21"/>
</package>
<package name="0414V">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0414, grid 5 mm</description>
<wire x1="2.54" y1="0" x2="1.397" y2="0" width="0.8128" layer="51"/>
<wire x1="-2.54" y1="0" x2="-1.397" y2="0" width="0.8128" layer="51"/>
<circle x="-2.54" y="0" radius="2.159" width="0.1524" layer="21"/>
<circle x="-2.54" y="0" radius="1.143" width="0.1524" layer="51"/>
<pad name="1" x="-2.54" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="1.016" shape="octagon"/>
<text x="-0.381" y="1.1684" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-0.381" y="-2.3622" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-1.2954" y1="-0.4064" x2="1.2954" y2="0.4064" layer="21"/>
</package>
<package name="0617/17">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0617, grid 17.5 mm</description>
<wire x1="-8.89" y1="0" x2="-8.636" y2="0" width="0.8128" layer="51"/>
<wire x1="-7.874" y1="3.048" x2="-6.985" y2="3.048" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="2.794" x2="-6.985" y2="3.048" width="0.1524" layer="21"/>
<wire x1="-7.874" y1="-3.048" x2="-6.985" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="-2.794" x2="-6.985" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="6.731" y1="2.794" x2="6.985" y2="3.048" width="0.1524" layer="21"/>
<wire x1="6.731" y1="2.794" x2="-6.731" y2="2.794" width="0.1524" layer="21"/>
<wire x1="6.731" y1="-2.794" x2="6.985" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="6.731" y1="-2.794" x2="-6.731" y2="-2.794" width="0.1524" layer="21"/>
<wire x1="7.874" y1="3.048" x2="6.985" y2="3.048" width="0.1524" layer="21"/>
<wire x1="7.874" y1="-3.048" x2="6.985" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="-8.255" y1="-2.667" x2="-8.255" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-8.255" y1="1.016" x2="-8.255" y2="-1.016" width="0.1524" layer="51"/>
<wire x1="-8.255" y1="1.016" x2="-8.255" y2="2.667" width="0.1524" layer="21"/>
<wire x1="8.255" y1="-2.667" x2="8.255" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="8.255" y1="1.016" x2="8.255" y2="-1.016" width="0.1524" layer="51"/>
<wire x1="8.255" y1="1.016" x2="8.255" y2="2.667" width="0.1524" layer="21"/>
<wire x1="8.636" y1="0" x2="8.89" y2="0" width="0.8128" layer="51"/>
<wire x1="-8.255" y1="2.667" x2="-7.874" y2="3.048" width="0.1524" layer="21" curve="-90"/>
<wire x1="7.874" y1="3.048" x2="8.255" y2="2.667" width="0.1524" layer="21" curve="-90"/>
<wire x1="-8.255" y1="-2.667" x2="-7.874" y2="-3.048" width="0.1524" layer="21" curve="90"/>
<wire x1="7.874" y1="-3.048" x2="8.255" y2="-2.667" width="0.1524" layer="21" curve="90"/>
<pad name="1" x="-8.89" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="8.89" y="0" drill="1.016" shape="octagon"/>
<text x="-8.128" y="3.4544" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-6.096" y="-0.7112" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-8.5344" y1="-0.4064" x2="-8.2296" y2="0.4064" layer="51"/>
<rectangle x1="8.2296" y1="-0.4064" x2="8.5344" y2="0.4064" layer="51"/>
</package>
<package name="0617/22">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0617, grid 22.5 mm</description>
<wire x1="-10.287" y1="0" x2="-11.43" y2="0" width="0.8128" layer="51"/>
<wire x1="-8.255" y1="-2.667" x2="-8.255" y2="2.667" width="0.1524" layer="21"/>
<wire x1="-7.874" y1="3.048" x2="-6.985" y2="3.048" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="2.794" x2="-6.985" y2="3.048" width="0.1524" layer="21"/>
<wire x1="-7.874" y1="-3.048" x2="-6.985" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="-2.794" x2="-6.985" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="6.731" y1="2.794" x2="6.985" y2="3.048" width="0.1524" layer="21"/>
<wire x1="6.731" y1="2.794" x2="-6.731" y2="2.794" width="0.1524" layer="21"/>
<wire x1="6.731" y1="-2.794" x2="6.985" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="6.731" y1="-2.794" x2="-6.731" y2="-2.794" width="0.1524" layer="21"/>
<wire x1="7.874" y1="3.048" x2="6.985" y2="3.048" width="0.1524" layer="21"/>
<wire x1="7.874" y1="-3.048" x2="6.985" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="8.255" y1="-2.667" x2="8.255" y2="2.667" width="0.1524" layer="21"/>
<wire x1="11.43" y1="0" x2="10.287" y2="0" width="0.8128" layer="51"/>
<wire x1="-8.255" y1="2.667" x2="-7.874" y2="3.048" width="0.1524" layer="21" curve="-90"/>
<wire x1="-8.255" y1="-2.667" x2="-7.874" y2="-3.048" width="0.1524" layer="21" curve="90"/>
<wire x1="7.874" y1="3.048" x2="8.255" y2="2.667" width="0.1524" layer="21" curve="-90"/>
<wire x1="7.874" y1="-3.048" x2="8.255" y2="-2.667" width="0.1524" layer="21" curve="90"/>
<pad name="1" x="-11.43" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="11.43" y="0" drill="1.016" shape="octagon"/>
<text x="-8.255" y="3.4544" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-6.477" y="-0.5842" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-10.1854" y1="-0.4064" x2="-8.255" y2="0.4064" layer="21"/>
<rectangle x1="8.255" y1="-0.4064" x2="10.1854" y2="0.4064" layer="21"/>
</package>
<package name="0617V">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0617, grid 5 mm</description>
<wire x1="-2.54" y1="0" x2="-1.27" y2="0" width="0.8128" layer="51"/>
<wire x1="1.27" y1="0" x2="2.54" y2="0" width="0.8128" layer="51"/>
<circle x="-2.54" y="0" radius="3.048" width="0.1524" layer="21"/>
<circle x="-2.54" y="0" radius="1.143" width="0.1524" layer="51"/>
<pad name="1" x="-2.54" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="1.016" shape="octagon"/>
<text x="0.635" y="1.4224" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="0.635" y="-2.6162" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-1.3208" y1="-0.4064" x2="1.3208" y2="0.4064" layer="21"/>
</package>
<package name="0922/22">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0922, grid 22.5 mm</description>
<wire x1="11.43" y1="0" x2="10.795" y2="0" width="0.8128" layer="51"/>
<wire x1="-11.43" y1="0" x2="-10.795" y2="0" width="0.8128" layer="51"/>
<wire x1="-10.16" y1="-4.191" x2="-10.16" y2="4.191" width="0.1524" layer="21"/>
<wire x1="-9.779" y1="4.572" x2="-8.89" y2="4.572" width="0.1524" layer="21"/>
<wire x1="-8.636" y1="4.318" x2="-8.89" y2="4.572" width="0.1524" layer="21"/>
<wire x1="-9.779" y1="-4.572" x2="-8.89" y2="-4.572" width="0.1524" layer="21"/>
<wire x1="-8.636" y1="-4.318" x2="-8.89" y2="-4.572" width="0.1524" layer="21"/>
<wire x1="8.636" y1="4.318" x2="8.89" y2="4.572" width="0.1524" layer="21"/>
<wire x1="8.636" y1="4.318" x2="-8.636" y2="4.318" width="0.1524" layer="21"/>
<wire x1="8.636" y1="-4.318" x2="8.89" y2="-4.572" width="0.1524" layer="21"/>
<wire x1="8.636" y1="-4.318" x2="-8.636" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="9.779" y1="4.572" x2="8.89" y2="4.572" width="0.1524" layer="21"/>
<wire x1="9.779" y1="-4.572" x2="8.89" y2="-4.572" width="0.1524" layer="21"/>
<wire x1="10.16" y1="-4.191" x2="10.16" y2="4.191" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="-4.191" x2="-9.779" y2="-4.572" width="0.1524" layer="21" curve="90"/>
<wire x1="-10.16" y1="4.191" x2="-9.779" y2="4.572" width="0.1524" layer="21" curve="-90"/>
<wire x1="9.779" y1="-4.572" x2="10.16" y2="-4.191" width="0.1524" layer="21" curve="90"/>
<wire x1="9.779" y1="4.572" x2="10.16" y2="4.191" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-11.43" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="11.43" y="0" drill="1.016" shape="octagon"/>
<text x="-10.16" y="5.1054" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-6.477" y="-0.5842" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-10.7188" y1="-0.4064" x2="-10.16" y2="0.4064" layer="51"/>
<rectangle x1="10.16" y1="-0.4064" x2="10.3124" y2="0.4064" layer="21"/>
<rectangle x1="-10.3124" y1="-0.4064" x2="-10.16" y2="0.4064" layer="21"/>
<rectangle x1="10.16" y1="-0.4064" x2="10.7188" y2="0.4064" layer="51"/>
</package>
<package name="P0613V">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0613, grid 5 mm</description>
<wire x1="2.54" y1="0" x2="1.397" y2="0" width="0.8128" layer="51"/>
<wire x1="-2.54" y1="0" x2="-1.397" y2="0" width="0.8128" layer="51"/>
<circle x="-2.54" y="0" radius="2.286" width="0.1524" layer="21"/>
<circle x="-2.54" y="0" radius="1.143" width="0.1524" layer="51"/>
<pad name="1" x="-2.54" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="1.016" shape="octagon"/>
<text x="-0.254" y="1.143" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-0.254" y="-2.413" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-1.2954" y1="-0.4064" x2="1.3208" y2="0.4064" layer="21"/>
</package>
<package name="P0613/15">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0613, grid 15 mm</description>
<wire x1="7.62" y1="0" x2="6.985" y2="0" width="0.8128" layer="51"/>
<wire x1="-7.62" y1="0" x2="-6.985" y2="0" width="0.8128" layer="51"/>
<wire x1="-6.477" y1="2.032" x2="-6.223" y2="2.286" width="0.1524" layer="21" curve="-90"/>
<wire x1="-6.477" y1="-2.032" x2="-6.223" y2="-2.286" width="0.1524" layer="21" curve="90"/>
<wire x1="6.223" y1="-2.286" x2="6.477" y2="-2.032" width="0.1524" layer="21" curve="90"/>
<wire x1="6.223" y1="2.286" x2="6.477" y2="2.032" width="0.1524" layer="21" curve="-90"/>
<wire x1="-6.223" y1="2.286" x2="-5.334" y2="2.286" width="0.1524" layer="21"/>
<wire x1="-5.207" y1="2.159" x2="-5.334" y2="2.286" width="0.1524" layer="21"/>
<wire x1="-6.223" y1="-2.286" x2="-5.334" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="-5.207" y1="-2.159" x2="-5.334" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="5.207" y1="2.159" x2="5.334" y2="2.286" width="0.1524" layer="21"/>
<wire x1="5.207" y1="2.159" x2="-5.207" y2="2.159" width="0.1524" layer="21"/>
<wire x1="5.207" y1="-2.159" x2="5.334" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="5.207" y1="-2.159" x2="-5.207" y2="-2.159" width="0.1524" layer="21"/>
<wire x1="6.223" y1="2.286" x2="5.334" y2="2.286" width="0.1524" layer="21"/>
<wire x1="6.223" y1="-2.286" x2="5.334" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="6.477" y1="-0.635" x2="6.477" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="6.477" y1="-0.635" x2="6.477" y2="0.635" width="0.1524" layer="51"/>
<wire x1="6.477" y1="2.032" x2="6.477" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-6.477" y1="-2.032" x2="-6.477" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-6.477" y1="0.635" x2="-6.477" y2="-0.635" width="0.1524" layer="51"/>
<wire x1="-6.477" y1="0.635" x2="-6.477" y2="2.032" width="0.1524" layer="21"/>
<pad name="1" x="-7.62" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="7.62" y="0" drill="1.016" shape="octagon"/>
<text x="-6.477" y="2.6924" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-4.318" y="-0.7112" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-7.0358" y1="-0.4064" x2="-6.477" y2="0.4064" layer="51"/>
<rectangle x1="6.477" y1="-0.4064" x2="7.0358" y2="0.4064" layer="51"/>
</package>
<package name="P0817/22">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0817, grid 22.5 mm</description>
<wire x1="-10.414" y1="0" x2="-11.43" y2="0" width="0.8128" layer="51"/>
<wire x1="-8.509" y1="-3.429" x2="-8.509" y2="3.429" width="0.1524" layer="21"/>
<wire x1="-8.128" y1="3.81" x2="-7.239" y2="3.81" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="3.556" x2="-7.239" y2="3.81" width="0.1524" layer="21"/>
<wire x1="-8.128" y1="-3.81" x2="-7.239" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="-3.556" x2="-7.239" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="6.985" y1="3.556" x2="7.239" y2="3.81" width="0.1524" layer="21"/>
<wire x1="6.985" y1="3.556" x2="-6.985" y2="3.556" width="0.1524" layer="21"/>
<wire x1="6.985" y1="-3.556" x2="7.239" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="6.985" y1="-3.556" x2="-6.985" y2="-3.556" width="0.1524" layer="21"/>
<wire x1="8.128" y1="3.81" x2="7.239" y2="3.81" width="0.1524" layer="21"/>
<wire x1="8.128" y1="-3.81" x2="7.239" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="8.509" y1="-3.429" x2="8.509" y2="3.429" width="0.1524" layer="21"/>
<wire x1="11.43" y1="0" x2="10.414" y2="0" width="0.8128" layer="51"/>
<wire x1="-8.509" y1="3.429" x2="-8.128" y2="3.81" width="0.1524" layer="21" curve="-90"/>
<wire x1="-8.509" y1="-3.429" x2="-8.128" y2="-3.81" width="0.1524" layer="21" curve="90"/>
<wire x1="8.128" y1="3.81" x2="8.509" y2="3.429" width="0.1524" layer="21" curve="-90"/>
<wire x1="8.128" y1="-3.81" x2="8.509" y2="-3.429" width="0.1524" layer="21" curve="90"/>
<pad name="1" x="-11.43" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="11.43" y="0" drill="1.016" shape="octagon"/>
<text x="-8.382" y="4.2164" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-6.223" y="-0.5842" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="6.604" y="-2.2606" size="1.27" layer="51" ratio="10" rot="R90">0817</text>
<rectangle x1="8.509" y1="-0.4064" x2="10.3124" y2="0.4064" layer="21"/>
<rectangle x1="-10.3124" y1="-0.4064" x2="-8.509" y2="0.4064" layer="21"/>
</package>
<package name="P0817V">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0817, grid 6.35 mm</description>
<wire x1="-3.81" y1="0" x2="-5.08" y2="0" width="0.8128" layer="51"/>
<wire x1="1.27" y1="0" x2="0" y2="0" width="0.8128" layer="51"/>
<circle x="-5.08" y="0" radius="3.81" width="0.1524" layer="21"/>
<circle x="-5.08" y="0" radius="1.27" width="0.1524" layer="51"/>
<pad name="1" x="-5.08" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="1.016" shape="octagon"/>
<text x="-1.016" y="1.27" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.016" y="-2.54" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="-6.858" y="2.032" size="1.016" layer="21" ratio="12">0817</text>
<rectangle x1="-3.81" y1="-0.4064" x2="0" y2="0.4064" layer="21"/>
</package>
<package name="V234/12">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type V234, grid 12.5 mm</description>
<wire x1="-4.953" y1="1.524" x2="-4.699" y2="1.778" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.699" y1="1.778" x2="4.953" y2="1.524" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.699" y1="-1.778" x2="4.953" y2="-1.524" width="0.1524" layer="21" curve="90"/>
<wire x1="-4.953" y1="-1.524" x2="-4.699" y2="-1.778" width="0.1524" layer="21" curve="90"/>
<wire x1="-4.699" y1="1.778" x2="4.699" y2="1.778" width="0.1524" layer="21"/>
<wire x1="-4.953" y1="1.524" x2="-4.953" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="4.699" y1="-1.778" x2="-4.699" y2="-1.778" width="0.1524" layer="21"/>
<wire x1="4.953" y1="1.524" x2="4.953" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="6.35" y1="0" x2="5.461" y2="0" width="0.8128" layer="51"/>
<wire x1="-6.35" y1="0" x2="-5.461" y2="0" width="0.8128" layer="51"/>
<pad name="1" x="-6.35" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="6.35" y="0" drill="1.016" shape="octagon"/>
<text x="-4.953" y="2.159" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.81" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="4.953" y1="-0.4064" x2="5.4102" y2="0.4064" layer="21"/>
<rectangle x1="-5.4102" y1="-0.4064" x2="-4.953" y2="0.4064" layer="21"/>
</package>
<package name="V235/17">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type V235, grid 17.78 mm</description>
<wire x1="-6.731" y1="2.921" x2="6.731" y2="2.921" width="0.1524" layer="21"/>
<wire x1="-7.112" y1="2.54" x2="-7.112" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="6.731" y1="-2.921" x2="-6.731" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="7.112" y1="2.54" x2="7.112" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="8.89" y1="0" x2="7.874" y2="0" width="1.016" layer="51"/>
<wire x1="-7.874" y1="0" x2="-8.89" y2="0" width="1.016" layer="51"/>
<wire x1="-7.112" y1="-2.54" x2="-6.731" y2="-2.921" width="0.1524" layer="21" curve="90"/>
<wire x1="6.731" y1="2.921" x2="7.112" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<wire x1="6.731" y1="-2.921" x2="7.112" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="-7.112" y1="2.54" x2="-6.731" y2="2.921" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-8.89" y="0" drill="1.1938" shape="octagon"/>
<pad name="2" x="8.89" y="0" drill="1.1938" shape="octagon"/>
<text x="-6.858" y="3.302" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.842" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="7.112" y1="-0.508" x2="7.747" y2="0.508" layer="21"/>
<rectangle x1="-7.747" y1="-0.508" x2="-7.112" y2="0.508" layer="21"/>
</package>
<package name="V526-0">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type V526-0, grid 2.5 mm</description>
<wire x1="-2.54" y1="1.016" x2="-2.286" y2="1.27" width="0.1524" layer="21" curve="-90"/>
<wire x1="2.286" y1="1.27" x2="2.54" y2="1.016" width="0.1524" layer="21" curve="-90"/>
<wire x1="2.286" y1="-1.27" x2="2.54" y2="-1.016" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.54" y1="-1.016" x2="-2.286" y2="-1.27" width="0.1524" layer="21" curve="90"/>
<wire x1="2.286" y1="1.27" x2="-2.286" y2="1.27" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-1.016" x2="2.54" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="-1.27" x2="2.286" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="1.016" x2="-2.54" y2="-1.016" width="0.1524" layer="21"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.413" y="1.651" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.413" y="-2.794" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="MINI_MELF-0102R">
<description>&lt;b&gt;CECC Size RC2211&lt;/b&gt; Reflow Soldering&lt;p&gt;
source Beyschlag</description>
<wire x1="-1" y1="-0.5" x2="1" y2="-0.5" width="0.2032" layer="51"/>
<wire x1="1" y1="-0.5" x2="1" y2="0.5" width="0.2032" layer="51"/>
<wire x1="1" y1="0.5" x2="-1" y2="0.5" width="0.2032" layer="51"/>
<wire x1="-1" y1="0.5" x2="-1" y2="-0.5" width="0.2032" layer="51"/>
<smd name="1" x="-0.9" y="0" dx="0.5" dy="1.3" layer="1"/>
<smd name="2" x="0.9" y="0" dx="0.5" dy="1.3" layer="1"/>
<text x="-1.27" y="0.9525" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.2225" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="MINI_MELF-0102W">
<description>&lt;b&gt;CECC Size RC2211&lt;/b&gt; Wave Soldering&lt;p&gt;
source Beyschlag</description>
<wire x1="-1" y1="-0.5" x2="1" y2="-0.5" width="0.2032" layer="51"/>
<wire x1="1" y1="-0.5" x2="1" y2="0.5" width="0.2032" layer="51"/>
<wire x1="1" y1="0.5" x2="-1" y2="0.5" width="0.2032" layer="51"/>
<wire x1="-1" y1="0.5" x2="-1" y2="-0.5" width="0.2032" layer="51"/>
<smd name="1" x="-0.95" y="0" dx="0.6" dy="1.3" layer="1"/>
<smd name="2" x="0.95" y="0" dx="0.6" dy="1.3" layer="1"/>
<text x="-1.27" y="0.9525" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.2225" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="MINI_MELF-0204R">
<description>&lt;b&gt;CECC Size RC3715&lt;/b&gt; Reflow Soldering&lt;p&gt;
source Beyschlag</description>
<wire x1="-1.7" y1="-0.6" x2="1.7" y2="-0.6" width="0.2032" layer="51"/>
<wire x1="1.7" y1="-0.6" x2="1.7" y2="0.6" width="0.2032" layer="51"/>
<wire x1="1.7" y1="0.6" x2="-1.7" y2="0.6" width="0.2032" layer="51"/>
<wire x1="-1.7" y1="0.6" x2="-1.7" y2="-0.6" width="0.2032" layer="51"/>
<wire x1="0.938" y1="0.6" x2="-0.938" y2="0.6" width="0.2032" layer="21"/>
<wire x1="-0.938" y1="-0.6" x2="0.938" y2="-0.6" width="0.2032" layer="21"/>
<smd name="1" x="-1.5" y="0" dx="0.8" dy="1.6" layer="1"/>
<smd name="2" x="1.5" y="0" dx="0.8" dy="1.6" layer="1"/>
<text x="-1.27" y="0.9525" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.2225" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="MINI_MELF-0204W">
<description>&lt;b&gt;CECC Size RC3715&lt;/b&gt; Wave Soldering&lt;p&gt;
source Beyschlag</description>
<wire x1="-1.7" y1="-0.6" x2="1.7" y2="-0.6" width="0.2032" layer="51"/>
<wire x1="1.7" y1="-0.6" x2="1.7" y2="0.6" width="0.2032" layer="51"/>
<wire x1="1.7" y1="0.6" x2="-1.7" y2="0.6" width="0.2032" layer="51"/>
<wire x1="-1.7" y1="0.6" x2="-1.7" y2="-0.6" width="0.2032" layer="51"/>
<wire x1="0.684" y1="0.6" x2="-0.684" y2="0.6" width="0.2032" layer="21"/>
<wire x1="-0.684" y1="-0.6" x2="0.684" y2="-0.6" width="0.2032" layer="21"/>
<smd name="1" x="-1.5" y="0" dx="1.2" dy="1.6" layer="1"/>
<smd name="2" x="1.5" y="0" dx="1.2" dy="1.6" layer="1"/>
<text x="-1.27" y="0.9525" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.2225" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="MINI_MELF-0207R">
<description>&lt;b&gt;CECC Size RC6123&lt;/b&gt; Reflow Soldering&lt;p&gt;
source Beyschlag</description>
<wire x1="-2.8" y1="-1" x2="2.8" y2="-1" width="0.2032" layer="51"/>
<wire x1="2.8" y1="-1" x2="2.8" y2="1" width="0.2032" layer="51"/>
<wire x1="2.8" y1="1" x2="-2.8" y2="1" width="0.2032" layer="51"/>
<wire x1="-2.8" y1="1" x2="-2.8" y2="-1" width="0.2032" layer="51"/>
<wire x1="1.2125" y1="1" x2="-1.2125" y2="1" width="0.2032" layer="21"/>
<wire x1="-1.2125" y1="-1" x2="1.2125" y2="-1" width="0.2032" layer="21"/>
<smd name="1" x="-2.25" y="0" dx="1.6" dy="2.5" layer="1"/>
<smd name="2" x="2.25" y="0" dx="1.6" dy="2.5" layer="1"/>
<text x="-2.2225" y="1.5875" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.2225" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="MINI_MELF-0207W">
<description>&lt;b&gt;CECC Size RC6123&lt;/b&gt; Wave Soldering&lt;p&gt;
source Beyschlag</description>
<wire x1="-2.8" y1="-1" x2="2.8" y2="-1" width="0.2032" layer="51"/>
<wire x1="2.8" y1="-1" x2="2.8" y2="1" width="0.2032" layer="51"/>
<wire x1="2.8" y1="1" x2="-2.8" y2="1" width="0.2032" layer="51"/>
<wire x1="-2.8" y1="1" x2="-2.8" y2="-1" width="0.2032" layer="51"/>
<wire x1="1.149" y1="1" x2="-1.149" y2="1" width="0.2032" layer="21"/>
<wire x1="-1.149" y1="-1" x2="1.149" y2="-1" width="0.2032" layer="21"/>
<smd name="1" x="-2.6" y="0" dx="2.4" dy="2.5" layer="1"/>
<smd name="2" x="2.6" y="0" dx="2.4" dy="2.5" layer="1"/>
<text x="-2.54" y="1.5875" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="0922V">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0922, grid 7.5 mm</description>
<wire x1="2.54" y1="0" x2="1.397" y2="0" width="0.8128" layer="51"/>
<wire x1="-5.08" y1="0" x2="-3.81" y2="0" width="0.8128" layer="51"/>
<circle x="-5.08" y="0" radius="4.572" width="0.1524" layer="21"/>
<circle x="-5.08" y="0" radius="1.905" width="0.1524" layer="21"/>
<pad name="1" x="-5.08" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="1.016" shape="octagon"/>
<text x="-0.508" y="1.6764" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-0.508" y="-2.9972" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="-6.858" y="2.54" size="1.016" layer="21" ratio="12">0922</text>
<rectangle x1="-3.81" y1="-0.4064" x2="1.3208" y2="0.4064" layer="21"/>
</package>
<package name="RDH/15">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type RDH, grid 15 mm</description>
<wire x1="-7.62" y1="0" x2="-6.858" y2="0" width="0.8128" layer="51"/>
<wire x1="-6.096" y1="3.048" x2="-5.207" y2="3.048" width="0.1524" layer="21"/>
<wire x1="-4.953" y1="2.794" x2="-5.207" y2="3.048" width="0.1524" layer="21"/>
<wire x1="-6.096" y1="-3.048" x2="-5.207" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="-4.953" y1="-2.794" x2="-5.207" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="4.953" y1="2.794" x2="5.207" y2="3.048" width="0.1524" layer="21"/>
<wire x1="4.953" y1="2.794" x2="-4.953" y2="2.794" width="0.1524" layer="21"/>
<wire x1="4.953" y1="-2.794" x2="5.207" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="4.953" y1="-2.794" x2="-4.953" y2="-2.794" width="0.1524" layer="21"/>
<wire x1="6.096" y1="3.048" x2="5.207" y2="3.048" width="0.1524" layer="21"/>
<wire x1="6.096" y1="-3.048" x2="5.207" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="-6.477" y1="-2.667" x2="-6.477" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-6.477" y1="1.016" x2="-6.477" y2="-1.016" width="0.1524" layer="51"/>
<wire x1="-6.477" y1="1.016" x2="-6.477" y2="2.667" width="0.1524" layer="21"/>
<wire x1="6.477" y1="-2.667" x2="6.477" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="6.477" y1="1.016" x2="6.477" y2="-1.016" width="0.1524" layer="51"/>
<wire x1="6.477" y1="1.016" x2="6.477" y2="2.667" width="0.1524" layer="21"/>
<wire x1="6.858" y1="0" x2="7.62" y2="0" width="0.8128" layer="51"/>
<wire x1="-6.477" y1="2.667" x2="-6.096" y2="3.048" width="0.1524" layer="21" curve="-90"/>
<wire x1="6.096" y1="3.048" x2="6.477" y2="2.667" width="0.1524" layer="21" curve="-90"/>
<wire x1="-6.477" y1="-2.667" x2="-6.096" y2="-3.048" width="0.1524" layer="21" curve="90"/>
<wire x1="6.096" y1="-3.048" x2="6.477" y2="-2.667" width="0.1524" layer="21" curve="90"/>
<pad name="1" x="-7.62" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="7.62" y="0" drill="1.016" shape="octagon"/>
<text x="-6.35" y="3.4544" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-4.318" y="-0.5842" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="4.572" y="-1.7272" size="1.27" layer="51" ratio="10" rot="R90">RDH</text>
<rectangle x1="-6.7564" y1="-0.4064" x2="-6.4516" y2="0.4064" layer="51"/>
<rectangle x1="6.4516" y1="-0.4064" x2="6.7564" y2="0.4064" layer="51"/>
</package>
<package name="MINI_MELF-0102AX">
<description>&lt;b&gt;Mini MELF 0102 Axial&lt;/b&gt;</description>
<circle x="0" y="0" radius="0.6" width="0" layer="51"/>
<circle x="0" y="0" radius="0.6" width="0" layer="52"/>
<smd name="1" x="0" y="0" dx="1.9" dy="1.9" layer="1" roundness="100"/>
<smd name="2" x="0" y="0" dx="1.9" dy="1.9" layer="16" roundness="100"/>
<text x="-1.27" y="0.9525" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.2225" size="1.27" layer="27">&gt;VALUE</text>
<hole x="0" y="0" drill="1.3"/>
</package>
<package name="R0201">
<description>&lt;b&gt;RESISTOR&lt;/b&gt; chip&lt;p&gt;
Source: http://www.vishay.com/docs/20008/dcrcw.pdf</description>
<smd name="1" x="-0.255" y="0" dx="0.28" dy="0.43" layer="1"/>
<smd name="2" x="0.255" y="0" dx="0.28" dy="0.43" layer="1"/>
<text x="-0.635" y="0.635" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-1.905" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.3" y1="-0.15" x2="-0.15" y2="0.15" layer="51"/>
<rectangle x1="0.15" y1="-0.15" x2="0.3" y2="0.15" layer="51"/>
<rectangle x1="-0.15" y1="-0.15" x2="0.15" y2="0.15" layer="21"/>
</package>
<package name="VTA52">
<description>&lt;b&gt;Bulk Metal® Foil Technology&lt;/b&gt;, Tubular Axial Lead Resistors, Meets or Exceeds MIL-R-39005 Requirements&lt;p&gt;
MIL SIZE RBR52&lt;br&gt;
Source: VISHAY .. vta56.pdf</description>
<wire x1="-15.24" y1="0" x2="-13.97" y2="0" width="0.6096" layer="51"/>
<wire x1="12.6225" y1="0.025" x2="12.6225" y2="4.725" width="0.1524" layer="21"/>
<wire x1="12.6225" y1="4.725" x2="-12.6225" y2="4.725" width="0.1524" layer="21"/>
<wire x1="-12.6225" y1="4.725" x2="-12.6225" y2="0.025" width="0.1524" layer="21"/>
<wire x1="-12.6225" y1="0.025" x2="-12.6225" y2="-4.65" width="0.1524" layer="21"/>
<wire x1="-12.6225" y1="-4.65" x2="12.6225" y2="-4.65" width="0.1524" layer="21"/>
<wire x1="12.6225" y1="-4.65" x2="12.6225" y2="0.025" width="0.1524" layer="21"/>
<wire x1="13.97" y1="0" x2="15.24" y2="0" width="0.6096" layer="51"/>
<pad name="1" x="-15.24" y="0" drill="1.1" shape="octagon"/>
<pad name="2" x="15.24" y="0" drill="1.1" shape="octagon"/>
<text x="-3.81" y="5.08" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.175" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-13.97" y1="-0.3048" x2="-12.5675" y2="0.3048" layer="21"/>
<rectangle x1="12.5675" y1="-0.3048" x2="13.97" y2="0.3048" layer="21"/>
</package>
<package name="VTA53">
<description>&lt;b&gt;Bulk Metal® Foil Technology&lt;/b&gt;, Tubular Axial Lead Resistors, Meets or Exceeds MIL-R-39005 Requirements&lt;p&gt;
MIL SIZE RBR53&lt;br&gt;
Source: VISHAY .. vta56.pdf</description>
<wire x1="-12.065" y1="0" x2="-10.795" y2="0" width="0.6096" layer="51"/>
<wire x1="9.8975" y1="0" x2="9.8975" y2="4.7" width="0.1524" layer="21"/>
<wire x1="9.8975" y1="4.7" x2="-9.8975" y2="4.7" width="0.1524" layer="21"/>
<wire x1="-9.8975" y1="4.7" x2="-9.8975" y2="0" width="0.1524" layer="21"/>
<wire x1="-9.8975" y1="0" x2="-9.8975" y2="-4.675" width="0.1524" layer="21"/>
<wire x1="-9.8975" y1="-4.675" x2="9.8975" y2="-4.675" width="0.1524" layer="21"/>
<wire x1="9.8975" y1="-4.675" x2="9.8975" y2="0" width="0.1524" layer="21"/>
<wire x1="10.795" y1="0" x2="12.065" y2="0" width="0.6096" layer="51"/>
<pad name="1" x="-12.065" y="0" drill="1.1" shape="octagon"/>
<pad name="2" x="12.065" y="0" drill="1.1" shape="octagon"/>
<text x="-3.81" y="5.08" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.175" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-10.795" y1="-0.3048" x2="-9.8425" y2="0.3048" layer="21"/>
<rectangle x1="9.8425" y1="-0.3048" x2="10.795" y2="0.3048" layer="21"/>
</package>
<package name="VTA54">
<description>&lt;b&gt;Bulk Metal® Foil Technology&lt;/b&gt;, Tubular Axial Lead Resistors, Meets or Exceeds MIL-R-39005 Requirements&lt;p&gt;
MIL SIZE RBR54&lt;br&gt;
Source: VISHAY .. vta56.pdf</description>
<wire x1="-12.065" y1="0" x2="-10.795" y2="0" width="0.6096" layer="51"/>
<wire x1="9.8975" y1="0" x2="9.8975" y2="3.3" width="0.1524" layer="21"/>
<wire x1="9.8975" y1="3.3" x2="-9.8975" y2="3.3" width="0.1524" layer="21"/>
<wire x1="-9.8975" y1="3.3" x2="-9.8975" y2="0" width="0.1524" layer="21"/>
<wire x1="-9.8975" y1="0" x2="-9.8975" y2="-3.3" width="0.1524" layer="21"/>
<wire x1="-9.8975" y1="-3.3" x2="9.8975" y2="-3.3" width="0.1524" layer="21"/>
<wire x1="9.8975" y1="-3.3" x2="9.8975" y2="0" width="0.1524" layer="21"/>
<wire x1="10.795" y1="0" x2="12.065" y2="0" width="0.6096" layer="51"/>
<pad name="1" x="-12.065" y="0" drill="1.1" shape="octagon"/>
<pad name="2" x="12.065" y="0" drill="1.1" shape="octagon"/>
<text x="-3.81" y="3.81" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.175" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-10.795" y1="-0.3048" x2="-9.8425" y2="0.3048" layer="21"/>
<rectangle x1="9.8425" y1="-0.3048" x2="10.795" y2="0.3048" layer="21"/>
</package>
<package name="VTA55">
<description>&lt;b&gt;Bulk Metal® Foil Technology&lt;/b&gt;, Tubular Axial Lead Resistors, Meets or Exceeds MIL-R-39005 Requirements&lt;p&gt;
MIL SIZE RBR55&lt;br&gt;
Source: VISHAY .. vta56.pdf</description>
<wire x1="-8.255" y1="0" x2="-6.985" y2="0" width="0.6096" layer="51"/>
<wire x1="6.405" y1="0" x2="6.405" y2="3.3" width="0.1524" layer="21"/>
<wire x1="6.405" y1="3.3" x2="-6.405" y2="3.3" width="0.1524" layer="21"/>
<wire x1="-6.405" y1="3.3" x2="-6.405" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.405" y1="0" x2="-6.405" y2="-3.3" width="0.1524" layer="21"/>
<wire x1="-6.405" y1="-3.3" x2="6.405" y2="-3.3" width="0.1524" layer="21"/>
<wire x1="6.405" y1="-3.3" x2="6.405" y2="0" width="0.1524" layer="21"/>
<wire x1="6.985" y1="0" x2="8.255" y2="0" width="0.6096" layer="51"/>
<pad name="1" x="-8.255" y="0" drill="1.1" shape="octagon"/>
<pad name="2" x="8.255" y="0" drill="1.1" shape="octagon"/>
<text x="-3.81" y="3.81" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.175" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-6.985" y1="-0.3048" x2="-6.35" y2="0.3048" layer="21"/>
<rectangle x1="6.35" y1="-0.3048" x2="6.985" y2="0.3048" layer="21"/>
</package>
<package name="VTA56">
<description>&lt;b&gt;Bulk Metal® Foil Technology&lt;/b&gt;, Tubular Axial Lead Resistors, Meets or Exceeds MIL-R-39005 Requirements&lt;p&gt;
MIL SIZE RBR56&lt;br&gt;
Source: VISHAY .. vta56.pdf</description>
<wire x1="-6.35" y1="0" x2="-5.08" y2="0" width="0.6096" layer="51"/>
<wire x1="4.5" y1="0" x2="4.5" y2="3.3" width="0.1524" layer="21"/>
<wire x1="4.5" y1="3.3" x2="-4.5" y2="3.3" width="0.1524" layer="21"/>
<wire x1="-4.5" y1="3.3" x2="-4.5" y2="0" width="0.1524" layer="21"/>
<wire x1="-4.5" y1="0" x2="-4.5" y2="-3.3" width="0.1524" layer="21"/>
<wire x1="-4.5" y1="-3.3" x2="4.5" y2="-3.3" width="0.1524" layer="21"/>
<wire x1="4.5" y1="-3.3" x2="4.5" y2="0" width="0.1524" layer="21"/>
<wire x1="5.08" y1="0" x2="6.35" y2="0" width="0.6096" layer="51"/>
<pad name="1" x="-6.35" y="0" drill="1.1" shape="octagon"/>
<pad name="2" x="6.35" y="0" drill="1.1" shape="octagon"/>
<text x="-3.81" y="3.81" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.175" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-5.08" y1="-0.3048" x2="-4.445" y2="0.3048" layer="21"/>
<rectangle x1="4.445" y1="-0.3048" x2="5.08" y2="0.3048" layer="21"/>
</package>
<package name="VMTA55">
<description>&lt;b&gt;Bulk Metal® Foil Technology&lt;/b&gt;, Tubular Axial Lead Resistors, Meets or Exceeds MIL-R-39005 Requirements&lt;p&gt;
MIL SIZE RNC55&lt;br&gt;
Source: VISHAY .. vta56.pdf</description>
<wire x1="-5.08" y1="0" x2="-4.26" y2="0" width="0.6096" layer="51"/>
<wire x1="3.3375" y1="-1.45" x2="3.3375" y2="1.45" width="0.1524" layer="21"/>
<wire x1="3.3375" y1="1.45" x2="-3.3625" y2="1.45" width="0.1524" layer="21"/>
<wire x1="-3.3625" y1="1.45" x2="-3.3625" y2="-1.45" width="0.1524" layer="21"/>
<wire x1="-3.3625" y1="-1.45" x2="3.3375" y2="-1.45" width="0.1524" layer="21"/>
<wire x1="4.235" y1="0" x2="5.08" y2="0" width="0.6096" layer="51"/>
<pad name="1" x="-5.08" y="0" drill="1.1" shape="octagon"/>
<pad name="2" x="5.08" y="0" drill="1.1" shape="octagon"/>
<text x="-3.175" y="1.905" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.175" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-4.26" y1="-0.3048" x2="-3.3075" y2="0.3048" layer="21"/>
<rectangle x1="3.2825" y1="-0.3048" x2="4.235" y2="0.3048" layer="21"/>
</package>
<package name="VMTB60">
<description>&lt;b&gt;Bulk Metal® Foil Technology&lt;/b&gt;, Tubular Axial Lead Resistors, Meets or Exceeds MIL-R-39005 Requirements&lt;p&gt;
MIL SIZE RNC60&lt;br&gt;
Source: VISHAY .. vta56.pdf</description>
<wire x1="-6.35" y1="0" x2="-5.585" y2="0" width="0.6096" layer="51"/>
<wire x1="4.6875" y1="-1.95" x2="4.6875" y2="1.95" width="0.1524" layer="21"/>
<wire x1="4.6875" y1="1.95" x2="-4.6875" y2="1.95" width="0.1524" layer="21"/>
<wire x1="-4.6875" y1="1.95" x2="-4.6875" y2="-1.95" width="0.1524" layer="21"/>
<wire x1="-4.6875" y1="-1.95" x2="4.6875" y2="-1.95" width="0.1524" layer="21"/>
<wire x1="5.585" y1="0" x2="6.35" y2="0" width="0.6096" layer="51"/>
<pad name="1" x="-6.35" y="0" drill="1.1" shape="octagon"/>
<pad name="2" x="6.35" y="0" drill="1.1" shape="octagon"/>
<text x="-4.445" y="2.54" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-4.445" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-5.585" y1="-0.3048" x2="-4.6325" y2="0.3048" layer="21"/>
<rectangle x1="4.6325" y1="-0.3048" x2="5.585" y2="0.3048" layer="21"/>
</package>
<package name="R4527">
<description>&lt;b&gt;Package 4527&lt;/b&gt;&lt;p&gt;
Source: http://www.vishay.com/docs/31059/wsrhigh.pdf</description>
<wire x1="-5.675" y1="-3.375" x2="5.65" y2="-3.375" width="0.2032" layer="21"/>
<wire x1="5.65" y1="-3.375" x2="5.65" y2="3.375" width="0.2032" layer="51"/>
<wire x1="5.65" y1="3.375" x2="-5.675" y2="3.375" width="0.2032" layer="21"/>
<wire x1="-5.675" y1="3.375" x2="-5.675" y2="-3.375" width="0.2032" layer="51"/>
<smd name="1" x="-4.575" y="0" dx="3.94" dy="5.84" layer="1"/>
<smd name="2" x="4.575" y="0" dx="3.94" dy="5.84" layer="1"/>
<text x="-5.715" y="3.81" size="1.27" layer="25">&gt;NAME</text>
<text x="-5.715" y="-5.08" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="WSC0001">
<description>&lt;b&gt;Wirewound Resistors, Precision Power&lt;/b&gt;&lt;p&gt;
Source: VISHAY wscwsn.pdf</description>
<wire x1="-3.075" y1="1.8" x2="-3.075" y2="-1.8" width="0.2032" layer="51"/>
<wire x1="-3.075" y1="-1.8" x2="3.075" y2="-1.8" width="0.2032" layer="21"/>
<wire x1="3.075" y1="-1.8" x2="3.075" y2="1.8" width="0.2032" layer="51"/>
<wire x1="3.075" y1="1.8" x2="-3.075" y2="1.8" width="0.2032" layer="21"/>
<wire x1="-3.075" y1="1.8" x2="-3.075" y2="1.606" width="0.2032" layer="21"/>
<wire x1="-3.075" y1="-1.606" x2="-3.075" y2="-1.8" width="0.2032" layer="21"/>
<wire x1="3.075" y1="1.606" x2="3.075" y2="1.8" width="0.2032" layer="21"/>
<wire x1="3.075" y1="-1.8" x2="3.075" y2="-1.606" width="0.2032" layer="21"/>
<smd name="1" x="-2.675" y="0" dx="2.29" dy="2.92" layer="1"/>
<smd name="2" x="2.675" y="0" dx="2.29" dy="2.92" layer="1"/>
<text x="-2.544" y="2.229" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.544" y="-3.501" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="WSC0002">
<description>&lt;b&gt;Wirewound Resistors, Precision Power&lt;/b&gt;&lt;p&gt;
Source: VISHAY wscwsn.pdf</description>
<wire x1="-5.55" y1="3.375" x2="-5.55" y2="-3.375" width="0.2032" layer="51"/>
<wire x1="-5.55" y1="-3.375" x2="5.55" y2="-3.375" width="0.2032" layer="21"/>
<wire x1="5.55" y1="-3.375" x2="5.55" y2="3.375" width="0.2032" layer="51"/>
<wire x1="5.55" y1="3.375" x2="-5.55" y2="3.375" width="0.2032" layer="21"/>
<smd name="1" x="-4.575" y="0.025" dx="3.94" dy="5.84" layer="1"/>
<smd name="2" x="4.575" y="0" dx="3.94" dy="5.84" layer="1"/>
<text x="-5.65" y="3.9" size="1.27" layer="25">&gt;NAME</text>
<text x="-5.65" y="-5.15" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="WSC01/2">
<description>&lt;b&gt;Wirewound Resistors, Precision Power&lt;/b&gt;&lt;p&gt;
Source: VISHAY wscwsn.pdf</description>
<wire x1="-2.45" y1="1.475" x2="-2.45" y2="-1.475" width="0.2032" layer="51"/>
<wire x1="-2.45" y1="-1.475" x2="2.45" y2="-1.475" width="0.2032" layer="21"/>
<wire x1="2.45" y1="-1.475" x2="2.45" y2="1.475" width="0.2032" layer="51"/>
<wire x1="2.45" y1="1.475" x2="-2.45" y2="1.475" width="0.2032" layer="21"/>
<wire x1="-2.45" y1="1.475" x2="-2.45" y2="1.106" width="0.2032" layer="21"/>
<wire x1="-2.45" y1="-1.106" x2="-2.45" y2="-1.475" width="0.2032" layer="21"/>
<wire x1="2.45" y1="1.106" x2="2.45" y2="1.475" width="0.2032" layer="21"/>
<wire x1="2.45" y1="-1.475" x2="2.45" y2="-1.106" width="0.2032" layer="21"/>
<smd name="1" x="-2.1" y="0" dx="2.16" dy="1.78" layer="1"/>
<smd name="2" x="2.1" y="0" dx="2.16" dy="1.78" layer="1"/>
<text x="-2.544" y="1.904" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.544" y="-3.176" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="WSC2515">
<description>&lt;b&gt;Wirewound Resistors, Precision Power&lt;/b&gt;&lt;p&gt;
Source: VISHAY wscwsn.pdf</description>
<wire x1="-3.075" y1="1.8" x2="-3.075" y2="-1.8" width="0.2032" layer="51"/>
<wire x1="-3.075" y1="-1.8" x2="3.05" y2="-1.8" width="0.2032" layer="21"/>
<wire x1="3.05" y1="-1.8" x2="3.05" y2="1.8" width="0.2032" layer="51"/>
<wire x1="3.05" y1="1.8" x2="-3.075" y2="1.8" width="0.2032" layer="21"/>
<wire x1="-3.075" y1="1.8" x2="-3.075" y2="1.606" width="0.2032" layer="21"/>
<wire x1="-3.075" y1="-1.606" x2="-3.075" y2="-1.8" width="0.2032" layer="21"/>
<wire x1="3.05" y1="1.606" x2="3.05" y2="1.8" width="0.2032" layer="21"/>
<wire x1="3.05" y1="-1.8" x2="3.05" y2="-1.606" width="0.2032" layer="21"/>
<smd name="1" x="-2.675" y="0" dx="2.29" dy="2.92" layer="1"/>
<smd name="2" x="2.675" y="0" dx="2.29" dy="2.92" layer="1"/>
<text x="-3.2" y="2.15" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.2" y="-3.4" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="WSC4527">
<description>&lt;b&gt;Wirewound Resistors, Precision Power&lt;/b&gt;&lt;p&gt;
Source: VISHAY wscwsn.pdf</description>
<wire x1="-5.675" y1="3.4" x2="-5.675" y2="-3.375" width="0.2032" layer="51"/>
<wire x1="-5.675" y1="-3.375" x2="5.675" y2="-3.375" width="0.2032" layer="21"/>
<wire x1="5.675" y1="-3.375" x2="5.675" y2="3.4" width="0.2032" layer="51"/>
<wire x1="5.675" y1="3.4" x2="-5.675" y2="3.4" width="0.2032" layer="21"/>
<smd name="1" x="-4.575" y="0.025" dx="3.94" dy="5.84" layer="1"/>
<smd name="2" x="4.575" y="0" dx="3.94" dy="5.84" layer="1"/>
<text x="-5.775" y="3.925" size="1.27" layer="25">&gt;NAME</text>
<text x="-5.775" y="-5.15" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="WSC6927">
<description>&lt;b&gt;Wirewound Resistors, Precision Power&lt;/b&gt;&lt;p&gt;
Source: VISHAY wscwsn.pdf</description>
<wire x1="-8.65" y1="3.375" x2="-8.65" y2="-3.375" width="0.2032" layer="51"/>
<wire x1="-8.65" y1="-3.375" x2="8.65" y2="-3.375" width="0.2032" layer="21"/>
<wire x1="8.65" y1="-3.375" x2="8.65" y2="3.375" width="0.2032" layer="51"/>
<wire x1="8.65" y1="3.375" x2="-8.65" y2="3.375" width="0.2032" layer="21"/>
<smd name="1" x="-7.95" y="0.025" dx="3.94" dy="5.97" layer="1"/>
<smd name="2" x="7.95" y="0" dx="3.94" dy="5.97" layer="1"/>
<text x="-8.75" y="3.9" size="1.27" layer="25">&gt;NAME</text>
<text x="-8.75" y="-5.15" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="R1218">
<description>&lt;b&gt;CRCW1218 Thick Film, Rectangular Chip Resistors&lt;/b&gt;&lt;p&gt;
Source: http://www.vishay.com .. dcrcw.pdf</description>
<wire x1="-0.913" y1="-2.219" x2="0.939" y2="-2.219" width="0.1524" layer="51"/>
<wire x1="0.913" y1="2.219" x2="-0.939" y2="2.219" width="0.1524" layer="51"/>
<smd name="1" x="-1.475" y="0" dx="1.05" dy="4.9" layer="1"/>
<smd name="2" x="1.475" y="0" dx="1.05" dy="4.9" layer="1"/>
<text x="-2.54" y="2.54" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-3.81" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.651" y1="-2.3" x2="-0.9009" y2="2.3" layer="51"/>
<rectangle x1="0.9144" y1="-2.3" x2="1.6645" y2="2.3" layer="51"/>
</package>
<package name="1812X7R">
<description>&lt;b&gt;Chip Monolithic Ceramic Capacitors&lt;/b&gt; Medium Voltage High Capacitance for General Use&lt;p&gt;
Source: http://www.murata.com .. GRM43DR72E224KW01.pdf</description>
<wire x1="-1.1" y1="1.5" x2="1.1" y2="1.5" width="0.2032" layer="51"/>
<wire x1="1.1" y1="-1.5" x2="-1.1" y2="-1.5" width="0.2032" layer="51"/>
<wire x1="-0.6" y1="1.5" x2="0.6" y2="1.5" width="0.2032" layer="21"/>
<wire x1="0.6" y1="-1.5" x2="-0.6" y2="-1.5" width="0.2032" layer="21"/>
<smd name="1" x="-1.425" y="0" dx="0.8" dy="3.5" layer="1"/>
<smd name="2" x="1.425" y="0" dx="0.8" dy="3.5" layer="1" rot="R180"/>
<text x="-1.9456" y="1.9958" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.9456" y="-3.7738" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.4" y1="-1.6" x2="-1.1" y2="1.6" layer="51"/>
<rectangle x1="1.1" y1="-1.6" x2="1.4" y2="1.6" layer="51" rot="R180"/>
</package>
<package name="PRL1632">
<description>&lt;b&gt;PRL1632 are realized as 1W for 3.2 × 1.6mm(1206)&lt;/b&gt;&lt;p&gt;
Source: http://www.mouser.com/ds/2/392/products_18-2245.pdf</description>
<wire x1="0.7275" y1="-1.5228" x2="-0.7277" y2="-1.5228" width="0.1524" layer="51"/>
<wire x1="0.7275" y1="1.5228" x2="-0.7152" y2="1.5228" width="0.1524" layer="51"/>
<smd name="2" x="0.822" y="0" dx="1" dy="3.2" layer="1"/>
<smd name="1" x="-0.822" y="0" dx="1" dy="3.2" layer="1"/>
<text x="-1.4" y="1.8" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.4" y="-3" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.8" y1="-1.6" x2="-0.4" y2="1.6" layer="51"/>
<rectangle x1="0.4" y1="-1.6" x2="0.8" y2="1.6" layer="51"/>
</package>
<package name="R01005">
<smd name="1" x="-0.1625" y="0" dx="0.2" dy="0.25" layer="1"/>
<smd name="2" x="0.1625" y="0" dx="0.2" dy="0.25" layer="1"/>
<text x="-0.4" y="0.3" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.4" y="-1.6" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.2" y1="-0.1" x2="-0.075" y2="0.1" layer="51"/>
<rectangle x1="0.075" y1="-0.1" x2="0.2" y2="0.1" layer="51"/>
<rectangle x1="-0.15" y1="0.05" x2="0.15" y2="0.1" layer="51"/>
<rectangle x1="-0.15" y1="-0.1" x2="0.15" y2="-0.05" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="R-EU">
<wire x1="-2.54" y1="-0.889" x2="2.54" y2="-0.889" width="0.254" layer="94"/>
<wire x1="2.54" y1="0.889" x2="-2.54" y2="0.889" width="0.254" layer="94"/>
<wire x1="2.54" y1="-0.889" x2="2.54" y2="0.889" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-0.889" x2="-2.54" y2="0.889" width="0.254" layer="94"/>
<text x="-3.81" y="1.4986" size="1.778" layer="95">&gt;NAME</text>
<text x="-3.81" y="-3.302" size="1.778" layer="96">&gt;VALUE</text>
<pin name="2" x="5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1" rot="R180"/>
<pin name="1" x="-5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="R-EU_" prefix="R" uservalue="yes">
<description>&lt;B&gt;RESISTOR&lt;/B&gt;, European symbol</description>
<gates>
<gate name="G$1" symbol="R-EU" x="0" y="0"/>
</gates>
<devices>
<device name="R0402" package="R0402">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="R0603" package="R0603">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="R0805" package="R0805">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="R0805W" package="R0805W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="R1206" package="R1206">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="R1206W" package="R1206W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="R1210" package="R1210">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="R1210W" package="R1210W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="R2010" package="R2010">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="R2010W" package="R2010W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="R2012" package="R2012">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="R2012W" package="R2012W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="R2512" package="R2512">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="R2512W" package="R2512W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="R3216" package="R3216">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="R3216W" package="R3216W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="R3225" package="R3225">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="R3225W" package="R3225W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="R5025" package="R5025">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="R5025W" package="R5025W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="R6332" package="R6332">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="R6332W" package="R6332W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="M0805" package="M0805">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="M1206" package="M1206">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="M1406" package="M1406">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="M2012" package="M2012">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="M2309" package="M2309">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="M3216" package="M3216">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="M3516" package="M3516">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="M5923" package="M5923">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0204/5" package="0204/5">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0204/7" package="0204/7">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0204/2V" package="0204V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0207/10" package="0207/10">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0207/12" package="0207/12">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0207/15" package="0207/15">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0207/2V" package="0207/2V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0207/5V" package="0207/5V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0207/7" package="0207/7">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0309/10" package="0309/10">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0309/12" package="0309/12">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0309/V" package="0309V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0411/12" package="0411/12">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0411/15" package="0411/15">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0411/3V" package="0411V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0414/15" package="0414/15">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0414/5V" package="0414V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0617/17" package="0617/17">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0617/22" package="0617/22">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0617/5V" package="0617V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0922/22" package="0922/22">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0613/5V" package="P0613V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0613/15" package="P0613/15">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0817/22" package="P0817/22">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0817/7V" package="P0817V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="V234/12" package="V234/12">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="V235/17" package="V235/17">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="V526-0" package="V526-0">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="MELF0102R" package="MINI_MELF-0102R">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="MELF0102W" package="MINI_MELF-0102W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="MELF0204R" package="MINI_MELF-0204R">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="MELF0204W" package="MINI_MELF-0204W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="MELF0207R" package="MINI_MELF-0207R">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="MELF0207W" package="MINI_MELF-0207W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0922V" package="0922V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="RDH/15" package="RDH/15">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="MELF0102AX" package="MINI_MELF-0102AX">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="R0201" package="R0201">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="VTA52" package="VTA52">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="VTA53" package="VTA53">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="VTA54" package="VTA54">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="VTA55" package="VTA55">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="VTA56" package="VTA56">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="VMTA55" package="VMTA55">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="VMTB60" package="VMTB60">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="R4527" package="R4527">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="WSC0001" package="WSC0001">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="WSC0002" package="WSC0002">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="WSC01/2" package="WSC01/2">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="WSC2515" package="WSC2515">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="WSC4527" package="WSC4527">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="WSC6927" package="WSC6927">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="R1218" package="R1218">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="1812X7R" package="1812X7R">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="PRL1632" package="PRL1632">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="01005" package="R01005">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="supply1">
<description>&lt;b&gt;Supply Symbols&lt;/b&gt;&lt;p&gt;
 GND, VCC, 0V, +5V, -5V, etc.&lt;p&gt;
 Please keep in mind, that these devices are necessary for the
 automatic wiring of the supply signals.&lt;p&gt;
 The pin name defined in the symbol is identical to the net which is to be wired automatically.&lt;p&gt;
 In this library the device names are the same as the pin names of the symbols, therefore the correct signal names appear next to the supply symbols in the schematic.&lt;p&gt;
 &lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="+5V">
<wire x1="1.27" y1="-1.905" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<text x="-2.54" y="-5.08" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="+5V" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
<symbol name="GND">
<wire x1="-1.905" y1="0" x2="1.905" y2="0" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="+5V" prefix="P+">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="+5V" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="GND" prefix="GND">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="GND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="Z80 clock">
<packages>
<package name="PSA08-11SYKWA">
<pad name="1" x="-7.62" y="10.16" drill="0.6" shape="long"/>
<pad name="2" x="-7.62" y="7.62" drill="0.6" shape="long"/>
<pad name="3" x="-7.62" y="5.08" drill="0.6" shape="long"/>
<pad name="4" x="-7.62" y="2.54" drill="0.6" shape="long"/>
<pad name="5" x="-7.62" y="0" drill="0.6" shape="long"/>
<pad name="6" x="-7.62" y="-2.54" drill="0.6" shape="long"/>
<pad name="7" x="-7.62" y="-5.08" drill="0.6" shape="long"/>
<pad name="8" x="-7.62" y="-7.62" drill="0.6" shape="long"/>
<pad name="9" x="-7.62" y="-10.16" drill="0.6" shape="long"/>
<pad name="10" x="7.62" y="-10.16" drill="0.6" shape="long"/>
<pad name="11" x="7.62" y="-7.62" drill="0.6" shape="long"/>
<pad name="12" x="7.62" y="-5.08" drill="0.6" shape="long"/>
<pad name="13" x="7.62" y="-2.54" drill="0.6" shape="long"/>
<pad name="14" x="7.62" y="0" drill="0.6" shape="long"/>
<pad name="15" x="7.62" y="2.54" drill="0.6" shape="long"/>
<pad name="16" x="7.62" y="5.08" drill="0.6" shape="long"/>
<pad name="17" x="7.62" y="7.62" drill="0.6" shape="long"/>
<pad name="18" x="7.62" y="10.16" drill="0.6" shape="long"/>
<wire x1="-10" y1="13.85" x2="10" y2="13.85" width="0.127" layer="21"/>
<wire x1="-10" y1="-13.85" x2="10" y2="-13.85" width="0.127" layer="21"/>
<wire x1="-10" y1="13.85" x2="-10" y2="-13.85" width="0.127" layer="21"/>
<wire x1="10" y1="-13.85" x2="10" y2="13.85" width="0.127" layer="21"/>
<circle x="-8" y="12" radius="0.25" width="1" layer="21"/>
<text x="-10" y="14.3" size="1.27" layer="25">&gt;NAME</text>
<text x="-10" y="-15.6" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="HDR40">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-24.765" y1="2.54" x2="-23.495" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-23.495" y1="2.54" x2="-22.86" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-22.86" y1="2.54" x2="-22.225" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-22.225" y1="2.54" x2="-20.955" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-20.955" y1="2.54" x2="-20.32" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-24.765" y1="2.54" x2="-25.4" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="2.54" x2="-19.685" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-19.685" y1="2.54" x2="-18.415" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-18.415" y1="2.54" x2="-17.78" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-17.145" y1="2.54" x2="-15.875" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-15.875" y1="2.54" x2="-15.24" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-15.24" y1="2.54" x2="-14.605" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-14.605" y1="2.54" x2="-13.335" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="2.54" x2="-12.7" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-17.145" y1="2.54" x2="-17.78" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="2.54" x2="-12.065" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-12.065" y1="2.54" x2="-10.795" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-10.795" y1="2.54" x2="-10.16" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-22.86" y1="-2.54" x2="-23.495" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="-2.54" x2="-20.955" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-20.955" y1="-2.54" x2="-22.225" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-22.225" y1="-2.54" x2="-22.86" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-25.4" y1="1.905" x2="-25.4" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-25.4" y1="-1.905" x2="-24.765" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-23.495" y1="-2.54" x2="-24.765" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="-2.54" x2="-18.415" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-18.415" y1="-2.54" x2="-19.685" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-19.685" y1="-2.54" x2="-20.32" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-15.24" y1="-2.54" x2="-15.875" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="-2.54" x2="-13.335" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="-2.54" x2="-14.605" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-14.605" y1="-2.54" x2="-15.24" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="-2.54" x2="-17.145" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-15.875" y1="-2.54" x2="-17.145" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="-2.54" x2="-10.795" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-10.795" y1="-2.54" x2="-12.065" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-12.065" y1="-2.54" x2="-12.7" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-8.255" y1="2.54" x2="-7.62" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-9.525" y1="2.54" x2="-8.255" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="2.54" x2="-9.525" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-9.525" y1="-2.54" x2="-10.16" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-8.255" y1="-2.54" x2="-9.525" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="-2.54" x2="-8.255" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="2.54" x2="-5.715" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="2.54" x2="-5.08" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="2.54" x2="-4.445" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="2.54" x2="-3.175" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="2.54" x2="-2.54" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="2.54" x2="-7.62" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="2.54" x2="-1.905" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="2.54" x2="-0.635" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="2.54" x2="0" y2="2.54" width="0.1524" layer="21"/>
<wire x1="0.635" y1="2.54" x2="1.905" y2="2.54" width="0.1524" layer="21"/>
<wire x1="1.905" y1="2.54" x2="2.54" y2="2.54" width="0.1524" layer="21"/>
<wire x1="2.54" y1="2.54" x2="3.175" y2="2.54" width="0.1524" layer="21"/>
<wire x1="3.175" y1="2.54" x2="4.445" y2="2.54" width="0.1524" layer="21"/>
<wire x1="4.445" y1="2.54" x2="5.08" y2="2.54" width="0.1524" layer="21"/>
<wire x1="0.635" y1="2.54" x2="0" y2="2.54" width="0.1524" layer="21"/>
<wire x1="5.08" y1="2.54" x2="5.715" y2="2.54" width="0.1524" layer="21"/>
<wire x1="5.715" y1="2.54" x2="6.985" y2="2.54" width="0.1524" layer="21"/>
<wire x1="6.985" y1="2.54" x2="7.62" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-2.54" x2="-5.715" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-2.54" x2="-3.175" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="-2.54" x2="-4.445" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="-2.54" x2="-5.08" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="-2.54" x2="-6.985" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="-2.54" x2="-6.985" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="0" y1="-2.54" x2="-0.635" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-2.54" x2="-1.905" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="-2.54" x2="-2.54" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-2.54" x2="1.905" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-2.54" x2="4.445" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="4.445" y1="-2.54" x2="3.175" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-2.54" x2="2.54" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="0" y1="-2.54" x2="0.635" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-2.54" x2="0.635" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="7.62" y1="-2.54" x2="6.985" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="6.985" y1="-2.54" x2="5.715" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="5.715" y1="-2.54" x2="5.08" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="9.525" y1="2.54" x2="10.16" y2="2.54" width="0.1524" layer="21"/>
<wire x1="8.255" y1="2.54" x2="9.525" y2="2.54" width="0.1524" layer="21"/>
<wire x1="7.62" y1="2.54" x2="8.255" y2="2.54" width="0.1524" layer="21"/>
<wire x1="8.255" y1="-2.54" x2="7.62" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="9.525" y1="-2.54" x2="8.255" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="10.16" y1="-2.54" x2="9.525" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="10.795" y1="2.54" x2="12.065" y2="2.54" width="0.1524" layer="21"/>
<wire x1="12.065" y1="2.54" x2="12.7" y2="2.54" width="0.1524" layer="21"/>
<wire x1="12.7" y1="2.54" x2="13.335" y2="2.54" width="0.1524" layer="21"/>
<wire x1="13.335" y1="2.54" x2="14.605" y2="2.54" width="0.1524" layer="21"/>
<wire x1="14.605" y1="2.54" x2="15.24" y2="2.54" width="0.1524" layer="21"/>
<wire x1="10.795" y1="2.54" x2="10.16" y2="2.54" width="0.1524" layer="21"/>
<wire x1="15.24" y1="2.54" x2="15.875" y2="2.54" width="0.1524" layer="21"/>
<wire x1="15.875" y1="2.54" x2="17.145" y2="2.54" width="0.1524" layer="21"/>
<wire x1="17.145" y1="2.54" x2="17.78" y2="2.54" width="0.1524" layer="21"/>
<wire x1="18.415" y1="2.54" x2="19.685" y2="2.54" width="0.1524" layer="21"/>
<wire x1="19.685" y1="2.54" x2="20.32" y2="2.54" width="0.1524" layer="21"/>
<wire x1="20.32" y1="2.54" x2="20.955" y2="2.54" width="0.1524" layer="21"/>
<wire x1="20.955" y1="2.54" x2="22.225" y2="2.54" width="0.1524" layer="21"/>
<wire x1="22.225" y1="2.54" x2="22.86" y2="2.54" width="0.1524" layer="21"/>
<wire x1="18.415" y1="2.54" x2="17.78" y2="2.54" width="0.1524" layer="21"/>
<wire x1="22.86" y1="2.54" x2="23.495" y2="2.54" width="0.1524" layer="21"/>
<wire x1="23.495" y1="2.54" x2="24.765" y2="2.54" width="0.1524" layer="21"/>
<wire x1="12.7" y1="-2.54" x2="12.065" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="15.24" y1="-2.54" x2="14.605" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="14.605" y1="-2.54" x2="13.335" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="13.335" y1="-2.54" x2="12.7" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="10.16" y1="-2.54" x2="10.795" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="12.065" y1="-2.54" x2="10.795" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="17.78" y1="-2.54" x2="17.145" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="17.145" y1="-2.54" x2="15.875" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="15.875" y1="-2.54" x2="15.24" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="20.32" y1="-2.54" x2="19.685" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="22.86" y1="-2.54" x2="22.225" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="22.225" y1="-2.54" x2="20.955" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="20.955" y1="-2.54" x2="20.32" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="17.78" y1="-2.54" x2="18.415" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="19.685" y1="-2.54" x2="18.415" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="24.765" y1="-2.54" x2="23.495" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="23.495" y1="-2.54" x2="22.86" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="25.4" y1="1.905" x2="25.4" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="24.765" y1="2.54" x2="25.4" y2="1.905" width="0.1524" layer="21"/>
<wire x1="25.4" y1="-1.905" x2="24.765" y2="-2.54" width="0.1524" layer="21"/>
<pad name="1" x="-24.13" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="3" x="-21.59" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="5" x="-19.05" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="7" x="-16.51" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="9" x="-13.97" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="11" x="-11.43" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="2" x="-24.13" y="1.27" drill="1.016" shape="octagon"/>
<pad name="4" x="-21.59" y="1.27" drill="1.016" shape="octagon"/>
<pad name="6" x="-19.05" y="1.27" drill="1.016" shape="octagon"/>
<pad name="8" x="-16.51" y="1.27" drill="1.016" shape="octagon"/>
<pad name="10" x="-13.97" y="1.27" drill="1.016" shape="octagon"/>
<pad name="12" x="-11.43" y="1.27" drill="1.016" shape="octagon"/>
<pad name="13" x="-8.89" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="14" x="-8.89" y="1.27" drill="1.016" shape="octagon"/>
<pad name="15" x="-6.35" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="17" x="-3.81" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="19" x="-1.27" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="21" x="1.27" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="23" x="3.81" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="25" x="6.35" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="16" x="-6.35" y="1.27" drill="1.016" shape="octagon"/>
<pad name="18" x="-3.81" y="1.27" drill="1.016" shape="octagon"/>
<pad name="20" x="-1.27" y="1.27" drill="1.016" shape="octagon"/>
<pad name="22" x="1.27" y="1.27" drill="1.016" shape="octagon"/>
<pad name="24" x="3.81" y="1.27" drill="1.016" shape="octagon"/>
<pad name="26" x="6.35" y="1.27" drill="1.016" shape="octagon"/>
<pad name="27" x="8.89" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="28" x="8.89" y="1.27" drill="1.016" shape="octagon"/>
<pad name="29" x="11.43" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="31" x="13.97" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="33" x="16.51" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="35" x="19.05" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="37" x="21.59" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="39" x="24.13" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="30" x="11.43" y="1.27" drill="1.016" shape="octagon"/>
<pad name="32" x="13.97" y="1.27" drill="1.016" shape="octagon"/>
<pad name="34" x="16.51" y="1.27" drill="1.016" shape="octagon"/>
<pad name="36" x="19.05" y="1.27" drill="1.016" shape="octagon"/>
<pad name="38" x="21.59" y="1.27" drill="1.016" shape="octagon"/>
<pad name="40" x="24.13" y="1.27" drill="1.016" shape="octagon"/>
<text x="-25.4" y="2.921" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="12.7" y="-4.191" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-21.844" y1="-1.524" x2="-21.336" y2="-1.016" layer="51"/>
<rectangle x1="-24.384" y1="-1.524" x2="-23.876" y2="-1.016" layer="51"/>
<rectangle x1="-19.304" y1="-1.524" x2="-18.796" y2="-1.016" layer="51"/>
<rectangle x1="-14.224" y1="-1.524" x2="-13.716" y2="-1.016" layer="51"/>
<rectangle x1="-16.764" y1="-1.524" x2="-16.256" y2="-1.016" layer="51"/>
<rectangle x1="-11.684" y1="-1.524" x2="-11.176" y2="-1.016" layer="51"/>
<rectangle x1="-24.384" y1="1.016" x2="-23.876" y2="1.524" layer="51"/>
<rectangle x1="-21.844" y1="1.016" x2="-21.336" y2="1.524" layer="51"/>
<rectangle x1="-19.304" y1="1.016" x2="-18.796" y2="1.524" layer="51"/>
<rectangle x1="-16.764" y1="1.016" x2="-16.256" y2="1.524" layer="51"/>
<rectangle x1="-14.224" y1="1.016" x2="-13.716" y2="1.524" layer="51"/>
<rectangle x1="-11.684" y1="1.016" x2="-11.176" y2="1.524" layer="51"/>
<rectangle x1="-9.144" y1="1.016" x2="-8.636" y2="1.524" layer="51"/>
<rectangle x1="-9.144" y1="-1.524" x2="-8.636" y2="-1.016" layer="51"/>
<rectangle x1="-4.064" y1="-1.524" x2="-3.556" y2="-1.016" layer="51"/>
<rectangle x1="-6.604" y1="-1.524" x2="-6.096" y2="-1.016" layer="51"/>
<rectangle x1="-1.524" y1="-1.524" x2="-1.016" y2="-1.016" layer="51"/>
<rectangle x1="3.556" y1="-1.524" x2="4.064" y2="-1.016" layer="51"/>
<rectangle x1="1.016" y1="-1.524" x2="1.524" y2="-1.016" layer="51"/>
<rectangle x1="6.096" y1="-1.524" x2="6.604" y2="-1.016" layer="51"/>
<rectangle x1="-6.604" y1="1.016" x2="-6.096" y2="1.524" layer="51"/>
<rectangle x1="-4.064" y1="1.016" x2="-3.556" y2="1.524" layer="51"/>
<rectangle x1="-1.524" y1="1.016" x2="-1.016" y2="1.524" layer="51"/>
<rectangle x1="1.016" y1="1.016" x2="1.524" y2="1.524" layer="51"/>
<rectangle x1="3.556" y1="1.016" x2="4.064" y2="1.524" layer="51"/>
<rectangle x1="6.096" y1="1.016" x2="6.604" y2="1.524" layer="51"/>
<rectangle x1="8.636" y1="1.016" x2="9.144" y2="1.524" layer="51"/>
<rectangle x1="8.636" y1="-1.524" x2="9.144" y2="-1.016" layer="51"/>
<rectangle x1="13.716" y1="-1.524" x2="14.224" y2="-1.016" layer="51"/>
<rectangle x1="11.176" y1="-1.524" x2="11.684" y2="-1.016" layer="51"/>
<rectangle x1="16.256" y1="-1.524" x2="16.764" y2="-1.016" layer="51"/>
<rectangle x1="21.336" y1="-1.524" x2="21.844" y2="-1.016" layer="51"/>
<rectangle x1="18.796" y1="-1.524" x2="19.304" y2="-1.016" layer="51"/>
<rectangle x1="23.876" y1="-1.524" x2="24.384" y2="-1.016" layer="51"/>
<rectangle x1="11.176" y1="1.016" x2="11.684" y2="1.524" layer="51"/>
<rectangle x1="13.716" y1="1.016" x2="14.224" y2="1.524" layer="51"/>
<rectangle x1="16.256" y1="1.016" x2="16.764" y2="1.524" layer="51"/>
<rectangle x1="18.796" y1="1.016" x2="19.304" y2="1.524" layer="51"/>
<rectangle x1="21.336" y1="1.016" x2="21.844" y2="1.524" layer="51"/>
<rectangle x1="23.876" y1="1.016" x2="24.384" y2="1.524" layer="51"/>
<polygon width="0.127" layer="21">
<vertex x="-25.654" y="0"/>
<vertex x="-22.86" y="0"/>
<vertex x="-22.86" y="-2.794"/>
<vertex x="-25.019" y="-2.794"/>
<vertex x="-25.654" y="-2.159"/>
</polygon>
</package>
</packages>
<symbols>
<symbol name="PSA08-11SYKWA">
<pin name="A" x="-20.32" y="17.78" length="middle" direction="in"/>
<pin name="B" x="-20.32" y="15.24" length="middle" direction="in"/>
<pin name="C" x="-20.32" y="12.7" length="middle" direction="in"/>
<pin name="D" x="-20.32" y="10.16" length="middle" direction="in"/>
<pin name="E" x="-20.32" y="7.62" length="middle" direction="in"/>
<pin name="F" x="-20.32" y="5.08" length="middle" direction="in"/>
<pin name="G" x="-20.32" y="2.54" length="middle" direction="in"/>
<pin name="H" x="-20.32" y="0" length="middle" direction="in"/>
<pin name="K" x="-20.32" y="-2.54" length="middle" direction="in"/>
<pin name="M" x="-20.32" y="-5.08" length="middle" direction="in"/>
<pin name="N" x="-20.32" y="-7.62" length="middle" direction="in"/>
<pin name="P" x="-20.32" y="-10.16" length="middle" direction="in"/>
<pin name="R" x="-20.32" y="-12.7" length="middle" direction="in"/>
<pin name="S" x="-20.32" y="-15.24" length="middle" direction="in"/>
<pin name="CA" x="-20.32" y="22.86" length="middle" direction="pwr"/>
<pin name="DP" x="-20.32" y="-25.4" length="middle" direction="in"/>
<wire x1="-5.08" y1="12.7" x2="-7.62" y2="15.24" width="0.254" layer="94"/>
<wire x1="-7.62" y1="15.24" x2="1.27" y2="15.24" width="0.254" layer="94"/>
<wire x1="1.27" y1="15.24" x2="1.27" y2="12.7" width="0.254" layer="94"/>
<wire x1="1.27" y1="12.7" x2="0" y2="12.7" width="0.254" layer="94"/>
<wire x1="0" y1="12.7" x2="-5.08" y2="12.7" width="0.254" layer="94"/>
<wire x1="7.62" y1="12.7" x2="10.16" y2="15.24" width="0.254" layer="94"/>
<wire x1="10.16" y1="15.24" x2="1.27" y2="15.24" width="0.254" layer="94"/>
<wire x1="7.62" y1="12.7" x2="2.54" y2="12.7" width="0.254" layer="94"/>
<wire x1="2.54" y1="12.7" x2="1.27" y2="12.7" width="0.254" layer="94"/>
<wire x1="1.27" y1="12.7" x2="2.54" y2="12.7" width="0.254" layer="94"/>
<wire x1="0" y1="12.7" x2="0" y2="7.62" width="0.254" layer="94"/>
<wire x1="0" y1="7.62" x2="0" y2="5.08" width="0.254" layer="94"/>
<wire x1="0" y1="5.08" x2="1.27" y2="5.08" width="0.254" layer="94"/>
<wire x1="1.27" y1="5.08" x2="2.54" y2="5.08" width="0.254" layer="94"/>
<wire x1="2.54" y1="5.08" x2="2.54" y2="7.62" width="0.254" layer="94"/>
<wire x1="2.54" y1="7.62" x2="2.54" y2="12.7" width="0.254" layer="94"/>
<wire x1="-5.08" y1="12.7" x2="-5.08" y2="10.16" width="0.254" layer="94"/>
<wire x1="-5.08" y1="10.16" x2="-5.08" y2="5.08" width="0.254" layer="94"/>
<wire x1="-5.08" y1="5.08" x2="-5.08" y2="3.81" width="0.254" layer="94"/>
<wire x1="-5.08" y1="3.81" x2="-7.62" y2="3.81" width="0.254" layer="94"/>
<wire x1="-7.62" y1="3.81" x2="-7.62" y2="15.24" width="0.254" layer="94"/>
<wire x1="7.62" y1="12.7" x2="7.62" y2="10.16" width="0.254" layer="94"/>
<wire x1="7.62" y1="10.16" x2="7.62" y2="5.08" width="0.254" layer="94"/>
<wire x1="7.62" y1="5.08" x2="7.62" y2="3.81" width="0.254" layer="94"/>
<wire x1="7.62" y1="3.81" x2="10.16" y2="3.81" width="0.254" layer="94"/>
<wire x1="10.16" y1="3.81" x2="10.16" y2="15.24" width="0.254" layer="94"/>
<wire x1="-5.08" y1="5.08" x2="0" y2="5.08" width="0.254" layer="94"/>
<wire x1="0" y1="5.08" x2="1.27" y2="5.08" width="0.254" layer="94"/>
<wire x1="1.27" y1="5.08" x2="1.27" y2="2.54" width="0.254" layer="94"/>
<wire x1="1.27" y1="2.54" x2="0" y2="2.54" width="0.254" layer="94"/>
<wire x1="0" y1="2.54" x2="-5.08" y2="2.54" width="0.254" layer="94"/>
<wire x1="-5.08" y1="2.54" x2="-5.08" y2="5.08" width="0.254" layer="94"/>
<wire x1="2.54" y1="5.08" x2="7.62" y2="5.08" width="0.254" layer="94"/>
<wire x1="7.62" y1="5.08" x2="7.62" y2="2.54" width="0.254" layer="94"/>
<wire x1="7.62" y1="2.54" x2="2.54" y2="2.54" width="0.254" layer="94"/>
<wire x1="2.54" y1="2.54" x2="0" y2="2.54" width="0.254" layer="94"/>
<wire x1="0" y1="5.08" x2="-5.08" y2="10.16" width="0.254" layer="94"/>
<wire x1="-5.08" y1="10.16" x2="-5.08" y2="12.7" width="0.254" layer="94"/>
<wire x1="-5.08" y1="12.7" x2="0" y2="7.62" width="0.254" layer="94"/>
<wire x1="2.54" y1="7.62" x2="7.62" y2="12.7" width="0.254" layer="94"/>
<wire x1="7.62" y1="12.7" x2="7.62" y2="10.16" width="0.254" layer="94"/>
<wire x1="7.62" y1="10.16" x2="2.54" y2="5.08" width="0.254" layer="94"/>
<wire x1="0" y1="2.54" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="0" y2="-5.08" width="0.254" layer="94"/>
<wire x1="0" y1="-5.08" x2="1.27" y2="-5.08" width="0.254" layer="94"/>
<wire x1="1.27" y1="-5.08" x2="2.54" y2="-5.08" width="0.254" layer="94"/>
<wire x1="2.54" y1="-5.08" x2="2.54" y2="0" width="0.254" layer="94"/>
<wire x1="2.54" y1="0" x2="2.54" y2="2.54" width="0.254" layer="94"/>
<wire x1="-5.08" y1="2.54" x2="-5.08" y2="-2.54" width="0.254" layer="94"/>
<wire x1="-5.08" y1="-2.54" x2="-5.08" y2="-5.08" width="0.254" layer="94"/>
<wire x1="-5.08" y1="-5.08" x2="-7.62" y2="-7.62" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-7.62" x2="-7.62" y2="3.81" width="0.254" layer="94"/>
<wire x1="7.62" y1="2.54" x2="7.62" y2="-2.54" width="0.254" layer="94"/>
<wire x1="7.62" y1="-2.54" x2="7.62" y2="-5.08" width="0.254" layer="94"/>
<wire x1="7.62" y1="-5.08" x2="10.16" y2="-7.62" width="0.254" layer="94"/>
<wire x1="10.16" y1="-7.62" x2="10.16" y2="3.81" width="0.254" layer="94"/>
<wire x1="-5.08" y1="-5.08" x2="1.27" y2="-5.08" width="0.254" layer="94"/>
<wire x1="1.27" y1="-5.08" x2="1.27" y2="-7.62" width="0.254" layer="94"/>
<wire x1="1.27" y1="-7.62" x2="-7.62" y2="-7.62" width="0.254" layer="94"/>
<wire x1="7.62" y1="-5.08" x2="1.27" y2="-5.08" width="0.254" layer="94"/>
<wire x1="1.27" y1="-5.08" x2="1.27" y2="-7.62" width="0.254" layer="94"/>
<wire x1="1.27" y1="-7.62" x2="10.16" y2="-7.62" width="0.254" layer="94"/>
<wire x1="0" y1="2.54" x2="-5.08" y2="-2.54" width="0.254" layer="94"/>
<wire x1="-5.08" y1="-2.54" x2="-5.08" y2="-5.08" width="0.254" layer="94"/>
<wire x1="-5.08" y1="-5.08" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="2.54" y1="0" x2="7.62" y2="-5.08" width="0.254" layer="94"/>
<wire x1="7.62" y1="-5.08" x2="7.62" y2="-2.54" width="0.254" layer="94"/>
<wire x1="7.62" y1="-2.54" x2="2.54" y2="2.54" width="0.254" layer="94"/>
<circle x="12.7" y="-6.35" radius="1.27" width="0.254" layer="94"/>
<wire x1="-15.24" y1="25.4" x2="17.78" y2="25.4" width="0.254" layer="94"/>
<wire x1="17.78" y1="25.4" x2="17.78" y2="-27.94" width="0.254" layer="94"/>
<wire x1="17.78" y1="-27.94" x2="-15.24" y2="-27.94" width="0.254" layer="94"/>
<wire x1="-15.24" y1="-27.94" x2="-15.24" y2="25.4" width="0.254" layer="94"/>
<pin name="T" x="-20.32" y="-17.78" length="middle" direction="in"/>
<pin name="U" x="-20.32" y="-20.32" length="middle" direction="in"/>
<text x="-12.7" y="27.94" size="1.27" layer="255" align="top-left">&gt;NAME</text>
<text x="-12.7" y="-30.48" size="1.27" layer="96">&gt;VALUE</text>
</symbol>
<symbol name="M">
<wire x1="1.27" y1="0" x2="0" y2="0" width="0.6096" layer="94"/>
<text x="2.54" y="-0.762" size="1.778" layer="95">&gt;NAME</text>
<text x="-0.254" y="-2.921" size="1.778" layer="96">&gt;VALUE</text>
<pin name="S" x="-2.54" y="0" visible="off" length="short" direction="pas"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="PSA08-11SYKWA" prefix="LED">
<gates>
<gate name="G$1" symbol="PSA08-11SYKWA" x="0" y="0"/>
</gates>
<devices>
<device name="" package="PSA08-11SYKWA">
<connects>
<connect gate="G$1" pin="A" pad="1"/>
<connect gate="G$1" pin="B" pad="18"/>
<connect gate="G$1" pin="C" pad="16"/>
<connect gate="G$1" pin="CA" pad="11"/>
<connect gate="G$1" pin="D" pad="13"/>
<connect gate="G$1" pin="DP" pad="12"/>
<connect gate="G$1" pin="E" pad="10"/>
<connect gate="G$1" pin="F" pad="9"/>
<connect gate="G$1" pin="G" pad="8"/>
<connect gate="G$1" pin="H" pad="4"/>
<connect gate="G$1" pin="K" pad="3"/>
<connect gate="G$1" pin="M" pad="2"/>
<connect gate="G$1" pin="N" pad="17"/>
<connect gate="G$1" pin="P" pad="15"/>
<connect gate="G$1" pin="R" pad="14"/>
<connect gate="G$1" pin="S" pad="6"/>
<connect gate="G$1" pin="T" pad="7"/>
<connect gate="G$1" pin="U" pad="5"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="HDR40" prefix="CON" uservalue="yes">
<gates>
<gate name="-1" symbol="M" x="-35.56" y="22.86" addlevel="always"/>
<gate name="-2" symbol="M" x="-35.56" y="17.78" addlevel="always"/>
<gate name="-3" symbol="M" x="-35.56" y="12.7" addlevel="always"/>
<gate name="-4" symbol="M" x="-35.56" y="7.62" addlevel="always"/>
<gate name="-5" symbol="M" x="-35.56" y="2.54" addlevel="always"/>
<gate name="-6" symbol="M" x="-35.56" y="-2.54" addlevel="always"/>
<gate name="-7" symbol="M" x="-35.56" y="-7.62" addlevel="always"/>
<gate name="-8" symbol="M" x="-35.56" y="-12.7" addlevel="always"/>
<gate name="-9" symbol="M" x="-35.56" y="-17.78" addlevel="always"/>
<gate name="-10" symbol="M" x="-35.56" y="-22.86" addlevel="always"/>
<gate name="-11" symbol="M" x="-12.7" y="22.86" addlevel="always"/>
<gate name="-12" symbol="M" x="-12.7" y="17.78" addlevel="always"/>
<gate name="-13" symbol="M" x="-12.7" y="12.7" addlevel="always"/>
<gate name="-14" symbol="M" x="-12.7" y="7.62" addlevel="always"/>
<gate name="-15" symbol="M" x="-12.7" y="2.54" addlevel="always"/>
<gate name="-16" symbol="M" x="-12.7" y="-2.54" addlevel="always"/>
<gate name="-17" symbol="M" x="-12.7" y="-7.62" addlevel="always"/>
<gate name="-18" symbol="M" x="-12.7" y="-12.7" addlevel="always"/>
<gate name="-19" symbol="M" x="-12.7" y="-17.78" addlevel="always"/>
<gate name="-20" symbol="M" x="-12.7" y="-22.86" addlevel="always"/>
<gate name="-21" symbol="M" x="10.16" y="22.86" addlevel="always"/>
<gate name="-22" symbol="M" x="10.16" y="17.78" addlevel="always"/>
<gate name="-23" symbol="M" x="10.16" y="12.7" addlevel="always"/>
<gate name="-24" symbol="M" x="10.16" y="7.62" addlevel="always"/>
<gate name="-25" symbol="M" x="10.16" y="2.54" addlevel="always"/>
<gate name="-26" symbol="M" x="10.16" y="-2.54" addlevel="always"/>
<gate name="-27" symbol="M" x="10.16" y="-7.62" addlevel="always"/>
<gate name="-28" symbol="M" x="10.16" y="-12.7" addlevel="always"/>
<gate name="-29" symbol="M" x="10.16" y="-17.78" addlevel="always"/>
<gate name="-30" symbol="M" x="10.16" y="-22.86" addlevel="always"/>
<gate name="-31" symbol="M" x="33.02" y="22.86" addlevel="always"/>
<gate name="-32" symbol="M" x="33.02" y="17.78" addlevel="always"/>
<gate name="-33" symbol="M" x="33.02" y="12.7" addlevel="always"/>
<gate name="-34" symbol="M" x="33.02" y="7.62" addlevel="always"/>
<gate name="-35" symbol="M" x="33.02" y="2.54" addlevel="always"/>
<gate name="-36" symbol="M" x="33.02" y="-2.54" addlevel="always"/>
<gate name="-37" symbol="M" x="33.02" y="-7.62" addlevel="always"/>
<gate name="-38" symbol="M" x="33.02" y="-12.7" addlevel="always"/>
<gate name="-39" symbol="M" x="33.02" y="-17.78" addlevel="always"/>
<gate name="-40" symbol="M" x="33.02" y="-22.86" addlevel="always"/>
</gates>
<devices>
<device name="" package="HDR40">
<connects>
<connect gate="-1" pin="S" pad="1"/>
<connect gate="-10" pin="S" pad="10"/>
<connect gate="-11" pin="S" pad="11"/>
<connect gate="-12" pin="S" pad="12"/>
<connect gate="-13" pin="S" pad="13"/>
<connect gate="-14" pin="S" pad="14"/>
<connect gate="-15" pin="S" pad="15"/>
<connect gate="-16" pin="S" pad="16"/>
<connect gate="-17" pin="S" pad="17"/>
<connect gate="-18" pin="S" pad="18"/>
<connect gate="-19" pin="S" pad="19"/>
<connect gate="-2" pin="S" pad="2"/>
<connect gate="-20" pin="S" pad="20"/>
<connect gate="-21" pin="S" pad="21"/>
<connect gate="-22" pin="S" pad="22"/>
<connect gate="-23" pin="S" pad="23"/>
<connect gate="-24" pin="S" pad="24"/>
<connect gate="-25" pin="S" pad="25"/>
<connect gate="-26" pin="S" pad="26"/>
<connect gate="-27" pin="S" pad="27"/>
<connect gate="-28" pin="S" pad="28"/>
<connect gate="-29" pin="S" pad="29"/>
<connect gate="-3" pin="S" pad="3"/>
<connect gate="-30" pin="S" pad="30"/>
<connect gate="-31" pin="S" pad="31"/>
<connect gate="-32" pin="S" pad="32"/>
<connect gate="-33" pin="S" pad="33"/>
<connect gate="-34" pin="S" pad="34"/>
<connect gate="-35" pin="S" pad="35"/>
<connect gate="-36" pin="S" pad="36"/>
<connect gate="-37" pin="S" pad="37"/>
<connect gate="-38" pin="S" pad="38"/>
<connect gate="-39" pin="S" pad="39"/>
<connect gate="-4" pin="S" pad="4"/>
<connect gate="-40" pin="S" pad="40"/>
<connect gate="-5" pin="S" pad="5"/>
<connect gate="-6" pin="S" pad="6"/>
<connect gate="-7" pin="S" pad="7"/>
<connect gate="-8" pin="S" pad="8"/>
<connect gate="-9" pin="S" pad="9"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="transistor-power">
<description>&lt;b&gt;Power Transistors&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="TO126AV">
<description>&lt;b&gt;Molded Package&lt;/b&gt;&lt;p&gt;
grid 2.3 mm</description>
<wire x1="-3.937" y1="-0.127" x2="-3.937" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-3.937" y1="-1.27" x2="-3.683" y2="-2.794" width="0.1524" layer="21"/>
<wire x1="3.683" y1="-2.794" x2="3.937" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="3.937" y1="-1.27" x2="3.937" y2="-0.127" width="0.1524" layer="21"/>
<wire x1="-3.683" y1="-2.794" x2="-2.794" y2="-2.794" width="0.1524" layer="21"/>
<wire x1="-2.794" y1="-2.794" x2="-1.778" y2="-2.794" width="0.1524" layer="51"/>
<wire x1="-1.778" y1="-2.794" x2="-0.508" y2="-2.794" width="0.1524" layer="21"/>
<wire x1="-0.508" y1="-2.794" x2="0.508" y2="-2.794" width="0.1524" layer="51"/>
<wire x1="0.508" y1="-2.794" x2="1.778" y2="-2.794" width="0.1524" layer="21"/>
<wire x1="1.778" y1="-2.794" x2="2.794" y2="-2.794" width="0.1524" layer="51"/>
<wire x1="2.794" y1="-2.794" x2="3.683" y2="-2.794" width="0.1524" layer="21"/>
<circle x="-3.175" y="-2.159" radius="0.4064" width="0.1524" layer="51"/>
<pad name="E" x="-2.286" y="-1.27" drill="1.016" shape="long" rot="R90"/>
<pad name="C" x="0" y="-1.27" drill="1.016" shape="long" rot="R90"/>
<pad name="B" x="2.286" y="-1.27" drill="1.016" shape="long" rot="R90"/>
<text x="-3.9624" y="-4.5466" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.9878" y="-6.3246" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-3.937" y1="-0.381" x2="-3.175" y2="0" layer="21"/>
<rectangle x1="-1.397" y1="-0.381" x2="-0.889" y2="0" layer="21"/>
<rectangle x1="0.889" y1="-0.381" x2="1.397" y2="0" layer="21"/>
<rectangle x1="3.175" y1="-0.381" x2="3.937" y2="0" layer="21"/>
<rectangle x1="-3.175" y1="-0.381" x2="-1.397" y2="0" layer="51"/>
<rectangle x1="-0.889" y1="-0.381" x2="0.889" y2="0" layer="51"/>
<rectangle x1="1.397" y1="-0.381" x2="3.175" y2="0" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="PNP">
<wire x1="2.54" y1="-2.54" x2="0" y2="0" width="0.1524" layer="94"/>
<wire x1="0" y1="0" x2="1.016" y2="1.016" width="0.1524" layer="94"/>
<wire x1="2.413" y1="1.651" x2="1.016" y2="1.016" width="0.1524" layer="94"/>
<wire x1="1.016" y1="1.016" x2="1.143" y2="1.143" width="0.1524" layer="94"/>
<wire x1="1.905" y1="1.905" x2="2.54" y2="2.54" width="0.1524" layer="94"/>
<wire x1="1.016" y1="1.016" x2="1.651" y2="2.413" width="0.1524" layer="94"/>
<wire x1="1.651" y1="2.413" x2="2.413" y2="1.651" width="0.1524" layer="94"/>
<wire x1="1.143" y1="1.143" x2="2.159" y2="1.651" width="0.254" layer="94"/>
<wire x1="2.159" y1="1.651" x2="1.905" y2="1.905" width="0.254" layer="94"/>
<wire x1="1.905" y1="1.905" x2="1.651" y2="2.159" width="0.254" layer="94"/>
<wire x1="1.651" y1="2.159" x2="1.143" y2="1.143" width="0.254" layer="94"/>
<wire x1="1.143" y1="1.143" x2="1.905" y2="1.905" width="0.254" layer="94"/>
<wire x1="1.651" y1="1.905" x2="1.905" y2="1.651" width="0.254" layer="94"/>
<text x="5.08" y="2.54" size="1.778" layer="95">&gt;NAME</text>
<text x="5.08" y="0" size="1.778" layer="96">&gt;VALUE</text>
<rectangle x1="-0.381" y1="-2.54" x2="0.381" y2="2.54" layer="94"/>
<pin name="B" x="-2.54" y="0" visible="off" length="short" direction="pas"/>
<pin name="E" x="2.54" y="5.08" visible="off" length="short" direction="pas" rot="R270"/>
<pin name="C" x="2.54" y="-5.08" visible="off" length="short" direction="pas" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="BD438" prefix="Q">
<description>&lt;b&gt;PNP TRANSISTOR&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="PNP" x="0" y="0"/>
</gates>
<devices>
<device name="" package="TO126AV">
<connects>
<connect gate="1" pin="B" pad="B"/>
<connect gate="1" pin="C" pad="C"/>
<connect gate="1" pin="E" pad="E"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="R1" library="rcl" deviceset="R-EU_" device="0207/10" value="1K"/>
<part name="R2" library="rcl" deviceset="R-EU_" device="0207/10" value="1K"/>
<part name="R3" library="rcl" deviceset="R-EU_" device="0207/10" value="1K"/>
<part name="P+2" library="supply1" deviceset="+5V" device=""/>
<part name="LED_R1C0" library="Z80 clock" deviceset="PSA08-11SYKWA" device=""/>
<part name="LED_R2C0" library="Z80 clock" deviceset="PSA08-11SYKWA" device=""/>
<part name="LED_R3C0" library="Z80 clock" deviceset="PSA08-11SYKWA" device=""/>
<part name="CN1" library="Z80 clock" deviceset="HDR40" device=""/>
<part name="CN2" library="Z80 clock" deviceset="HDR40" device=""/>
<part name="CN3" library="Z80 clock" deviceset="HDR40" device=""/>
<part name="CN4" library="Z80 clock" deviceset="HDR40" device=""/>
<part name="Q1" library="transistor-power" deviceset="BD438" device=""/>
<part name="Q2" library="transistor-power" deviceset="BD438" device=""/>
<part name="Q3" library="transistor-power" deviceset="BD438" device=""/>
<part name="LED_R1C1" library="Z80 clock" deviceset="PSA08-11SYKWA" device=""/>
<part name="LED_R2C1" library="Z80 clock" deviceset="PSA08-11SYKWA" device=""/>
<part name="LED_R3C1" library="Z80 clock" deviceset="PSA08-11SYKWA" device=""/>
<part name="LED_R1C2" library="Z80 clock" deviceset="PSA08-11SYKWA" device=""/>
<part name="LED_R2C2" library="Z80 clock" deviceset="PSA08-11SYKWA" device=""/>
<part name="LED_R3C2" library="Z80 clock" deviceset="PSA08-11SYKWA" device=""/>
<part name="LED_R1C3" library="Z80 clock" deviceset="PSA08-11SYKWA" device=""/>
<part name="LED_R2C3" library="Z80 clock" deviceset="PSA08-11SYKWA" device=""/>
<part name="LED_R3C3" library="Z80 clock" deviceset="PSA08-11SYKWA" device=""/>
<part name="LED_R1C4" library="Z80 clock" deviceset="PSA08-11SYKWA" device=""/>
<part name="LED_R2C4" library="Z80 clock" deviceset="PSA08-11SYKWA" device=""/>
<part name="LED_R3C4" library="Z80 clock" deviceset="PSA08-11SYKWA" device=""/>
<part name="LED_R1C5" library="Z80 clock" deviceset="PSA08-11SYKWA" device=""/>
<part name="LED_R2C5" library="Z80 clock" deviceset="PSA08-11SYKWA" device=""/>
<part name="LED_R3C5" library="Z80 clock" deviceset="PSA08-11SYKWA" device=""/>
<part name="LED_R1C6" library="Z80 clock" deviceset="PSA08-11SYKWA" device=""/>
<part name="LED_R2C6" library="Z80 clock" deviceset="PSA08-11SYKWA" device=""/>
<part name="LED_R3C6" library="Z80 clock" deviceset="PSA08-11SYKWA" device=""/>
<part name="LED_R1C7" library="Z80 clock" deviceset="PSA08-11SYKWA" device=""/>
<part name="LED_R2C7" library="Z80 clock" deviceset="PSA08-11SYKWA" device=""/>
<part name="LED_R3C7" library="Z80 clock" deviceset="PSA08-11SYKWA" device=""/>
<part name="P+1" library="supply1" deviceset="+5V" device=""/>
<part name="GND1" library="supply1" deviceset="GND" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="R1" gate="G$1" x="-177.8" y="99.06" smashed="yes">
<attribute name="NAME" x="-181.61" y="100.5586" size="1.778" layer="95"/>
<attribute name="VALUE" x="-181.61" y="95.758" size="1.778" layer="96"/>
</instance>
<instance part="R2" gate="G$1" x="-177.8" y="78.74" smashed="yes">
<attribute name="NAME" x="-181.61" y="80.2386" size="1.778" layer="95"/>
<attribute name="VALUE" x="-181.61" y="75.438" size="1.778" layer="96"/>
</instance>
<instance part="R3" gate="G$1" x="-177.8" y="58.42" smashed="yes">
<attribute name="NAME" x="-181.61" y="59.9186" size="1.778" layer="95"/>
<attribute name="VALUE" x="-181.61" y="55.118" size="1.778" layer="96"/>
</instance>
<instance part="P+2" gate="1" x="-149.86" y="114.3" smashed="yes">
<attribute name="VALUE" x="-152.4" y="109.22" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="LED_R1C0" gate="G$1" x="-7.62" y="109.22" smashed="yes">
<attribute name="NAME" x="-20.32" y="137.16" size="1.27" layer="255" align="top-left"/>
<attribute name="VALUE" x="-20.32" y="78.74" size="1.27" layer="96"/>
</instance>
<instance part="LED_R2C0" gate="G$1" x="-7.62" y="45.72" smashed="yes">
<attribute name="NAME" x="-20.32" y="73.66" size="1.27" layer="255" align="top-left"/>
<attribute name="VALUE" x="-20.32" y="15.24" size="1.27" layer="96"/>
</instance>
<instance part="LED_R3C0" gate="G$1" x="-7.62" y="-17.78" smashed="yes">
<attribute name="NAME" x="-20.32" y="10.16" size="1.27" layer="255" align="top-left"/>
<attribute name="VALUE" x="-20.32" y="-48.26" size="1.27" layer="96"/>
</instance>
<instance part="CN1" gate="-1" x="304.8" y="-121.92" smashed="yes" rot="MR0">
<attribute name="NAME" x="302.26" y="-122.682" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="305.054" y="-124.841" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN1" gate="-2" x="172.72" y="-121.92" smashed="yes" rot="MR0">
<attribute name="NAME" x="170.18" y="-122.682" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="172.974" y="-124.841" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN1" gate="-3" x="43.18" y="-121.92" smashed="yes" rot="MR0">
<attribute name="NAME" x="40.64" y="-122.682" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="43.434" y="-124.841" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN1" gate="-4" x="-88.9" y="-121.92" smashed="yes" rot="MR0">
<attribute name="NAME" x="-91.44" y="-122.682" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="-88.646" y="-124.841" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN1" gate="-5" x="304.8" y="83.82" smashed="yes" rot="MR0">
<attribute name="NAME" x="302.26" y="83.058" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="305.054" y="80.899" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN1" gate="-6" x="172.72" y="83.82" smashed="yes" rot="MR0">
<attribute name="NAME" x="170.18" y="83.058" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="172.974" y="80.899" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN1" gate="-7" x="43.18" y="83.82" smashed="yes" rot="MR0">
<attribute name="NAME" x="40.64" y="83.058" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="43.434" y="80.899" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN1" gate="-8" x="-88.9" y="83.82" smashed="yes" rot="MR0">
<attribute name="NAME" x="-91.44" y="83.058" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="-88.646" y="80.899" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN1" gate="-9" x="-88.9" y="111.76" smashed="yes" rot="MR0">
<attribute name="NAME" x="-91.44" y="110.998" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="-88.646" y="108.839" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN1" gate="-10" x="-88.9" y="91.44" smashed="yes" rot="MR0">
<attribute name="NAME" x="-91.44" y="90.678" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="-88.646" y="88.519" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN1" gate="-11" x="-88.9" y="93.98" smashed="yes" rot="MR0">
<attribute name="NAME" x="-91.44" y="93.218" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="-88.646" y="91.059" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN1" gate="-12" x="-88.9" y="88.9" smashed="yes" rot="MR0">
<attribute name="NAME" x="-91.44" y="88.138" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="-88.646" y="85.979" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN1" gate="-13" x="-88.9" y="109.22" smashed="yes" rot="MR0">
<attribute name="NAME" x="-91.44" y="108.458" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="-88.646" y="106.299" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN1" gate="-14" x="-88.9" y="106.68" smashed="yes" rot="MR0">
<attribute name="NAME" x="-91.44" y="105.918" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="-88.646" y="103.759" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN1" gate="-15" x="-88.9" y="104.14" smashed="yes" rot="MR0">
<attribute name="NAME" x="-91.44" y="103.378" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="-88.646" y="101.219" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN1" gate="-16" x="-88.9" y="127" smashed="yes" rot="MR0">
<attribute name="NAME" x="-91.44" y="126.238" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="-88.646" y="124.079" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN1" gate="-17" x="-88.9" y="124.46" smashed="yes" rot="MR0">
<attribute name="NAME" x="-91.44" y="123.698" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="-88.646" y="121.539" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN1" gate="-18" x="-88.9" y="101.6" smashed="yes" rot="MR0">
<attribute name="NAME" x="-91.44" y="100.838" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="-88.646" y="98.679" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN1" gate="-19" x="-88.9" y="121.92" smashed="yes" rot="MR0">
<attribute name="NAME" x="-91.44" y="121.158" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="-88.646" y="118.999" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN1" gate="-20" x="-88.9" y="99.06" smashed="yes" rot="MR0">
<attribute name="NAME" x="-91.44" y="98.298" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="-88.646" y="96.139" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN1" gate="-21" x="-88.9" y="96.52" smashed="yes" rot="MR0">
<attribute name="NAME" x="-91.44" y="95.758" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="-88.646" y="93.599" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN1" gate="-22" x="-88.9" y="119.38" smashed="yes" rot="MR0">
<attribute name="NAME" x="-91.44" y="118.618" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="-88.646" y="116.459" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN1" gate="-23" x="-88.9" y="116.84" smashed="yes" rot="MR0">
<attribute name="NAME" x="-91.44" y="116.078" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="-88.646" y="113.919" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN1" gate="-24" x="-88.9" y="114.3" smashed="yes" rot="MR0">
<attribute name="NAME" x="-91.44" y="113.538" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="-88.646" y="111.379" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN1" gate="-25" x="172.72" y="111.76" smashed="yes" rot="MR0">
<attribute name="NAME" x="170.18" y="110.998" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="172.974" y="108.839" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN1" gate="-26" x="172.72" y="91.44" smashed="yes" rot="MR0">
<attribute name="NAME" x="170.18" y="90.678" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="172.974" y="88.519" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN1" gate="-27" x="172.72" y="93.98" smashed="yes" rot="MR0">
<attribute name="NAME" x="170.18" y="93.218" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="172.974" y="91.059" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN1" gate="-28" x="172.72" y="88.9" smashed="yes" rot="MR0">
<attribute name="NAME" x="170.18" y="88.138" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="172.974" y="85.979" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN1" gate="-29" x="172.72" y="109.22" smashed="yes" rot="MR0">
<attribute name="NAME" x="170.18" y="108.458" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="172.974" y="106.299" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN1" gate="-30" x="172.72" y="106.68" smashed="yes" rot="MR0">
<attribute name="NAME" x="170.18" y="105.918" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="172.974" y="103.759" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN1" gate="-31" x="172.72" y="104.14" smashed="yes" rot="MR0">
<attribute name="NAME" x="170.18" y="103.378" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="172.974" y="101.219" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN1" gate="-32" x="172.72" y="127" smashed="yes" rot="MR0">
<attribute name="NAME" x="170.18" y="126.238" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="172.974" y="124.079" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN1" gate="-33" x="172.72" y="124.46" smashed="yes" rot="MR0">
<attribute name="NAME" x="170.18" y="123.698" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="172.974" y="121.539" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN1" gate="-34" x="172.72" y="101.6" smashed="yes" rot="MR0">
<attribute name="NAME" x="170.18" y="100.838" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="172.974" y="98.679" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN1" gate="-35" x="172.72" y="121.92" smashed="yes" rot="MR0">
<attribute name="NAME" x="170.18" y="121.158" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="172.974" y="118.999" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN1" gate="-36" x="172.72" y="99.06" smashed="yes" rot="MR0">
<attribute name="NAME" x="170.18" y="98.298" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="172.974" y="96.139" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN1" gate="-37" x="172.72" y="96.52" smashed="yes" rot="MR0">
<attribute name="NAME" x="170.18" y="95.758" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="172.974" y="93.599" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN1" gate="-38" x="172.72" y="119.38" smashed="yes" rot="MR0">
<attribute name="NAME" x="170.18" y="118.618" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="172.974" y="116.459" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN1" gate="-39" x="172.72" y="116.84" smashed="yes" rot="MR0">
<attribute name="NAME" x="170.18" y="116.078" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="172.974" y="113.919" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN1" gate="-40" x="172.72" y="114.3" smashed="yes" rot="MR0">
<attribute name="NAME" x="170.18" y="113.538" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="172.974" y="111.379" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN2" gate="-1" x="-88.9" y="-93.98" smashed="yes" rot="MR0">
<attribute name="NAME" x="-91.44" y="-94.742" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="-88.646" y="-96.901" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN2" gate="-2" x="-88.9" y="-114.3" smashed="yes" rot="MR0">
<attribute name="NAME" x="-91.44" y="-115.062" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="-88.646" y="-117.221" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN2" gate="-3" x="-88.9" y="-111.76" smashed="yes" rot="MR0">
<attribute name="NAME" x="-91.44" y="-112.522" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="-88.646" y="-114.681" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN2" gate="-4" x="-88.9" y="-116.84" smashed="yes" rot="MR0">
<attribute name="NAME" x="-91.44" y="-117.602" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="-88.646" y="-119.761" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN2" gate="-5" x="-88.9" y="-96.52" smashed="yes" rot="MR0">
<attribute name="NAME" x="-91.44" y="-97.282" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="-88.646" y="-99.441" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN2" gate="-6" x="-88.9" y="-99.06" smashed="yes" rot="MR0">
<attribute name="NAME" x="-91.44" y="-99.822" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="-88.646" y="-101.981" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN2" gate="-7" x="-88.9" y="-101.6" smashed="yes" rot="MR0">
<attribute name="NAME" x="-91.44" y="-102.362" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="-88.646" y="-104.521" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN2" gate="-8" x="-88.9" y="-78.74" smashed="yes" rot="MR0">
<attribute name="NAME" x="-91.44" y="-79.502" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="-88.646" y="-81.661" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN2" gate="-9" x="-88.9" y="-81.28" smashed="yes" rot="MR0">
<attribute name="NAME" x="-91.44" y="-82.042" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="-88.646" y="-84.201" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN2" gate="-10" x="-88.9" y="-104.14" smashed="yes" rot="MR0">
<attribute name="NAME" x="-91.44" y="-104.902" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="-88.646" y="-107.061" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN2" gate="-11" x="-88.9" y="-83.82" smashed="yes" rot="MR0">
<attribute name="NAME" x="-91.44" y="-84.582" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="-88.646" y="-86.741" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN2" gate="-12" x="-88.9" y="-106.68" smashed="yes" rot="MR0">
<attribute name="NAME" x="-91.44" y="-107.442" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="-88.646" y="-109.601" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN2" gate="-13" x="-88.9" y="-109.22" smashed="yes" rot="MR0">
<attribute name="NAME" x="-91.44" y="-109.982" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="-88.646" y="-112.141" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN2" gate="-14" x="-88.9" y="-86.36" smashed="yes" rot="MR0">
<attribute name="NAME" x="-91.44" y="-87.122" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="-88.646" y="-89.281" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN2" gate="-15" x="-88.9" y="-88.9" smashed="yes" rot="MR0">
<attribute name="NAME" x="-91.44" y="-89.662" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="-88.646" y="-91.821" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN2" gate="-16" x="-88.9" y="-91.44" smashed="yes" rot="MR0">
<attribute name="NAME" x="-91.44" y="-92.202" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="-88.646" y="-94.361" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN2" gate="-17" x="172.72" y="-93.98" smashed="yes" rot="MR0">
<attribute name="NAME" x="170.18" y="-94.742" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="172.974" y="-96.901" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN2" gate="-18" x="172.72" y="-114.3" smashed="yes" rot="MR0">
<attribute name="NAME" x="170.18" y="-115.062" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="172.974" y="-117.221" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN2" gate="-19" x="172.72" y="-111.76" smashed="yes" rot="MR0">
<attribute name="NAME" x="170.18" y="-112.522" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="172.974" y="-114.681" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN2" gate="-20" x="172.72" y="-116.84" smashed="yes" rot="MR0">
<attribute name="NAME" x="170.18" y="-117.602" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="172.974" y="-119.761" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN2" gate="-21" x="172.72" y="-96.52" smashed="yes" rot="MR0">
<attribute name="NAME" x="170.18" y="-97.282" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="172.974" y="-99.441" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN2" gate="-22" x="172.72" y="-99.06" smashed="yes" rot="MR0">
<attribute name="NAME" x="170.18" y="-99.822" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="172.974" y="-101.981" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN2" gate="-23" x="172.72" y="-101.6" smashed="yes" rot="MR0">
<attribute name="NAME" x="170.18" y="-102.362" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="172.974" y="-104.521" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN2" gate="-24" x="172.72" y="-78.74" smashed="yes" rot="MR0">
<attribute name="NAME" x="170.18" y="-79.502" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="172.974" y="-81.661" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN2" gate="-25" x="172.72" y="-81.28" smashed="yes" rot="MR0">
<attribute name="NAME" x="170.18" y="-82.042" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="172.974" y="-84.201" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN2" gate="-26" x="172.72" y="-104.14" smashed="yes" rot="MR0">
<attribute name="NAME" x="170.18" y="-104.902" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="172.974" y="-107.061" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN2" gate="-27" x="172.72" y="-83.82" smashed="yes" rot="MR0">
<attribute name="NAME" x="170.18" y="-84.582" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="172.974" y="-86.741" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN2" gate="-28" x="172.72" y="-106.68" smashed="yes" rot="MR0">
<attribute name="NAME" x="170.18" y="-107.442" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="172.974" y="-109.601" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN2" gate="-29" x="172.72" y="-109.22" smashed="yes" rot="MR0">
<attribute name="NAME" x="170.18" y="-109.982" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="172.974" y="-112.141" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN2" gate="-30" x="172.72" y="-86.36" smashed="yes" rot="MR0">
<attribute name="NAME" x="170.18" y="-87.122" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="172.974" y="-89.281" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN2" gate="-31" x="172.72" y="-88.9" smashed="yes" rot="MR0">
<attribute name="NAME" x="170.18" y="-89.662" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="172.974" y="-91.821" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN2" gate="-32" x="172.72" y="-91.44" smashed="yes" rot="MR0">
<attribute name="NAME" x="170.18" y="-92.202" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="172.974" y="-94.361" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN2" gate="-33" x="304.8" y="-93.98" smashed="yes" rot="MR0">
<attribute name="NAME" x="302.26" y="-94.742" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="305.054" y="-96.901" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN2" gate="-34" x="304.8" y="-114.3" smashed="yes" rot="MR0">
<attribute name="NAME" x="302.26" y="-115.062" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="305.054" y="-117.221" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN2" gate="-35" x="304.8" y="-111.76" smashed="yes" rot="MR0">
<attribute name="NAME" x="302.26" y="-112.522" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="305.054" y="-114.681" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN2" gate="-36" x="304.8" y="-116.84" smashed="yes" rot="MR0">
<attribute name="NAME" x="302.26" y="-117.602" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="305.054" y="-119.761" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN2" gate="-37" x="304.8" y="-96.52" smashed="yes" rot="MR0">
<attribute name="NAME" x="302.26" y="-97.282" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="305.054" y="-99.441" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN2" gate="-38" x="304.8" y="-99.06" smashed="yes" rot="MR0">
<attribute name="NAME" x="302.26" y="-99.822" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="305.054" y="-101.981" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN2" gate="-39" x="304.8" y="-101.6" smashed="yes" rot="MR0">
<attribute name="NAME" x="302.26" y="-102.362" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="305.054" y="-104.521" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN2" gate="-40" x="304.8" y="-78.74" smashed="yes" rot="MR0">
<attribute name="NAME" x="302.26" y="-79.502" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="305.054" y="-81.661" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN3" gate="-1" x="43.18" y="88.9" smashed="yes" rot="MR0">
<attribute name="NAME" x="40.64" y="88.138" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="43.434" y="85.979" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN3" gate="-2" x="43.18" y="93.98" smashed="yes" rot="MR0">
<attribute name="NAME" x="40.64" y="93.218" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="43.434" y="91.059" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN3" gate="-3" x="43.18" y="91.44" smashed="yes" rot="MR0">
<attribute name="NAME" x="40.64" y="90.678" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="43.434" y="88.519" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN3" gate="-4" x="43.18" y="111.76" smashed="yes" rot="MR0">
<attribute name="NAME" x="40.64" y="110.998" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="43.434" y="108.839" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN3" gate="-5" x="43.18" y="127" smashed="yes" rot="MR0">
<attribute name="NAME" x="40.64" y="126.238" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="43.434" y="124.079" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN3" gate="-6" x="43.18" y="104.14" smashed="yes" rot="MR0">
<attribute name="NAME" x="40.64" y="103.378" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="43.434" y="101.219" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN3" gate="-7" x="43.18" y="106.68" smashed="yes" rot="MR0">
<attribute name="NAME" x="40.64" y="105.918" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="43.434" y="103.759" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN3" gate="-8" x="43.18" y="109.22" smashed="yes" rot="MR0">
<attribute name="NAME" x="40.64" y="108.458" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="43.434" y="106.299" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN3" gate="-9" x="43.18" y="99.06" smashed="yes" rot="MR0">
<attribute name="NAME" x="40.64" y="98.298" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="43.434" y="96.139" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN3" gate="-10" x="43.18" y="121.92" smashed="yes" rot="MR0">
<attribute name="NAME" x="40.64" y="121.158" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="43.434" y="118.999" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN3" gate="-11" x="43.18" y="101.6" smashed="yes" rot="MR0">
<attribute name="NAME" x="40.64" y="100.838" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="43.434" y="98.679" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN3" gate="-12" x="43.18" y="124.46" smashed="yes" rot="MR0">
<attribute name="NAME" x="40.64" y="123.698" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="43.434" y="121.539" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN3" gate="-13" x="43.18" y="114.3" smashed="yes" rot="MR0">
<attribute name="NAME" x="40.64" y="113.538" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="43.434" y="111.379" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN3" gate="-14" x="43.18" y="116.84" smashed="yes" rot="MR0">
<attribute name="NAME" x="40.64" y="116.078" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="43.434" y="113.919" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN3" gate="-15" x="43.18" y="119.38" smashed="yes" rot="MR0">
<attribute name="NAME" x="40.64" y="118.618" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="43.434" y="116.459" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN3" gate="-16" x="43.18" y="96.52" smashed="yes" rot="MR0">
<attribute name="NAME" x="40.64" y="95.758" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="43.434" y="93.599" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN3" gate="-17" x="-160.02" y="15.24" smashed="yes">
<attribute name="NAME" x="-157.48" y="14.478" size="1.778" layer="95"/>
<attribute name="VALUE" x="-160.274" y="12.319" size="1.778" layer="96"/>
</instance>
<instance part="CN3" gate="-18" x="-160.02" y="10.16" smashed="yes">
<attribute name="NAME" x="-157.48" y="9.398" size="1.778" layer="95"/>
<attribute name="VALUE" x="-160.274" y="7.239" size="1.778" layer="96"/>
</instance>
<instance part="CN3" gate="-19" x="-160.02" y="5.08" smashed="yes">
<attribute name="NAME" x="-157.48" y="4.318" size="1.778" layer="95"/>
<attribute name="VALUE" x="-160.274" y="2.159" size="1.778" layer="96"/>
</instance>
<instance part="CN3" gate="-20" x="-160.02" y="0" smashed="yes">
<attribute name="NAME" x="-157.48" y="-0.762" size="1.778" layer="95"/>
<attribute name="VALUE" x="-160.274" y="-2.921" size="1.778" layer="96"/>
</instance>
<instance part="CN3" gate="-21" x="-160.02" y="-5.08" smashed="yes">
<attribute name="NAME" x="-157.48" y="-5.842" size="1.778" layer="95"/>
<attribute name="VALUE" x="-160.274" y="-8.001" size="1.778" layer="96"/>
</instance>
<instance part="CN3" gate="-22" x="-160.02" y="-10.16" smashed="yes">
<attribute name="NAME" x="-157.48" y="-10.922" size="1.778" layer="95"/>
<attribute name="VALUE" x="-160.274" y="-13.081" size="1.778" layer="96"/>
</instance>
<instance part="CN3" gate="-23" x="-160.02" y="-15.24" smashed="yes">
<attribute name="NAME" x="-157.48" y="-16.002" size="1.778" layer="95"/>
<attribute name="VALUE" x="-160.274" y="-18.161" size="1.778" layer="96"/>
</instance>
<instance part="CN3" gate="-24" x="-160.02" y="-20.32" smashed="yes">
<attribute name="NAME" x="-157.48" y="-21.082" size="1.778" layer="95"/>
<attribute name="VALUE" x="-160.274" y="-23.241" size="1.778" layer="96"/>
</instance>
<instance part="CN3" gate="-25" x="304.8" y="88.9" smashed="yes" rot="MR0">
<attribute name="NAME" x="302.26" y="88.138" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="305.054" y="85.979" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN3" gate="-26" x="304.8" y="93.98" smashed="yes" rot="MR0">
<attribute name="NAME" x="302.26" y="93.218" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="305.054" y="91.059" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN3" gate="-27" x="304.8" y="91.44" smashed="yes" rot="MR0">
<attribute name="NAME" x="302.26" y="90.678" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="305.054" y="88.519" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN3" gate="-28" x="304.8" y="111.76" smashed="yes" rot="MR0">
<attribute name="NAME" x="302.26" y="110.998" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="305.054" y="108.839" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN3" gate="-29" x="304.8" y="127" smashed="yes" rot="MR0">
<attribute name="NAME" x="302.26" y="126.238" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="305.054" y="124.079" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN3" gate="-30" x="304.8" y="104.14" smashed="yes" rot="MR0">
<attribute name="NAME" x="302.26" y="103.378" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="305.054" y="101.219" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN3" gate="-31" x="304.8" y="106.68" smashed="yes" rot="MR0">
<attribute name="NAME" x="302.26" y="105.918" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="305.054" y="103.759" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN3" gate="-32" x="304.8" y="109.22" smashed="yes" rot="MR0">
<attribute name="NAME" x="302.26" y="108.458" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="305.054" y="106.299" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN3" gate="-33" x="304.8" y="99.06" smashed="yes" rot="MR0">
<attribute name="NAME" x="302.26" y="98.298" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="305.054" y="96.139" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN3" gate="-34" x="304.8" y="121.92" smashed="yes" rot="MR0">
<attribute name="NAME" x="302.26" y="121.158" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="305.054" y="118.999" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN3" gate="-35" x="304.8" y="101.6" smashed="yes" rot="MR0">
<attribute name="NAME" x="302.26" y="100.838" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="305.054" y="98.679" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN3" gate="-36" x="304.8" y="124.46" smashed="yes" rot="MR0">
<attribute name="NAME" x="302.26" y="123.698" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="305.054" y="121.539" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN3" gate="-37" x="304.8" y="114.3" smashed="yes" rot="MR0">
<attribute name="NAME" x="302.26" y="113.538" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="305.054" y="111.379" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN3" gate="-38" x="304.8" y="116.84" smashed="yes" rot="MR0">
<attribute name="NAME" x="302.26" y="116.078" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="305.054" y="113.919" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN3" gate="-39" x="304.8" y="119.38" smashed="yes" rot="MR0">
<attribute name="NAME" x="302.26" y="118.618" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="305.054" y="116.459" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN3" gate="-40" x="304.8" y="96.52" smashed="yes" rot="MR0">
<attribute name="NAME" x="302.26" y="95.758" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="305.054" y="93.599" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN4" gate="-1" x="43.18" y="-116.84" smashed="yes" rot="MR0">
<attribute name="NAME" x="40.64" y="-117.602" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="43.434" y="-119.761" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN4" gate="-2" x="43.18" y="-111.76" smashed="yes" rot="MR0">
<attribute name="NAME" x="40.64" y="-112.522" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="43.434" y="-114.681" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN4" gate="-3" x="43.18" y="-114.3" smashed="yes" rot="MR0">
<attribute name="NAME" x="40.64" y="-115.062" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="43.434" y="-117.221" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN4" gate="-4" x="43.18" y="-93.98" smashed="yes" rot="MR0">
<attribute name="NAME" x="40.64" y="-94.742" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="43.434" y="-96.901" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN4" gate="-5" x="43.18" y="-78.74" smashed="yes" rot="MR0">
<attribute name="NAME" x="40.64" y="-79.502" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="43.434" y="-81.661" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN4" gate="-6" x="43.18" y="-101.6" smashed="yes" rot="MR0">
<attribute name="NAME" x="40.64" y="-102.362" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="43.434" y="-104.521" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN4" gate="-7" x="43.18" y="-99.06" smashed="yes" rot="MR0">
<attribute name="NAME" x="40.64" y="-99.822" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="43.434" y="-101.981" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN4" gate="-8" x="43.18" y="-96.52" smashed="yes" rot="MR0">
<attribute name="NAME" x="40.64" y="-97.282" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="43.434" y="-99.441" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN4" gate="-9" x="43.18" y="-106.68" smashed="yes" rot="MR0">
<attribute name="NAME" x="40.64" y="-107.442" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="43.434" y="-109.601" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN4" gate="-10" x="43.18" y="-83.82" smashed="yes" rot="MR0">
<attribute name="NAME" x="40.64" y="-84.582" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="43.434" y="-86.741" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN4" gate="-11" x="43.18" y="-104.14" smashed="yes" rot="MR0">
<attribute name="NAME" x="40.64" y="-104.902" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="43.434" y="-107.061" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN4" gate="-12" x="43.18" y="-81.28" smashed="yes" rot="MR0">
<attribute name="NAME" x="40.64" y="-82.042" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="43.434" y="-84.201" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN4" gate="-13" x="43.18" y="-91.44" smashed="yes" rot="MR0">
<attribute name="NAME" x="40.64" y="-92.202" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="43.434" y="-94.361" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN4" gate="-14" x="43.18" y="-88.9" smashed="yes" rot="MR0">
<attribute name="NAME" x="40.64" y="-89.662" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="43.434" y="-91.821" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN4" gate="-15" x="43.18" y="-86.36" smashed="yes" rot="MR0">
<attribute name="NAME" x="40.64" y="-87.122" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="43.434" y="-89.281" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN4" gate="-16" x="43.18" y="-109.22" smashed="yes" rot="MR0">
<attribute name="NAME" x="40.64" y="-109.982" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="43.434" y="-112.141" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN4" gate="-17" x="304.8" y="-106.68" smashed="yes" rot="MR0">
<attribute name="NAME" x="302.26" y="-107.442" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="305.054" y="-109.601" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN4" gate="-18" x="304.8" y="-83.82" smashed="yes" rot="MR0">
<attribute name="NAME" x="302.26" y="-84.582" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="305.054" y="-86.741" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN4" gate="-19" x="304.8" y="-104.14" smashed="yes" rot="MR0">
<attribute name="NAME" x="302.26" y="-104.902" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="305.054" y="-107.061" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN4" gate="-20" x="304.8" y="-81.28" smashed="yes" rot="MR0">
<attribute name="NAME" x="302.26" y="-82.042" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="305.054" y="-84.201" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN4" gate="-21" x="304.8" y="-91.44" smashed="yes" rot="MR0">
<attribute name="NAME" x="302.26" y="-92.202" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="305.054" y="-94.361" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN4" gate="-22" x="304.8" y="-88.9" smashed="yes" rot="MR0">
<attribute name="NAME" x="302.26" y="-89.662" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="305.054" y="-91.821" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN4" gate="-23" x="304.8" y="-86.36" smashed="yes" rot="MR0">
<attribute name="NAME" x="302.26" y="-87.122" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="305.054" y="-89.281" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN4" gate="-24" x="304.8" y="-109.22" smashed="yes" rot="MR0">
<attribute name="NAME" x="302.26" y="-109.982" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="305.054" y="-112.141" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN4" gate="-25" x="-160.02" y="-30.48" smashed="yes">
<attribute name="NAME" x="-157.48" y="-31.242" size="1.778" layer="95"/>
<attribute name="VALUE" x="-160.274" y="-33.401" size="1.778" layer="96"/>
</instance>
<instance part="CN4" gate="-26" x="-160.02" y="-35.56" smashed="yes">
<attribute name="NAME" x="-157.48" y="-36.322" size="1.778" layer="95"/>
<attribute name="VALUE" x="-160.274" y="-38.481" size="1.778" layer="96"/>
</instance>
<instance part="CN4" gate="-27" x="-160.02" y="-40.64" smashed="yes">
<attribute name="NAME" x="-157.48" y="-41.402" size="1.778" layer="95"/>
<attribute name="VALUE" x="-160.274" y="-43.561" size="1.778" layer="96"/>
</instance>
<instance part="CN4" gate="-28" x="-160.02" y="-45.72" smashed="yes">
<attribute name="NAME" x="-157.48" y="-46.482" size="1.778" layer="95"/>
<attribute name="VALUE" x="-160.274" y="-48.641" size="1.778" layer="96"/>
</instance>
<instance part="CN4" gate="-29" x="-160.02" y="-50.8" smashed="yes">
<attribute name="NAME" x="-157.48" y="-51.562" size="1.778" layer="95"/>
<attribute name="VALUE" x="-160.274" y="-53.721" size="1.778" layer="96"/>
</instance>
<instance part="CN4" gate="-30" x="-160.02" y="-55.88" smashed="yes">
<attribute name="NAME" x="-157.48" y="-56.642" size="1.778" layer="95"/>
<attribute name="VALUE" x="-160.274" y="-58.801" size="1.778" layer="96"/>
</instance>
<instance part="CN4" gate="-31" x="-160.02" y="-60.96" smashed="yes">
<attribute name="NAME" x="-157.48" y="-61.722" size="1.778" layer="95"/>
<attribute name="VALUE" x="-160.274" y="-63.881" size="1.778" layer="96"/>
</instance>
<instance part="CN4" gate="-32" x="-160.02" y="-66.04" smashed="yes">
<attribute name="NAME" x="-157.48" y="-66.802" size="1.778" layer="95"/>
<attribute name="VALUE" x="-160.274" y="-68.961" size="1.778" layer="96"/>
</instance>
<instance part="CN4" gate="-33" x="-160.02" y="-71.12" smashed="yes">
<attribute name="NAME" x="-157.48" y="-71.882" size="1.778" layer="95"/>
<attribute name="VALUE" x="-160.274" y="-74.041" size="1.778" layer="96"/>
</instance>
<instance part="CN4" gate="-34" x="-190.5" y="99.06" smashed="yes" rot="MR0">
<attribute name="NAME" x="-193.04" y="98.298" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="-190.246" y="96.139" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN4" gate="-35" x="-190.5" y="78.74" smashed="yes" rot="MR0">
<attribute name="NAME" x="-193.04" y="77.978" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="-190.246" y="75.819" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN4" gate="-36" x="-190.5" y="58.42" smashed="yes" rot="MR0">
<attribute name="NAME" x="-193.04" y="57.658" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="-190.246" y="55.499" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN4" gate="-37" x="-205.74" y="-76.2" smashed="yes" rot="MR0">
<attribute name="NAME" x="-208.28" y="-76.962" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="-205.486" y="-79.121" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN4" gate="-38" x="-205.74" y="-66.04" smashed="yes" rot="MR0">
<attribute name="NAME" x="-208.28" y="-66.802" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="-205.486" y="-68.961" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN4" gate="-39" x="-205.74" y="-73.66" smashed="yes" rot="MR0">
<attribute name="NAME" x="-208.28" y="-74.422" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="-205.486" y="-76.581" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="CN4" gate="-40" x="-205.74" y="-63.5" smashed="yes" rot="MR0">
<attribute name="NAME" x="-208.28" y="-64.262" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="-205.486" y="-66.421" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="Q1" gate="1" x="-167.64" y="99.06" smashed="yes">
<attribute name="NAME" x="-162.56" y="101.6" size="1.778" layer="95"/>
<attribute name="VALUE" x="-162.56" y="99.06" size="1.778" layer="96"/>
</instance>
<instance part="Q2" gate="1" x="-167.64" y="78.74" smashed="yes">
<attribute name="NAME" x="-162.56" y="81.28" size="1.778" layer="95"/>
<attribute name="VALUE" x="-162.56" y="78.74" size="1.778" layer="96"/>
</instance>
<instance part="Q3" gate="1" x="-167.64" y="58.42" smashed="yes">
<attribute name="NAME" x="-162.56" y="60.96" size="1.778" layer="95"/>
<attribute name="VALUE" x="-162.56" y="58.42" size="1.778" layer="96"/>
</instance>
<instance part="LED_R1C1" gate="G$1" x="124.46" y="109.22" smashed="yes">
<attribute name="NAME" x="111.76" y="137.16" size="1.27" layer="255" align="top-left"/>
<attribute name="VALUE" x="111.76" y="78.74" size="1.27" layer="96"/>
</instance>
<instance part="LED_R2C1" gate="G$1" x="124.46" y="45.72" smashed="yes">
<attribute name="NAME" x="111.76" y="73.66" size="1.27" layer="255" align="top-left"/>
<attribute name="VALUE" x="111.76" y="15.24" size="1.27" layer="96"/>
</instance>
<instance part="LED_R3C1" gate="G$1" x="124.46" y="-17.78" smashed="yes">
<attribute name="NAME" x="111.76" y="10.16" size="1.27" layer="255" align="top-left"/>
<attribute name="VALUE" x="111.76" y="-48.26" size="1.27" layer="96"/>
</instance>
<instance part="LED_R1C2" gate="G$1" x="254" y="109.22" smashed="yes">
<attribute name="NAME" x="241.3" y="137.16" size="1.27" layer="255" align="top-left"/>
<attribute name="VALUE" x="241.3" y="78.74" size="1.27" layer="96"/>
</instance>
<instance part="LED_R2C2" gate="G$1" x="254" y="45.72" smashed="yes">
<attribute name="NAME" x="241.3" y="73.66" size="1.27" layer="255" align="top-left"/>
<attribute name="VALUE" x="241.3" y="15.24" size="1.27" layer="96"/>
</instance>
<instance part="LED_R3C2" gate="G$1" x="254" y="-17.78" smashed="yes">
<attribute name="NAME" x="241.3" y="10.16" size="1.27" layer="255" align="top-left"/>
<attribute name="VALUE" x="241.3" y="-48.26" size="1.27" layer="96"/>
</instance>
<instance part="LED_R1C3" gate="G$1" x="386.08" y="109.22" smashed="yes">
<attribute name="NAME" x="373.38" y="137.16" size="1.27" layer="255" align="top-left"/>
<attribute name="VALUE" x="373.38" y="78.74" size="1.27" layer="96"/>
</instance>
<instance part="LED_R2C3" gate="G$1" x="386.08" y="45.72" smashed="yes">
<attribute name="NAME" x="373.38" y="73.66" size="1.27" layer="255" align="top-left"/>
<attribute name="VALUE" x="373.38" y="15.24" size="1.27" layer="96"/>
</instance>
<instance part="LED_R3C3" gate="G$1" x="386.08" y="-17.78" smashed="yes">
<attribute name="NAME" x="373.38" y="10.16" size="1.27" layer="255" align="top-left"/>
<attribute name="VALUE" x="373.38" y="-48.26" size="1.27" layer="96"/>
</instance>
<instance part="LED_R1C4" gate="G$1" x="-7.62" y="-96.52" smashed="yes">
<attribute name="NAME" x="-20.32" y="-68.58" size="1.27" layer="255" align="top-left"/>
<attribute name="VALUE" x="-20.32" y="-127" size="1.27" layer="96"/>
</instance>
<instance part="LED_R2C4" gate="G$1" x="-7.62" y="-160.02" smashed="yes">
<attribute name="NAME" x="-20.32" y="-132.08" size="1.27" layer="255" align="top-left"/>
<attribute name="VALUE" x="-20.32" y="-190.5" size="1.27" layer="96"/>
</instance>
<instance part="LED_R3C4" gate="G$1" x="-7.62" y="-223.52" smashed="yes">
<attribute name="NAME" x="-20.32" y="-195.58" size="1.27" layer="255" align="top-left"/>
<attribute name="VALUE" x="-20.32" y="-254" size="1.27" layer="96"/>
</instance>
<instance part="LED_R1C5" gate="G$1" x="124.46" y="-96.52" smashed="yes">
<attribute name="NAME" x="111.76" y="-68.58" size="1.27" layer="255" align="top-left"/>
<attribute name="VALUE" x="111.76" y="-127" size="1.27" layer="96"/>
</instance>
<instance part="LED_R2C5" gate="G$1" x="124.46" y="-160.02" smashed="yes">
<attribute name="NAME" x="111.76" y="-132.08" size="1.27" layer="255" align="top-left"/>
<attribute name="VALUE" x="111.76" y="-190.5" size="1.27" layer="96"/>
</instance>
<instance part="LED_R3C5" gate="G$1" x="124.46" y="-223.52" smashed="yes">
<attribute name="NAME" x="111.76" y="-195.58" size="1.27" layer="255" align="top-left"/>
<attribute name="VALUE" x="111.76" y="-254" size="1.27" layer="96"/>
</instance>
<instance part="LED_R1C6" gate="G$1" x="254" y="-96.52" smashed="yes">
<attribute name="NAME" x="241.3" y="-68.58" size="1.27" layer="255" align="top-left"/>
<attribute name="VALUE" x="241.3" y="-127" size="1.27" layer="96"/>
</instance>
<instance part="LED_R2C6" gate="G$1" x="254" y="-160.02" smashed="yes">
<attribute name="NAME" x="241.3" y="-132.08" size="1.27" layer="255" align="top-left"/>
<attribute name="VALUE" x="241.3" y="-190.5" size="1.27" layer="96"/>
</instance>
<instance part="LED_R3C6" gate="G$1" x="254" y="-223.52" smashed="yes">
<attribute name="NAME" x="241.3" y="-195.58" size="1.27" layer="255" align="top-left"/>
<attribute name="VALUE" x="241.3" y="-254" size="1.27" layer="96"/>
</instance>
<instance part="LED_R1C7" gate="G$1" x="386.08" y="-96.52" smashed="yes">
<attribute name="NAME" x="373.38" y="-68.58" size="1.27" layer="255" align="top-left"/>
<attribute name="VALUE" x="373.38" y="-127" size="1.27" layer="96"/>
</instance>
<instance part="LED_R2C7" gate="G$1" x="386.08" y="-160.02" smashed="yes">
<attribute name="NAME" x="373.38" y="-132.08" size="1.27" layer="255" align="top-left"/>
<attribute name="VALUE" x="373.38" y="-190.5" size="1.27" layer="96"/>
</instance>
<instance part="LED_R3C7" gate="G$1" x="386.08" y="-223.52" smashed="yes">
<attribute name="NAME" x="373.38" y="-195.58" size="1.27" layer="255" align="top-left"/>
<attribute name="VALUE" x="373.38" y="-254" size="1.27" layer="96"/>
</instance>
<instance part="P+1" gate="1" x="-200.66" y="-55.88" smashed="yes">
<attribute name="VALUE" x="-203.2" y="-60.96" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="GND1" gate="1" x="-200.66" y="-83.82" smashed="yes">
<attribute name="VALUE" x="-203.2" y="-86.36" size="1.778" layer="96"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="N$1" class="0">
<segment>
<pinref part="R1" gate="G$1" pin="2"/>
<wire x1="-172.72" y1="99.06" x2="-170.18" y2="99.06" width="0.1524" layer="91"/>
<pinref part="Q1" gate="1" pin="B"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="R2" gate="G$1" pin="2"/>
<wire x1="-172.72" y1="78.74" x2="-170.18" y2="78.74" width="0.1524" layer="91"/>
<pinref part="Q2" gate="1" pin="B"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="R3" gate="G$1" pin="2"/>
<wire x1="-172.72" y1="58.42" x2="-170.18" y2="58.42" width="0.1524" layer="91"/>
<pinref part="Q3" gate="1" pin="B"/>
</segment>
</net>
<net name="+5V" class="0">
<segment>
<wire x1="-165.1" y1="104.14" x2="-165.1" y2="106.68" width="0.1524" layer="91"/>
<wire x1="-165.1" y1="106.68" x2="-149.86" y2="106.68" width="0.1524" layer="91"/>
<wire x1="-149.86" y1="106.68" x2="-149.86" y2="111.76" width="0.1524" layer="91"/>
<wire x1="-165.1" y1="83.82" x2="-165.1" y2="86.36" width="0.1524" layer="91"/>
<wire x1="-165.1" y1="86.36" x2="-149.86" y2="86.36" width="0.1524" layer="91"/>
<wire x1="-149.86" y1="86.36" x2="-149.86" y2="106.68" width="0.1524" layer="91"/>
<junction x="-149.86" y="106.68"/>
<wire x1="-165.1" y1="63.5" x2="-165.1" y2="66.04" width="0.1524" layer="91"/>
<wire x1="-165.1" y1="66.04" x2="-149.86" y2="66.04" width="0.1524" layer="91"/>
<wire x1="-149.86" y1="66.04" x2="-149.86" y2="86.36" width="0.1524" layer="91"/>
<junction x="-149.86" y="86.36"/>
<pinref part="P+2" gate="1" pin="+5V"/>
<pinref part="Q1" gate="1" pin="E"/>
<pinref part="Q2" gate="1" pin="E"/>
<pinref part="Q3" gate="1" pin="E"/>
</segment>
<segment>
<pinref part="CN4" gate="-40" pin="S"/>
<pinref part="P+1" gate="1" pin="+5V"/>
<wire x1="-203.2" y1="-63.5" x2="-200.66" y2="-63.5" width="0.1524" layer="91"/>
<wire x1="-200.66" y1="-63.5" x2="-200.66" y2="-58.42" width="0.1524" layer="91"/>
<pinref part="CN4" gate="-38" pin="S"/>
<wire x1="-203.2" y1="-66.04" x2="-200.66" y2="-66.04" width="0.1524" layer="91"/>
<wire x1="-200.66" y1="-66.04" x2="-200.66" y2="-63.5" width="0.1524" layer="91"/>
<junction x="-200.66" y="-63.5"/>
</segment>
</net>
<net name="COL0_G" class="0">
<segment>
<pinref part="LED_R1C0" gate="G$1" pin="G"/>
<pinref part="CN1" gate="-9" pin="S"/>
<wire x1="-86.36" y1="111.76" x2="-58.42" y2="111.76" width="0.1524" layer="91"/>
<label x="-83.82" y="111.76" size="1.27" layer="95"/>
<pinref part="LED_R2C0" gate="G$1" pin="G"/>
<wire x1="-58.42" y1="111.76" x2="-27.94" y2="111.76" width="0.1524" layer="91"/>
<wire x1="-27.94" y1="48.26" x2="-58.42" y2="48.26" width="0.1524" layer="91"/>
<wire x1="-58.42" y1="48.26" x2="-58.42" y2="111.76" width="0.1524" layer="91"/>
<junction x="-58.42" y="111.76"/>
<pinref part="LED_R3C0" gate="G$1" pin="G"/>
<wire x1="-27.94" y1="-15.24" x2="-58.42" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="-58.42" y1="-15.24" x2="-58.42" y2="48.26" width="0.1524" layer="91"/>
<junction x="-58.42" y="48.26"/>
</segment>
</net>
<net name="COL0_T" class="0">
<segment>
<pinref part="LED_R1C0" gate="G$1" pin="T"/>
<pinref part="CN1" gate="-10" pin="S"/>
<wire x1="-86.36" y1="91.44" x2="-38.1" y2="91.44" width="0.1524" layer="91"/>
<label x="-83.82" y="91.44" size="1.27" layer="95"/>
<pinref part="LED_R2C0" gate="G$1" pin="T"/>
<wire x1="-38.1" y1="91.44" x2="-27.94" y2="91.44" width="0.1524" layer="91"/>
<wire x1="-27.94" y1="27.94" x2="-38.1" y2="27.94" width="0.1524" layer="91"/>
<wire x1="-38.1" y1="27.94" x2="-38.1" y2="91.44" width="0.1524" layer="91"/>
<junction x="-38.1" y="91.44"/>
<pinref part="LED_R3C0" gate="G$1" pin="T"/>
<wire x1="-27.94" y1="-35.56" x2="-38.1" y2="-35.56" width="0.1524" layer="91"/>
<wire x1="-38.1" y1="-35.56" x2="-38.1" y2="27.94" width="0.1524" layer="91"/>
<junction x="-38.1" y="27.94"/>
</segment>
</net>
<net name="COL0_S" class="0">
<segment>
<pinref part="LED_R1C0" gate="G$1" pin="S"/>
<pinref part="CN1" gate="-11" pin="S"/>
<wire x1="-86.36" y1="93.98" x2="-40.64" y2="93.98" width="0.1524" layer="91"/>
<label x="-83.82" y="93.98" size="1.27" layer="95"/>
<pinref part="LED_R2C0" gate="G$1" pin="S"/>
<wire x1="-40.64" y1="93.98" x2="-27.94" y2="93.98" width="0.1524" layer="91"/>
<wire x1="-27.94" y1="30.48" x2="-40.64" y2="30.48" width="0.1524" layer="91"/>
<wire x1="-40.64" y1="30.48" x2="-40.64" y2="93.98" width="0.1524" layer="91"/>
<junction x="-40.64" y="93.98"/>
<pinref part="LED_R3C0" gate="G$1" pin="S"/>
<wire x1="-27.94" y1="-33.02" x2="-40.64" y2="-33.02" width="0.1524" layer="91"/>
<wire x1="-40.64" y1="-33.02" x2="-40.64" y2="30.48" width="0.1524" layer="91"/>
<junction x="-40.64" y="30.48"/>
</segment>
</net>
<net name="COL0_U" class="0">
<segment>
<pinref part="LED_R1C0" gate="G$1" pin="U"/>
<pinref part="CN1" gate="-12" pin="S"/>
<wire x1="-86.36" y1="88.9" x2="-35.56" y2="88.9" width="0.1524" layer="91"/>
<label x="-83.82" y="88.9" size="1.27" layer="95"/>
<pinref part="LED_R2C0" gate="G$1" pin="U"/>
<wire x1="-35.56" y1="88.9" x2="-27.94" y2="88.9" width="0.1524" layer="91"/>
<wire x1="-27.94" y1="25.4" x2="-35.56" y2="25.4" width="0.1524" layer="91"/>
<wire x1="-35.56" y1="25.4" x2="-35.56" y2="88.9" width="0.1524" layer="91"/>
<junction x="-35.56" y="88.9"/>
<pinref part="LED_R3C0" gate="G$1" pin="U"/>
<wire x1="-27.94" y1="-38.1" x2="-35.56" y2="-38.1" width="0.1524" layer="91"/>
<wire x1="-35.56" y1="-38.1" x2="-35.56" y2="25.4" width="0.1524" layer="91"/>
<junction x="-35.56" y="25.4"/>
</segment>
</net>
<net name="COL0_H" class="0">
<segment>
<pinref part="LED_R1C0" gate="G$1" pin="H"/>
<pinref part="CN1" gate="-13" pin="S"/>
<wire x1="-86.36" y1="109.22" x2="-55.88" y2="109.22" width="0.1524" layer="91"/>
<label x="-83.82" y="109.22" size="1.27" layer="95"/>
<pinref part="LED_R2C0" gate="G$1" pin="H"/>
<wire x1="-55.88" y1="109.22" x2="-27.94" y2="109.22" width="0.1524" layer="91"/>
<wire x1="-27.94" y1="45.72" x2="-55.88" y2="45.72" width="0.1524" layer="91"/>
<wire x1="-55.88" y1="45.72" x2="-55.88" y2="109.22" width="0.1524" layer="91"/>
<junction x="-55.88" y="109.22"/>
<pinref part="LED_R3C0" gate="G$1" pin="H"/>
<wire x1="-27.94" y1="-17.78" x2="-55.88" y2="-17.78" width="0.1524" layer="91"/>
<wire x1="-55.88" y1="-17.78" x2="-55.88" y2="45.72" width="0.1524" layer="91"/>
<junction x="-55.88" y="45.72"/>
</segment>
</net>
<net name="COL0_K" class="0">
<segment>
<pinref part="LED_R1C0" gate="G$1" pin="K"/>
<pinref part="CN1" gate="-14" pin="S"/>
<wire x1="-86.36" y1="106.68" x2="-53.34" y2="106.68" width="0.1524" layer="91"/>
<label x="-83.82" y="106.68" size="1.27" layer="95"/>
<pinref part="LED_R2C0" gate="G$1" pin="K"/>
<wire x1="-53.34" y1="106.68" x2="-27.94" y2="106.68" width="0.1524" layer="91"/>
<wire x1="-27.94" y1="43.18" x2="-53.34" y2="43.18" width="0.1524" layer="91"/>
<wire x1="-53.34" y1="43.18" x2="-53.34" y2="106.68" width="0.1524" layer="91"/>
<junction x="-53.34" y="106.68"/>
<pinref part="LED_R3C0" gate="G$1" pin="K"/>
<wire x1="-27.94" y1="-20.32" x2="-53.34" y2="-20.32" width="0.1524" layer="91"/>
<wire x1="-53.34" y1="-20.32" x2="-53.34" y2="43.18" width="0.1524" layer="91"/>
<junction x="-53.34" y="43.18"/>
</segment>
</net>
<net name="COL0_M" class="0">
<segment>
<pinref part="LED_R1C0" gate="G$1" pin="M"/>
<pinref part="CN1" gate="-15" pin="S"/>
<wire x1="-86.36" y1="104.14" x2="-50.8" y2="104.14" width="0.1524" layer="91"/>
<label x="-83.82" y="104.14" size="1.27" layer="95"/>
<pinref part="LED_R2C0" gate="G$1" pin="M"/>
<wire x1="-50.8" y1="104.14" x2="-27.94" y2="104.14" width="0.1524" layer="91"/>
<wire x1="-27.94" y1="40.64" x2="-50.8" y2="40.64" width="0.1524" layer="91"/>
<wire x1="-50.8" y1="40.64" x2="-50.8" y2="104.14" width="0.1524" layer="91"/>
<junction x="-50.8" y="104.14"/>
<pinref part="LED_R3C0" gate="G$1" pin="M"/>
<wire x1="-27.94" y1="-22.86" x2="-50.8" y2="-22.86" width="0.1524" layer="91"/>
<wire x1="-50.8" y1="-22.86" x2="-50.8" y2="40.64" width="0.1524" layer="91"/>
<junction x="-50.8" y="40.64"/>
</segment>
</net>
<net name="COL0_A" class="0">
<segment>
<pinref part="LED_R1C0" gate="G$1" pin="A"/>
<pinref part="CN1" gate="-16" pin="S"/>
<wire x1="-86.36" y1="127" x2="-73.66" y2="127" width="0.1524" layer="91"/>
<label x="-83.82" y="127" size="1.27" layer="95"/>
<pinref part="LED_R2C0" gate="G$1" pin="A"/>
<wire x1="-73.66" y1="127" x2="-27.94" y2="127" width="0.1524" layer="91"/>
<wire x1="-27.94" y1="63.5" x2="-73.66" y2="63.5" width="0.1524" layer="91"/>
<wire x1="-73.66" y1="63.5" x2="-73.66" y2="127" width="0.1524" layer="91"/>
<junction x="-73.66" y="127"/>
<pinref part="LED_R3C0" gate="G$1" pin="A"/>
<wire x1="-27.94" y1="0" x2="-73.66" y2="0" width="0.1524" layer="91"/>
<wire x1="-73.66" y1="0" x2="-73.66" y2="63.5" width="0.1524" layer="91"/>
<junction x="-73.66" y="63.5"/>
</segment>
</net>
<net name="COL0_B" class="0">
<segment>
<pinref part="LED_R1C0" gate="G$1" pin="B"/>
<pinref part="CN1" gate="-17" pin="S"/>
<wire x1="-86.36" y1="124.46" x2="-71.12" y2="124.46" width="0.1524" layer="91"/>
<label x="-83.82" y="124.46" size="1.27" layer="95"/>
<pinref part="LED_R2C0" gate="G$1" pin="B"/>
<wire x1="-71.12" y1="124.46" x2="-27.94" y2="124.46" width="0.1524" layer="91"/>
<wire x1="-27.94" y1="60.96" x2="-71.12" y2="60.96" width="0.1524" layer="91"/>
<wire x1="-71.12" y1="60.96" x2="-71.12" y2="124.46" width="0.1524" layer="91"/>
<junction x="-71.12" y="124.46"/>
<pinref part="LED_R3C0" gate="G$1" pin="B"/>
<wire x1="-27.94" y1="-2.54" x2="-71.12" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="-71.12" y1="-2.54" x2="-71.12" y2="60.96" width="0.1524" layer="91"/>
<junction x="-71.12" y="60.96"/>
</segment>
</net>
<net name="COL0_N" class="0">
<segment>
<pinref part="LED_R1C0" gate="G$1" pin="N"/>
<pinref part="CN1" gate="-18" pin="S"/>
<wire x1="-86.36" y1="101.6" x2="-48.26" y2="101.6" width="0.1524" layer="91"/>
<label x="-83.82" y="101.6" size="1.27" layer="95"/>
<pinref part="LED_R2C0" gate="G$1" pin="N"/>
<wire x1="-48.26" y1="101.6" x2="-27.94" y2="101.6" width="0.1524" layer="91"/>
<wire x1="-27.94" y1="38.1" x2="-48.26" y2="38.1" width="0.1524" layer="91"/>
<wire x1="-48.26" y1="38.1" x2="-48.26" y2="101.6" width="0.1524" layer="91"/>
<junction x="-48.26" y="101.6"/>
<pinref part="LED_R3C0" gate="G$1" pin="N"/>
<wire x1="-27.94" y1="-25.4" x2="-48.26" y2="-25.4" width="0.1524" layer="91"/>
<wire x1="-48.26" y1="-25.4" x2="-48.26" y2="38.1" width="0.1524" layer="91"/>
<junction x="-48.26" y="38.1"/>
</segment>
</net>
<net name="COL0_C" class="0">
<segment>
<pinref part="LED_R1C0" gate="G$1" pin="C"/>
<pinref part="CN1" gate="-19" pin="S"/>
<wire x1="-86.36" y1="121.92" x2="-68.58" y2="121.92" width="0.1524" layer="91"/>
<label x="-83.82" y="121.92" size="1.27" layer="95"/>
<pinref part="LED_R2C0" gate="G$1" pin="C"/>
<wire x1="-68.58" y1="121.92" x2="-27.94" y2="121.92" width="0.1524" layer="91"/>
<wire x1="-27.94" y1="58.42" x2="-68.58" y2="58.42" width="0.1524" layer="91"/>
<wire x1="-68.58" y1="58.42" x2="-68.58" y2="121.92" width="0.1524" layer="91"/>
<junction x="-68.58" y="121.92"/>
<pinref part="LED_R3C0" gate="G$1" pin="C"/>
<wire x1="-27.94" y1="-5.08" x2="-68.58" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="-68.58" y1="-5.08" x2="-68.58" y2="58.42" width="0.1524" layer="91"/>
<junction x="-68.58" y="58.42"/>
</segment>
</net>
<net name="COL0_P" class="0">
<segment>
<pinref part="LED_R1C0" gate="G$1" pin="P"/>
<pinref part="CN1" gate="-20" pin="S"/>
<wire x1="-86.36" y1="99.06" x2="-45.72" y2="99.06" width="0.1524" layer="91"/>
<label x="-83.82" y="99.06" size="1.27" layer="95"/>
<pinref part="LED_R2C0" gate="G$1" pin="P"/>
<wire x1="-45.72" y1="99.06" x2="-27.94" y2="99.06" width="0.1524" layer="91"/>
<wire x1="-27.94" y1="35.56" x2="-45.72" y2="35.56" width="0.1524" layer="91"/>
<wire x1="-45.72" y1="35.56" x2="-45.72" y2="99.06" width="0.1524" layer="91"/>
<junction x="-45.72" y="99.06"/>
<pinref part="LED_R3C0" gate="G$1" pin="P"/>
<wire x1="-27.94" y1="-27.94" x2="-45.72" y2="-27.94" width="0.1524" layer="91"/>
<wire x1="-45.72" y1="-27.94" x2="-45.72" y2="35.56" width="0.1524" layer="91"/>
<junction x="-45.72" y="35.56"/>
</segment>
</net>
<net name="COL0_R" class="0">
<segment>
<pinref part="LED_R1C0" gate="G$1" pin="R"/>
<pinref part="CN1" gate="-21" pin="S"/>
<wire x1="-86.36" y1="96.52" x2="-43.18" y2="96.52" width="0.1524" layer="91"/>
<label x="-83.82" y="96.52" size="1.27" layer="95"/>
<pinref part="LED_R2C0" gate="G$1" pin="R"/>
<wire x1="-43.18" y1="96.52" x2="-27.94" y2="96.52" width="0.1524" layer="91"/>
<wire x1="-27.94" y1="33.02" x2="-43.18" y2="33.02" width="0.1524" layer="91"/>
<wire x1="-43.18" y1="33.02" x2="-43.18" y2="96.52" width="0.1524" layer="91"/>
<junction x="-43.18" y="96.52"/>
<pinref part="LED_R3C0" gate="G$1" pin="R"/>
<wire x1="-27.94" y1="-30.48" x2="-43.18" y2="-30.48" width="0.1524" layer="91"/>
<wire x1="-43.18" y1="-30.48" x2="-43.18" y2="33.02" width="0.1524" layer="91"/>
<junction x="-43.18" y="33.02"/>
</segment>
</net>
<net name="COL0_D" class="0">
<segment>
<pinref part="LED_R1C0" gate="G$1" pin="D"/>
<pinref part="CN1" gate="-22" pin="S"/>
<wire x1="-86.36" y1="119.38" x2="-66.04" y2="119.38" width="0.1524" layer="91"/>
<label x="-83.82" y="119.38" size="1.27" layer="95"/>
<pinref part="LED_R2C0" gate="G$1" pin="D"/>
<wire x1="-66.04" y1="119.38" x2="-27.94" y2="119.38" width="0.1524" layer="91"/>
<wire x1="-27.94" y1="55.88" x2="-66.04" y2="55.88" width="0.1524" layer="91"/>
<wire x1="-66.04" y1="55.88" x2="-66.04" y2="119.38" width="0.1524" layer="91"/>
<junction x="-66.04" y="119.38"/>
<pinref part="LED_R3C0" gate="G$1" pin="D"/>
<wire x1="-27.94" y1="-7.62" x2="-66.04" y2="-7.62" width="0.1524" layer="91"/>
<wire x1="-66.04" y1="-7.62" x2="-66.04" y2="55.88" width="0.1524" layer="91"/>
<junction x="-66.04" y="55.88"/>
</segment>
</net>
<net name="COL0_E" class="0">
<segment>
<pinref part="LED_R1C0" gate="G$1" pin="E"/>
<pinref part="CN1" gate="-23" pin="S"/>
<wire x1="-86.36" y1="116.84" x2="-63.5" y2="116.84" width="0.1524" layer="91"/>
<label x="-83.82" y="116.84" size="1.27" layer="95"/>
<pinref part="LED_R2C0" gate="G$1" pin="E"/>
<wire x1="-63.5" y1="116.84" x2="-27.94" y2="116.84" width="0.1524" layer="91"/>
<wire x1="-27.94" y1="53.34" x2="-63.5" y2="53.34" width="0.1524" layer="91"/>
<wire x1="-63.5" y1="53.34" x2="-63.5" y2="116.84" width="0.1524" layer="91"/>
<junction x="-63.5" y="116.84"/>
<pinref part="LED_R3C0" gate="G$1" pin="E"/>
<wire x1="-27.94" y1="-10.16" x2="-63.5" y2="-10.16" width="0.1524" layer="91"/>
<wire x1="-63.5" y1="-10.16" x2="-63.5" y2="53.34" width="0.1524" layer="91"/>
<junction x="-63.5" y="53.34"/>
</segment>
</net>
<net name="COL0_F" class="0">
<segment>
<pinref part="LED_R1C0" gate="G$1" pin="F"/>
<pinref part="CN1" gate="-24" pin="S"/>
<wire x1="-86.36" y1="114.3" x2="-60.96" y2="114.3" width="0.1524" layer="91"/>
<label x="-83.82" y="114.3" size="1.27" layer="95"/>
<pinref part="LED_R2C0" gate="G$1" pin="F"/>
<wire x1="-60.96" y1="114.3" x2="-27.94" y2="114.3" width="0.1524" layer="91"/>
<wire x1="-27.94" y1="50.8" x2="-60.96" y2="50.8" width="0.1524" layer="91"/>
<wire x1="-60.96" y1="50.8" x2="-60.96" y2="114.3" width="0.1524" layer="91"/>
<junction x="-60.96" y="114.3"/>
<pinref part="LED_R3C0" gate="G$1" pin="F"/>
<wire x1="-27.94" y1="-12.7" x2="-60.96" y2="-12.7" width="0.1524" layer="91"/>
<wire x1="-60.96" y1="-12.7" x2="-60.96" y2="50.8" width="0.1524" layer="91"/>
<junction x="-60.96" y="50.8"/>
</segment>
</net>
<net name="DP0" class="0">
<segment>
<pinref part="CN1" gate="-8" pin="S"/>
<pinref part="LED_R1C0" gate="G$1" pin="DP"/>
<wire x1="-86.36" y1="83.82" x2="-30.48" y2="83.82" width="0.1524" layer="91"/>
<pinref part="LED_R2C0" gate="G$1" pin="DP"/>
<wire x1="-30.48" y1="83.82" x2="-27.94" y2="83.82" width="0.1524" layer="91"/>
<wire x1="-27.94" y1="20.32" x2="-30.48" y2="20.32" width="0.1524" layer="91"/>
<wire x1="-30.48" y1="20.32" x2="-30.48" y2="83.82" width="0.1524" layer="91"/>
<junction x="-30.48" y="83.82"/>
<label x="-83.82" y="83.82" size="1.27" layer="95"/>
<pinref part="LED_R3C0" gate="G$1" pin="DP"/>
<wire x1="-27.94" y1="-43.18" x2="-30.48" y2="-43.18" width="0.1524" layer="91"/>
<wire x1="-30.48" y1="-43.18" x2="-30.48" y2="20.32" width="0.1524" layer="91"/>
<junction x="-30.48" y="20.32"/>
</segment>
</net>
<net name="R1_PWR" class="0">
<segment>
<pinref part="LED_R1C0" gate="G$1" pin="CA"/>
<wire x1="-27.94" y1="132.08" x2="-81.28" y2="132.08" width="0.1524" layer="91"/>
<label x="-81.28" y="132.08" size="1.27" layer="95" rot="R180" xref="yes"/>
</segment>
<segment>
<pinref part="Q1" gate="1" pin="C"/>
<wire x1="-165.1" y1="93.98" x2="-165.1" y2="91.44" width="0.1524" layer="91"/>
<wire x1="-165.1" y1="91.44" x2="-144.78" y2="91.44" width="0.1524" layer="91"/>
<label x="-144.78" y="91.44" size="1.27" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="LED_R1C1" gate="G$1" pin="CA"/>
<wire x1="104.14" y1="132.08" x2="50.8" y2="132.08" width="0.1524" layer="91"/>
<label x="50.8" y="132.08" size="1.27" layer="95" rot="R180" xref="yes"/>
</segment>
<segment>
<pinref part="LED_R1C2" gate="G$1" pin="CA"/>
<wire x1="233.68" y1="132.08" x2="180.34" y2="132.08" width="0.1524" layer="91"/>
<label x="180.34" y="132.08" size="1.27" layer="95" rot="R180" xref="yes"/>
</segment>
<segment>
<pinref part="LED_R1C3" gate="G$1" pin="CA"/>
<wire x1="365.76" y1="132.08" x2="312.42" y2="132.08" width="0.1524" layer="91"/>
<label x="312.42" y="132.08" size="1.27" layer="95" rot="R180" xref="yes"/>
</segment>
<segment>
<pinref part="LED_R1C4" gate="G$1" pin="CA"/>
<wire x1="-27.94" y1="-73.66" x2="-81.28" y2="-73.66" width="0.1524" layer="91"/>
<label x="-81.28" y="-73.66" size="1.27" layer="95" rot="R180" xref="yes"/>
</segment>
<segment>
<pinref part="LED_R1C5" gate="G$1" pin="CA"/>
<wire x1="104.14" y1="-73.66" x2="50.8" y2="-73.66" width="0.1524" layer="91"/>
<label x="50.8" y="-73.66" size="1.27" layer="95" rot="R180" xref="yes"/>
</segment>
<segment>
<pinref part="LED_R1C6" gate="G$1" pin="CA"/>
<wire x1="233.68" y1="-73.66" x2="180.34" y2="-73.66" width="0.1524" layer="91"/>
<label x="180.34" y="-73.66" size="1.27" layer="95" rot="R180" xref="yes"/>
</segment>
<segment>
<pinref part="LED_R1C7" gate="G$1" pin="CA"/>
<wire x1="365.76" y1="-73.66" x2="312.42" y2="-73.66" width="0.1524" layer="91"/>
<label x="312.42" y="-73.66" size="1.27" layer="95" rot="R180" xref="yes"/>
</segment>
</net>
<net name="R2_PWR" class="0">
<segment>
<pinref part="LED_R2C0" gate="G$1" pin="CA"/>
<wire x1="-27.94" y1="68.58" x2="-81.28" y2="68.58" width="0.1524" layer="91"/>
<label x="-81.28" y="68.58" size="1.27" layer="95" rot="R180" xref="yes"/>
</segment>
<segment>
<pinref part="Q2" gate="1" pin="C"/>
<wire x1="-165.1" y1="73.66" x2="-165.1" y2="71.12" width="0.1524" layer="91"/>
<wire x1="-165.1" y1="71.12" x2="-144.78" y2="71.12" width="0.1524" layer="91"/>
<label x="-144.78" y="71.12" size="1.27" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="LED_R2C1" gate="G$1" pin="CA"/>
<wire x1="104.14" y1="68.58" x2="50.8" y2="68.58" width="0.1524" layer="91"/>
<label x="50.8" y="68.58" size="1.27" layer="95" rot="R180" xref="yes"/>
</segment>
<segment>
<pinref part="LED_R2C2" gate="G$1" pin="CA"/>
<wire x1="233.68" y1="68.58" x2="180.34" y2="68.58" width="0.1524" layer="91"/>
<label x="180.34" y="68.58" size="1.27" layer="95" rot="R180" xref="yes"/>
</segment>
<segment>
<pinref part="LED_R2C3" gate="G$1" pin="CA"/>
<wire x1="365.76" y1="68.58" x2="312.42" y2="68.58" width="0.1524" layer="91"/>
<label x="312.42" y="68.58" size="1.27" layer="95" rot="R180" xref="yes"/>
</segment>
<segment>
<pinref part="LED_R2C4" gate="G$1" pin="CA"/>
<wire x1="-27.94" y1="-137.16" x2="-81.28" y2="-137.16" width="0.1524" layer="91"/>
<label x="-81.28" y="-137.16" size="1.27" layer="95" rot="R180" xref="yes"/>
</segment>
<segment>
<pinref part="LED_R2C5" gate="G$1" pin="CA"/>
<wire x1="104.14" y1="-137.16" x2="50.8" y2="-137.16" width="0.1524" layer="91"/>
<label x="50.8" y="-137.16" size="1.27" layer="95" rot="R180" xref="yes"/>
</segment>
<segment>
<pinref part="LED_R2C6" gate="G$1" pin="CA"/>
<wire x1="233.68" y1="-137.16" x2="180.34" y2="-137.16" width="0.1524" layer="91"/>
<label x="180.34" y="-137.16" size="1.27" layer="95" rot="R180" xref="yes"/>
</segment>
<segment>
<pinref part="LED_R2C7" gate="G$1" pin="CA"/>
<wire x1="365.76" y1="-137.16" x2="312.42" y2="-137.16" width="0.1524" layer="91"/>
<label x="312.42" y="-137.16" size="1.27" layer="95" rot="R180" xref="yes"/>
</segment>
</net>
<net name="R3_PWR" class="0">
<segment>
<pinref part="LED_R3C0" gate="G$1" pin="CA"/>
<wire x1="-27.94" y1="5.08" x2="-81.28" y2="5.08" width="0.1524" layer="91"/>
<label x="-81.28" y="5.08" size="1.27" layer="95" rot="R180" xref="yes"/>
</segment>
<segment>
<pinref part="Q3" gate="1" pin="C"/>
<wire x1="-165.1" y1="53.34" x2="-165.1" y2="50.8" width="0.1524" layer="91"/>
<wire x1="-165.1" y1="50.8" x2="-144.78" y2="50.8" width="0.1524" layer="91"/>
<label x="-144.78" y="50.8" size="1.27" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="LED_R3C1" gate="G$1" pin="CA"/>
<wire x1="104.14" y1="5.08" x2="50.8" y2="5.08" width="0.1524" layer="91"/>
<label x="50.8" y="5.08" size="1.27" layer="95" rot="R180" xref="yes"/>
</segment>
<segment>
<pinref part="LED_R3C2" gate="G$1" pin="CA"/>
<wire x1="233.68" y1="5.08" x2="180.34" y2="5.08" width="0.1524" layer="91"/>
<label x="180.34" y="5.08" size="1.27" layer="95" rot="R180" xref="yes"/>
</segment>
<segment>
<pinref part="LED_R3C3" gate="G$1" pin="CA"/>
<wire x1="365.76" y1="5.08" x2="312.42" y2="5.08" width="0.1524" layer="91"/>
<label x="312.42" y="5.08" size="1.27" layer="95" rot="R180" xref="yes"/>
</segment>
<segment>
<pinref part="LED_R3C4" gate="G$1" pin="CA"/>
<wire x1="-27.94" y1="-200.66" x2="-81.28" y2="-200.66" width="0.1524" layer="91"/>
<label x="-81.28" y="-200.66" size="1.27" layer="95" rot="R180" xref="yes"/>
</segment>
<segment>
<pinref part="LED_R3C5" gate="G$1" pin="CA"/>
<wire x1="104.14" y1="-200.66" x2="50.8" y2="-200.66" width="0.1524" layer="91"/>
<label x="50.8" y="-200.66" size="1.27" layer="95" rot="R180" xref="yes"/>
</segment>
<segment>
<pinref part="LED_R3C6" gate="G$1" pin="CA"/>
<wire x1="233.68" y1="-200.66" x2="180.34" y2="-200.66" width="0.1524" layer="91"/>
<label x="180.34" y="-200.66" size="1.27" layer="95" rot="R180" xref="yes"/>
</segment>
<segment>
<pinref part="LED_R3C7" gate="G$1" pin="CA"/>
<wire x1="365.76" y1="-200.66" x2="312.42" y2="-200.66" width="0.1524" layer="91"/>
<label x="312.42" y="-200.66" size="1.27" layer="95" rot="R180" xref="yes"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="R1" gate="G$1" pin="1"/>
<pinref part="CN4" gate="-34" pin="S"/>
<wire x1="-187.96" y1="99.06" x2="-182.88" y2="99.06" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="R2" gate="G$1" pin="1"/>
<pinref part="CN4" gate="-35" pin="S"/>
<wire x1="-187.96" y1="78.74" x2="-182.88" y2="78.74" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="R3" gate="G$1" pin="1"/>
<pinref part="CN4" gate="-36" pin="S"/>
<wire x1="-187.96" y1="58.42" x2="-182.88" y2="58.42" width="0.1524" layer="91"/>
</segment>
</net>
<net name="DP1" class="0">
<segment>
<pinref part="LED_R1C1" gate="G$1" pin="DP"/>
<wire x1="45.72" y1="83.82" x2="101.6" y2="83.82" width="0.1524" layer="91"/>
<pinref part="LED_R2C1" gate="G$1" pin="DP"/>
<wire x1="101.6" y1="83.82" x2="104.14" y2="83.82" width="0.1524" layer="91"/>
<wire x1="104.14" y1="20.32" x2="101.6" y2="20.32" width="0.1524" layer="91"/>
<wire x1="101.6" y1="20.32" x2="101.6" y2="83.82" width="0.1524" layer="91"/>
<junction x="101.6" y="83.82"/>
<label x="48.26" y="83.82" size="1.27" layer="95"/>
<pinref part="LED_R3C1" gate="G$1" pin="DP"/>
<wire x1="104.14" y1="-43.18" x2="101.6" y2="-43.18" width="0.1524" layer="91"/>
<wire x1="101.6" y1="-43.18" x2="101.6" y2="20.32" width="0.1524" layer="91"/>
<junction x="101.6" y="20.32"/>
<pinref part="CN1" gate="-7" pin="S"/>
</segment>
</net>
<net name="DP2" class="0">
<segment>
<pinref part="LED_R1C2" gate="G$1" pin="DP"/>
<wire x1="175.26" y1="83.82" x2="231.14" y2="83.82" width="0.1524" layer="91"/>
<pinref part="LED_R2C2" gate="G$1" pin="DP"/>
<wire x1="231.14" y1="83.82" x2="233.68" y2="83.82" width="0.1524" layer="91"/>
<wire x1="233.68" y1="20.32" x2="231.14" y2="20.32" width="0.1524" layer="91"/>
<wire x1="231.14" y1="20.32" x2="231.14" y2="83.82" width="0.1524" layer="91"/>
<junction x="231.14" y="83.82"/>
<label x="177.8" y="83.82" size="1.27" layer="95"/>
<pinref part="LED_R3C2" gate="G$1" pin="DP"/>
<wire x1="233.68" y1="-43.18" x2="231.14" y2="-43.18" width="0.1524" layer="91"/>
<wire x1="231.14" y1="-43.18" x2="231.14" y2="20.32" width="0.1524" layer="91"/>
<junction x="231.14" y="20.32"/>
<pinref part="CN1" gate="-6" pin="S"/>
</segment>
</net>
<net name="DP3" class="0">
<segment>
<pinref part="LED_R1C3" gate="G$1" pin="DP"/>
<wire x1="307.34" y1="83.82" x2="363.22" y2="83.82" width="0.1524" layer="91"/>
<pinref part="LED_R2C3" gate="G$1" pin="DP"/>
<wire x1="363.22" y1="83.82" x2="365.76" y2="83.82" width="0.1524" layer="91"/>
<wire x1="365.76" y1="20.32" x2="363.22" y2="20.32" width="0.1524" layer="91"/>
<wire x1="363.22" y1="20.32" x2="363.22" y2="83.82" width="0.1524" layer="91"/>
<junction x="363.22" y="83.82"/>
<label x="309.88" y="83.82" size="1.27" layer="95"/>
<pinref part="LED_R3C3" gate="G$1" pin="DP"/>
<wire x1="365.76" y1="-43.18" x2="363.22" y2="-43.18" width="0.1524" layer="91"/>
<wire x1="363.22" y1="-43.18" x2="363.22" y2="20.32" width="0.1524" layer="91"/>
<junction x="363.22" y="20.32"/>
<pinref part="CN1" gate="-5" pin="S"/>
</segment>
</net>
<net name="DP4" class="0">
<segment>
<pinref part="LED_R1C4" gate="G$1" pin="DP"/>
<wire x1="-86.36" y1="-121.92" x2="-30.48" y2="-121.92" width="0.1524" layer="91"/>
<pinref part="LED_R2C4" gate="G$1" pin="DP"/>
<wire x1="-30.48" y1="-121.92" x2="-27.94" y2="-121.92" width="0.1524" layer="91"/>
<wire x1="-27.94" y1="-185.42" x2="-30.48" y2="-185.42" width="0.1524" layer="91"/>
<wire x1="-30.48" y1="-185.42" x2="-30.48" y2="-121.92" width="0.1524" layer="91"/>
<junction x="-30.48" y="-121.92"/>
<label x="-83.82" y="-121.92" size="1.27" layer="95"/>
<pinref part="LED_R3C4" gate="G$1" pin="DP"/>
<wire x1="-27.94" y1="-248.92" x2="-30.48" y2="-248.92" width="0.1524" layer="91"/>
<wire x1="-30.48" y1="-248.92" x2="-30.48" y2="-185.42" width="0.1524" layer="91"/>
<junction x="-30.48" y="-185.42"/>
<pinref part="CN1" gate="-4" pin="S"/>
</segment>
</net>
<net name="DP5" class="0">
<segment>
<pinref part="LED_R1C5" gate="G$1" pin="DP"/>
<wire x1="45.72" y1="-121.92" x2="101.6" y2="-121.92" width="0.1524" layer="91"/>
<pinref part="LED_R2C5" gate="G$1" pin="DP"/>
<wire x1="101.6" y1="-121.92" x2="104.14" y2="-121.92" width="0.1524" layer="91"/>
<wire x1="104.14" y1="-185.42" x2="101.6" y2="-185.42" width="0.1524" layer="91"/>
<wire x1="101.6" y1="-185.42" x2="101.6" y2="-121.92" width="0.1524" layer="91"/>
<junction x="101.6" y="-121.92"/>
<label x="48.26" y="-121.92" size="1.27" layer="95"/>
<pinref part="LED_R3C5" gate="G$1" pin="DP"/>
<wire x1="104.14" y1="-248.92" x2="101.6" y2="-248.92" width="0.1524" layer="91"/>
<wire x1="101.6" y1="-248.92" x2="101.6" y2="-185.42" width="0.1524" layer="91"/>
<junction x="101.6" y="-185.42"/>
<pinref part="CN1" gate="-3" pin="S"/>
</segment>
</net>
<net name="DP6" class="0">
<segment>
<pinref part="LED_R1C6" gate="G$1" pin="DP"/>
<wire x1="175.26" y1="-121.92" x2="231.14" y2="-121.92" width="0.1524" layer="91"/>
<pinref part="LED_R2C6" gate="G$1" pin="DP"/>
<wire x1="231.14" y1="-121.92" x2="233.68" y2="-121.92" width="0.1524" layer="91"/>
<wire x1="233.68" y1="-185.42" x2="231.14" y2="-185.42" width="0.1524" layer="91"/>
<wire x1="231.14" y1="-185.42" x2="231.14" y2="-121.92" width="0.1524" layer="91"/>
<junction x="231.14" y="-121.92"/>
<label x="177.8" y="-121.92" size="1.27" layer="95"/>
<pinref part="LED_R3C6" gate="G$1" pin="DP"/>
<wire x1="233.68" y1="-248.92" x2="231.14" y2="-248.92" width="0.1524" layer="91"/>
<wire x1="231.14" y1="-248.92" x2="231.14" y2="-185.42" width="0.1524" layer="91"/>
<junction x="231.14" y="-185.42"/>
<pinref part="CN1" gate="-2" pin="S"/>
</segment>
</net>
<net name="DP7" class="0">
<segment>
<pinref part="LED_R1C7" gate="G$1" pin="DP"/>
<wire x1="307.34" y1="-121.92" x2="363.22" y2="-121.92" width="0.1524" layer="91"/>
<pinref part="LED_R2C7" gate="G$1" pin="DP"/>
<wire x1="363.22" y1="-121.92" x2="365.76" y2="-121.92" width="0.1524" layer="91"/>
<wire x1="365.76" y1="-185.42" x2="363.22" y2="-185.42" width="0.1524" layer="91"/>
<wire x1="363.22" y1="-185.42" x2="363.22" y2="-121.92" width="0.1524" layer="91"/>
<junction x="363.22" y="-121.92"/>
<label x="309.88" y="-121.92" size="1.27" layer="95"/>
<pinref part="LED_R3C7" gate="G$1" pin="DP"/>
<wire x1="365.76" y1="-248.92" x2="363.22" y2="-248.92" width="0.1524" layer="91"/>
<wire x1="363.22" y1="-248.92" x2="363.22" y2="-185.42" width="0.1524" layer="91"/>
<junction x="363.22" y="-185.42"/>
<pinref part="CN1" gate="-1" pin="S"/>
</segment>
</net>
<net name="COL1_A" class="0">
<segment>
<pinref part="LED_R1C1" gate="G$1" pin="A"/>
<wire x1="45.72" y1="127" x2="58.42" y2="127" width="0.1524" layer="91"/>
<label x="48.26" y="127" size="1.27" layer="95"/>
<pinref part="LED_R2C1" gate="G$1" pin="A"/>
<wire x1="58.42" y1="127" x2="104.14" y2="127" width="0.1524" layer="91"/>
<wire x1="104.14" y1="63.5" x2="58.42" y2="63.5" width="0.1524" layer="91"/>
<wire x1="58.42" y1="63.5" x2="58.42" y2="127" width="0.1524" layer="91"/>
<junction x="58.42" y="127"/>
<pinref part="LED_R3C1" gate="G$1" pin="A"/>
<wire x1="104.14" y1="0" x2="58.42" y2="0" width="0.1524" layer="91"/>
<wire x1="58.42" y1="0" x2="58.42" y2="63.5" width="0.1524" layer="91"/>
<junction x="58.42" y="63.5"/>
<pinref part="CN3" gate="-5" pin="S"/>
</segment>
</net>
<net name="COL1_B" class="0">
<segment>
<pinref part="LED_R1C1" gate="G$1" pin="B"/>
<wire x1="45.72" y1="124.46" x2="60.96" y2="124.46" width="0.1524" layer="91"/>
<label x="48.26" y="124.46" size="1.27" layer="95"/>
<pinref part="LED_R2C1" gate="G$1" pin="B"/>
<wire x1="60.96" y1="124.46" x2="104.14" y2="124.46" width="0.1524" layer="91"/>
<wire x1="104.14" y1="60.96" x2="60.96" y2="60.96" width="0.1524" layer="91"/>
<wire x1="60.96" y1="60.96" x2="60.96" y2="124.46" width="0.1524" layer="91"/>
<junction x="60.96" y="124.46"/>
<pinref part="LED_R3C1" gate="G$1" pin="B"/>
<wire x1="104.14" y1="-2.54" x2="60.96" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="60.96" y1="-2.54" x2="60.96" y2="60.96" width="0.1524" layer="91"/>
<junction x="60.96" y="60.96"/>
<pinref part="CN3" gate="-12" pin="S"/>
</segment>
</net>
<net name="COL1_C" class="0">
<segment>
<pinref part="LED_R1C1" gate="G$1" pin="C"/>
<wire x1="45.72" y1="121.92" x2="63.5" y2="121.92" width="0.1524" layer="91"/>
<label x="48.26" y="121.92" size="1.27" layer="95"/>
<pinref part="LED_R2C1" gate="G$1" pin="C"/>
<wire x1="63.5" y1="121.92" x2="104.14" y2="121.92" width="0.1524" layer="91"/>
<wire x1="104.14" y1="58.42" x2="63.5" y2="58.42" width="0.1524" layer="91"/>
<wire x1="63.5" y1="58.42" x2="63.5" y2="121.92" width="0.1524" layer="91"/>
<junction x="63.5" y="121.92"/>
<pinref part="LED_R3C1" gate="G$1" pin="C"/>
<wire x1="104.14" y1="-5.08" x2="63.5" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="63.5" y1="-5.08" x2="63.5" y2="58.42" width="0.1524" layer="91"/>
<junction x="63.5" y="58.42"/>
<pinref part="CN3" gate="-10" pin="S"/>
</segment>
</net>
<net name="COL1_D" class="0">
<segment>
<pinref part="LED_R1C1" gate="G$1" pin="D"/>
<wire x1="45.72" y1="119.38" x2="66.04" y2="119.38" width="0.1524" layer="91"/>
<label x="48.26" y="119.38" size="1.27" layer="95"/>
<pinref part="LED_R2C1" gate="G$1" pin="D"/>
<wire x1="66.04" y1="119.38" x2="104.14" y2="119.38" width="0.1524" layer="91"/>
<wire x1="104.14" y1="55.88" x2="66.04" y2="55.88" width="0.1524" layer="91"/>
<wire x1="66.04" y1="55.88" x2="66.04" y2="119.38" width="0.1524" layer="91"/>
<junction x="66.04" y="119.38"/>
<pinref part="LED_R3C1" gate="G$1" pin="D"/>
<wire x1="104.14" y1="-7.62" x2="66.04" y2="-7.62" width="0.1524" layer="91"/>
<wire x1="66.04" y1="-7.62" x2="66.04" y2="55.88" width="0.1524" layer="91"/>
<junction x="66.04" y="55.88"/>
<pinref part="CN3" gate="-15" pin="S"/>
</segment>
</net>
<net name="COL1_E" class="0">
<segment>
<pinref part="LED_R1C1" gate="G$1" pin="E"/>
<wire x1="45.72" y1="116.84" x2="68.58" y2="116.84" width="0.1524" layer="91"/>
<label x="48.26" y="116.84" size="1.27" layer="95"/>
<pinref part="LED_R2C1" gate="G$1" pin="E"/>
<wire x1="68.58" y1="116.84" x2="104.14" y2="116.84" width="0.1524" layer="91"/>
<wire x1="104.14" y1="53.34" x2="68.58" y2="53.34" width="0.1524" layer="91"/>
<wire x1="68.58" y1="53.34" x2="68.58" y2="116.84" width="0.1524" layer="91"/>
<junction x="68.58" y="116.84"/>
<pinref part="LED_R3C1" gate="G$1" pin="E"/>
<wire x1="104.14" y1="-10.16" x2="68.58" y2="-10.16" width="0.1524" layer="91"/>
<wire x1="68.58" y1="-10.16" x2="68.58" y2="53.34" width="0.1524" layer="91"/>
<junction x="68.58" y="53.34"/>
<pinref part="CN3" gate="-14" pin="S"/>
</segment>
</net>
<net name="COL1_F" class="0">
<segment>
<pinref part="LED_R1C1" gate="G$1" pin="F"/>
<wire x1="45.72" y1="114.3" x2="71.12" y2="114.3" width="0.1524" layer="91"/>
<label x="48.26" y="114.3" size="1.27" layer="95"/>
<pinref part="LED_R2C1" gate="G$1" pin="F"/>
<wire x1="71.12" y1="114.3" x2="104.14" y2="114.3" width="0.1524" layer="91"/>
<wire x1="104.14" y1="50.8" x2="71.12" y2="50.8" width="0.1524" layer="91"/>
<wire x1="71.12" y1="50.8" x2="71.12" y2="114.3" width="0.1524" layer="91"/>
<junction x="71.12" y="114.3"/>
<pinref part="LED_R3C1" gate="G$1" pin="F"/>
<wire x1="104.14" y1="-12.7" x2="71.12" y2="-12.7" width="0.1524" layer="91"/>
<wire x1="71.12" y1="-12.7" x2="71.12" y2="50.8" width="0.1524" layer="91"/>
<junction x="71.12" y="50.8"/>
<pinref part="CN3" gate="-13" pin="S"/>
</segment>
</net>
<net name="COL1_G" class="0">
<segment>
<pinref part="LED_R1C1" gate="G$1" pin="G"/>
<wire x1="45.72" y1="111.76" x2="73.66" y2="111.76" width="0.1524" layer="91"/>
<label x="48.26" y="111.76" size="1.27" layer="95"/>
<pinref part="LED_R2C1" gate="G$1" pin="G"/>
<wire x1="73.66" y1="111.76" x2="104.14" y2="111.76" width="0.1524" layer="91"/>
<wire x1="104.14" y1="48.26" x2="73.66" y2="48.26" width="0.1524" layer="91"/>
<wire x1="73.66" y1="48.26" x2="73.66" y2="111.76" width="0.1524" layer="91"/>
<junction x="73.66" y="111.76"/>
<pinref part="LED_R3C1" gate="G$1" pin="G"/>
<wire x1="104.14" y1="-15.24" x2="73.66" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="73.66" y1="-15.24" x2="73.66" y2="48.26" width="0.1524" layer="91"/>
<junction x="73.66" y="48.26"/>
<pinref part="CN3" gate="-4" pin="S"/>
</segment>
</net>
<net name="COL1_H" class="0">
<segment>
<pinref part="LED_R1C1" gate="G$1" pin="H"/>
<wire x1="45.72" y1="109.22" x2="76.2" y2="109.22" width="0.1524" layer="91"/>
<label x="48.26" y="109.22" size="1.27" layer="95"/>
<pinref part="LED_R2C1" gate="G$1" pin="H"/>
<wire x1="76.2" y1="109.22" x2="104.14" y2="109.22" width="0.1524" layer="91"/>
<wire x1="104.14" y1="45.72" x2="76.2" y2="45.72" width="0.1524" layer="91"/>
<wire x1="76.2" y1="45.72" x2="76.2" y2="109.22" width="0.1524" layer="91"/>
<junction x="76.2" y="109.22"/>
<pinref part="LED_R3C1" gate="G$1" pin="H"/>
<wire x1="104.14" y1="-17.78" x2="76.2" y2="-17.78" width="0.1524" layer="91"/>
<wire x1="76.2" y1="-17.78" x2="76.2" y2="45.72" width="0.1524" layer="91"/>
<junction x="76.2" y="45.72"/>
<pinref part="CN3" gate="-8" pin="S"/>
</segment>
</net>
<net name="COL1_K" class="0">
<segment>
<pinref part="LED_R1C1" gate="G$1" pin="K"/>
<wire x1="45.72" y1="106.68" x2="78.74" y2="106.68" width="0.1524" layer="91"/>
<label x="48.26" y="106.68" size="1.27" layer="95"/>
<pinref part="LED_R2C1" gate="G$1" pin="K"/>
<wire x1="78.74" y1="106.68" x2="104.14" y2="106.68" width="0.1524" layer="91"/>
<wire x1="104.14" y1="43.18" x2="78.74" y2="43.18" width="0.1524" layer="91"/>
<wire x1="78.74" y1="43.18" x2="78.74" y2="106.68" width="0.1524" layer="91"/>
<junction x="78.74" y="106.68"/>
<pinref part="LED_R3C1" gate="G$1" pin="K"/>
<wire x1="104.14" y1="-20.32" x2="78.74" y2="-20.32" width="0.1524" layer="91"/>
<wire x1="78.74" y1="-20.32" x2="78.74" y2="43.18" width="0.1524" layer="91"/>
<junction x="78.74" y="43.18"/>
<pinref part="CN3" gate="-7" pin="S"/>
</segment>
</net>
<net name="COL1_M" class="0">
<segment>
<pinref part="LED_R1C1" gate="G$1" pin="M"/>
<wire x1="45.72" y1="104.14" x2="81.28" y2="104.14" width="0.1524" layer="91"/>
<label x="48.26" y="104.14" size="1.27" layer="95"/>
<pinref part="LED_R2C1" gate="G$1" pin="M"/>
<wire x1="81.28" y1="104.14" x2="104.14" y2="104.14" width="0.1524" layer="91"/>
<wire x1="104.14" y1="40.64" x2="81.28" y2="40.64" width="0.1524" layer="91"/>
<wire x1="81.28" y1="40.64" x2="81.28" y2="104.14" width="0.1524" layer="91"/>
<junction x="81.28" y="104.14"/>
<pinref part="LED_R3C1" gate="G$1" pin="M"/>
<wire x1="104.14" y1="-22.86" x2="81.28" y2="-22.86" width="0.1524" layer="91"/>
<wire x1="81.28" y1="-22.86" x2="81.28" y2="40.64" width="0.1524" layer="91"/>
<junction x="81.28" y="40.64"/>
<pinref part="CN3" gate="-6" pin="S"/>
</segment>
</net>
<net name="COL1_N" class="0">
<segment>
<pinref part="LED_R1C1" gate="G$1" pin="N"/>
<wire x1="45.72" y1="101.6" x2="83.82" y2="101.6" width="0.1524" layer="91"/>
<label x="48.26" y="101.6" size="1.27" layer="95"/>
<pinref part="LED_R2C1" gate="G$1" pin="N"/>
<wire x1="83.82" y1="101.6" x2="104.14" y2="101.6" width="0.1524" layer="91"/>
<wire x1="104.14" y1="38.1" x2="83.82" y2="38.1" width="0.1524" layer="91"/>
<wire x1="83.82" y1="38.1" x2="83.82" y2="101.6" width="0.1524" layer="91"/>
<junction x="83.82" y="101.6"/>
<pinref part="LED_R3C1" gate="G$1" pin="N"/>
<wire x1="104.14" y1="-25.4" x2="83.82" y2="-25.4" width="0.1524" layer="91"/>
<wire x1="83.82" y1="-25.4" x2="83.82" y2="38.1" width="0.1524" layer="91"/>
<junction x="83.82" y="38.1"/>
<pinref part="CN3" gate="-11" pin="S"/>
</segment>
</net>
<net name="COL1_P" class="0">
<segment>
<pinref part="LED_R1C1" gate="G$1" pin="P"/>
<wire x1="45.72" y1="99.06" x2="86.36" y2="99.06" width="0.1524" layer="91"/>
<label x="48.26" y="99.06" size="1.27" layer="95"/>
<pinref part="LED_R2C1" gate="G$1" pin="P"/>
<wire x1="86.36" y1="99.06" x2="104.14" y2="99.06" width="0.1524" layer="91"/>
<wire x1="104.14" y1="35.56" x2="86.36" y2="35.56" width="0.1524" layer="91"/>
<wire x1="86.36" y1="35.56" x2="86.36" y2="99.06" width="0.1524" layer="91"/>
<junction x="86.36" y="99.06"/>
<pinref part="LED_R3C1" gate="G$1" pin="P"/>
<wire x1="104.14" y1="-27.94" x2="86.36" y2="-27.94" width="0.1524" layer="91"/>
<wire x1="86.36" y1="-27.94" x2="86.36" y2="35.56" width="0.1524" layer="91"/>
<junction x="86.36" y="35.56"/>
<pinref part="CN3" gate="-9" pin="S"/>
</segment>
</net>
<net name="COL1_R" class="0">
<segment>
<pinref part="LED_R1C1" gate="G$1" pin="R"/>
<wire x1="45.72" y1="96.52" x2="88.9" y2="96.52" width="0.1524" layer="91"/>
<label x="48.26" y="96.52" size="1.27" layer="95"/>
<pinref part="LED_R2C1" gate="G$1" pin="R"/>
<wire x1="88.9" y1="96.52" x2="104.14" y2="96.52" width="0.1524" layer="91"/>
<wire x1="104.14" y1="33.02" x2="88.9" y2="33.02" width="0.1524" layer="91"/>
<wire x1="88.9" y1="33.02" x2="88.9" y2="96.52" width="0.1524" layer="91"/>
<junction x="88.9" y="96.52"/>
<pinref part="LED_R3C1" gate="G$1" pin="R"/>
<wire x1="104.14" y1="-30.48" x2="88.9" y2="-30.48" width="0.1524" layer="91"/>
<wire x1="88.9" y1="-30.48" x2="88.9" y2="33.02" width="0.1524" layer="91"/>
<junction x="88.9" y="33.02"/>
<pinref part="CN3" gate="-16" pin="S"/>
</segment>
</net>
<net name="COL1_S" class="0">
<segment>
<pinref part="LED_R1C1" gate="G$1" pin="S"/>
<wire x1="45.72" y1="93.98" x2="91.44" y2="93.98" width="0.1524" layer="91"/>
<label x="48.26" y="93.98" size="1.27" layer="95"/>
<pinref part="LED_R2C1" gate="G$1" pin="S"/>
<wire x1="91.44" y1="93.98" x2="104.14" y2="93.98" width="0.1524" layer="91"/>
<wire x1="104.14" y1="30.48" x2="91.44" y2="30.48" width="0.1524" layer="91"/>
<wire x1="91.44" y1="30.48" x2="91.44" y2="93.98" width="0.1524" layer="91"/>
<junction x="91.44" y="93.98"/>
<pinref part="LED_R3C1" gate="G$1" pin="S"/>
<wire x1="104.14" y1="-33.02" x2="91.44" y2="-33.02" width="0.1524" layer="91"/>
<wire x1="91.44" y1="-33.02" x2="91.44" y2="30.48" width="0.1524" layer="91"/>
<junction x="91.44" y="30.48"/>
<pinref part="CN3" gate="-2" pin="S"/>
</segment>
</net>
<net name="COL1_T" class="0">
<segment>
<pinref part="LED_R1C1" gate="G$1" pin="T"/>
<wire x1="45.72" y1="91.44" x2="93.98" y2="91.44" width="0.1524" layer="91"/>
<label x="48.26" y="91.44" size="1.27" layer="95"/>
<pinref part="LED_R2C1" gate="G$1" pin="T"/>
<wire x1="93.98" y1="91.44" x2="104.14" y2="91.44" width="0.1524" layer="91"/>
<wire x1="104.14" y1="27.94" x2="93.98" y2="27.94" width="0.1524" layer="91"/>
<wire x1="93.98" y1="27.94" x2="93.98" y2="91.44" width="0.1524" layer="91"/>
<junction x="93.98" y="91.44"/>
<pinref part="LED_R3C1" gate="G$1" pin="T"/>
<wire x1="104.14" y1="-35.56" x2="93.98" y2="-35.56" width="0.1524" layer="91"/>
<wire x1="93.98" y1="-35.56" x2="93.98" y2="27.94" width="0.1524" layer="91"/>
<junction x="93.98" y="27.94"/>
<pinref part="CN3" gate="-3" pin="S"/>
</segment>
</net>
<net name="COL1_U" class="0">
<segment>
<pinref part="LED_R1C1" gate="G$1" pin="U"/>
<wire x1="45.72" y1="88.9" x2="96.52" y2="88.9" width="0.1524" layer="91"/>
<label x="48.26" y="88.9" size="1.27" layer="95"/>
<pinref part="LED_R2C1" gate="G$1" pin="U"/>
<wire x1="96.52" y1="88.9" x2="104.14" y2="88.9" width="0.1524" layer="91"/>
<wire x1="104.14" y1="25.4" x2="96.52" y2="25.4" width="0.1524" layer="91"/>
<wire x1="96.52" y1="25.4" x2="96.52" y2="88.9" width="0.1524" layer="91"/>
<junction x="96.52" y="88.9"/>
<pinref part="LED_R3C1" gate="G$1" pin="U"/>
<wire x1="104.14" y1="-38.1" x2="96.52" y2="-38.1" width="0.1524" layer="91"/>
<wire x1="96.52" y1="-38.1" x2="96.52" y2="25.4" width="0.1524" layer="91"/>
<junction x="96.52" y="25.4"/>
<pinref part="CN3" gate="-1" pin="S"/>
</segment>
</net>
<net name="COL2_A" class="0">
<segment>
<pinref part="LED_R1C2" gate="G$1" pin="A"/>
<wire x1="175.26" y1="127" x2="187.96" y2="127" width="0.1524" layer="91"/>
<label x="177.8" y="127" size="1.27" layer="95"/>
<pinref part="LED_R2C2" gate="G$1" pin="A"/>
<wire x1="187.96" y1="127" x2="233.68" y2="127" width="0.1524" layer="91"/>
<wire x1="233.68" y1="63.5" x2="187.96" y2="63.5" width="0.1524" layer="91"/>
<wire x1="187.96" y1="63.5" x2="187.96" y2="127" width="0.1524" layer="91"/>
<junction x="187.96" y="127"/>
<pinref part="LED_R3C2" gate="G$1" pin="A"/>
<wire x1="233.68" y1="0" x2="187.96" y2="0" width="0.1524" layer="91"/>
<wire x1="187.96" y1="0" x2="187.96" y2="63.5" width="0.1524" layer="91"/>
<junction x="187.96" y="63.5"/>
<pinref part="CN1" gate="-32" pin="S"/>
</segment>
</net>
<net name="COL2_B" class="0">
<segment>
<pinref part="LED_R1C2" gate="G$1" pin="B"/>
<wire x1="175.26" y1="124.46" x2="190.5" y2="124.46" width="0.1524" layer="91"/>
<label x="177.8" y="124.46" size="1.27" layer="95"/>
<pinref part="LED_R2C2" gate="G$1" pin="B"/>
<wire x1="190.5" y1="124.46" x2="233.68" y2="124.46" width="0.1524" layer="91"/>
<wire x1="233.68" y1="60.96" x2="190.5" y2="60.96" width="0.1524" layer="91"/>
<wire x1="190.5" y1="60.96" x2="190.5" y2="124.46" width="0.1524" layer="91"/>
<junction x="190.5" y="124.46"/>
<pinref part="LED_R3C2" gate="G$1" pin="B"/>
<wire x1="233.68" y1="-2.54" x2="190.5" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="190.5" y1="-2.54" x2="190.5" y2="60.96" width="0.1524" layer="91"/>
<junction x="190.5" y="60.96"/>
<pinref part="CN1" gate="-33" pin="S"/>
</segment>
</net>
<net name="COL2_C" class="0">
<segment>
<pinref part="LED_R1C2" gate="G$1" pin="C"/>
<wire x1="175.26" y1="121.92" x2="193.04" y2="121.92" width="0.1524" layer="91"/>
<label x="177.8" y="121.92" size="1.27" layer="95"/>
<pinref part="LED_R2C2" gate="G$1" pin="C"/>
<wire x1="193.04" y1="121.92" x2="233.68" y2="121.92" width="0.1524" layer="91"/>
<wire x1="233.68" y1="58.42" x2="193.04" y2="58.42" width="0.1524" layer="91"/>
<wire x1="193.04" y1="58.42" x2="193.04" y2="121.92" width="0.1524" layer="91"/>
<junction x="193.04" y="121.92"/>
<pinref part="LED_R3C2" gate="G$1" pin="C"/>
<wire x1="233.68" y1="-5.08" x2="193.04" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="193.04" y1="-5.08" x2="193.04" y2="58.42" width="0.1524" layer="91"/>
<junction x="193.04" y="58.42"/>
<pinref part="CN1" gate="-35" pin="S"/>
</segment>
</net>
<net name="COL2_D" class="0">
<segment>
<pinref part="LED_R1C2" gate="G$1" pin="D"/>
<wire x1="175.26" y1="119.38" x2="195.58" y2="119.38" width="0.1524" layer="91"/>
<label x="177.8" y="119.38" size="1.27" layer="95"/>
<pinref part="LED_R2C2" gate="G$1" pin="D"/>
<wire x1="195.58" y1="119.38" x2="233.68" y2="119.38" width="0.1524" layer="91"/>
<wire x1="233.68" y1="55.88" x2="195.58" y2="55.88" width="0.1524" layer="91"/>
<wire x1="195.58" y1="55.88" x2="195.58" y2="119.38" width="0.1524" layer="91"/>
<junction x="195.58" y="119.38"/>
<pinref part="LED_R3C2" gate="G$1" pin="D"/>
<wire x1="233.68" y1="-7.62" x2="195.58" y2="-7.62" width="0.1524" layer="91"/>
<wire x1="195.58" y1="-7.62" x2="195.58" y2="55.88" width="0.1524" layer="91"/>
<junction x="195.58" y="55.88"/>
<pinref part="CN1" gate="-38" pin="S"/>
</segment>
</net>
<net name="COL2_E" class="0">
<segment>
<pinref part="LED_R1C2" gate="G$1" pin="E"/>
<wire x1="175.26" y1="116.84" x2="198.12" y2="116.84" width="0.1524" layer="91"/>
<label x="177.8" y="116.84" size="1.27" layer="95"/>
<pinref part="LED_R2C2" gate="G$1" pin="E"/>
<wire x1="198.12" y1="116.84" x2="233.68" y2="116.84" width="0.1524" layer="91"/>
<wire x1="233.68" y1="53.34" x2="198.12" y2="53.34" width="0.1524" layer="91"/>
<wire x1="198.12" y1="53.34" x2="198.12" y2="116.84" width="0.1524" layer="91"/>
<junction x="198.12" y="116.84"/>
<pinref part="LED_R3C2" gate="G$1" pin="E"/>
<wire x1="233.68" y1="-10.16" x2="198.12" y2="-10.16" width="0.1524" layer="91"/>
<wire x1="198.12" y1="-10.16" x2="198.12" y2="53.34" width="0.1524" layer="91"/>
<junction x="198.12" y="53.34"/>
<pinref part="CN1" gate="-39" pin="S"/>
</segment>
</net>
<net name="COL2_F" class="0">
<segment>
<pinref part="LED_R1C2" gate="G$1" pin="F"/>
<wire x1="175.26" y1="114.3" x2="200.66" y2="114.3" width="0.1524" layer="91"/>
<label x="177.8" y="114.3" size="1.27" layer="95"/>
<pinref part="LED_R2C2" gate="G$1" pin="F"/>
<wire x1="200.66" y1="114.3" x2="233.68" y2="114.3" width="0.1524" layer="91"/>
<wire x1="233.68" y1="50.8" x2="200.66" y2="50.8" width="0.1524" layer="91"/>
<wire x1="200.66" y1="50.8" x2="200.66" y2="114.3" width="0.1524" layer="91"/>
<junction x="200.66" y="114.3"/>
<pinref part="LED_R3C2" gate="G$1" pin="F"/>
<wire x1="233.68" y1="-12.7" x2="200.66" y2="-12.7" width="0.1524" layer="91"/>
<wire x1="200.66" y1="-12.7" x2="200.66" y2="50.8" width="0.1524" layer="91"/>
<junction x="200.66" y="50.8"/>
<pinref part="CN1" gate="-40" pin="S"/>
</segment>
</net>
<net name="COL2_G" class="0">
<segment>
<pinref part="LED_R1C2" gate="G$1" pin="G"/>
<wire x1="175.26" y1="111.76" x2="203.2" y2="111.76" width="0.1524" layer="91"/>
<label x="177.8" y="111.76" size="1.27" layer="95"/>
<pinref part="LED_R2C2" gate="G$1" pin="G"/>
<wire x1="203.2" y1="111.76" x2="233.68" y2="111.76" width="0.1524" layer="91"/>
<wire x1="233.68" y1="48.26" x2="203.2" y2="48.26" width="0.1524" layer="91"/>
<wire x1="203.2" y1="48.26" x2="203.2" y2="111.76" width="0.1524" layer="91"/>
<junction x="203.2" y="111.76"/>
<pinref part="LED_R3C2" gate="G$1" pin="G"/>
<wire x1="233.68" y1="-15.24" x2="203.2" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="203.2" y1="-15.24" x2="203.2" y2="48.26" width="0.1524" layer="91"/>
<junction x="203.2" y="48.26"/>
<pinref part="CN1" gate="-25" pin="S"/>
</segment>
</net>
<net name="COL2_H" class="0">
<segment>
<pinref part="LED_R1C2" gate="G$1" pin="H"/>
<wire x1="175.26" y1="109.22" x2="205.74" y2="109.22" width="0.1524" layer="91"/>
<label x="177.8" y="109.22" size="1.27" layer="95"/>
<pinref part="LED_R2C2" gate="G$1" pin="H"/>
<wire x1="205.74" y1="109.22" x2="233.68" y2="109.22" width="0.1524" layer="91"/>
<wire x1="233.68" y1="45.72" x2="205.74" y2="45.72" width="0.1524" layer="91"/>
<wire x1="205.74" y1="45.72" x2="205.74" y2="109.22" width="0.1524" layer="91"/>
<junction x="205.74" y="109.22"/>
<pinref part="LED_R3C2" gate="G$1" pin="H"/>
<wire x1="233.68" y1="-17.78" x2="205.74" y2="-17.78" width="0.1524" layer="91"/>
<wire x1="205.74" y1="-17.78" x2="205.74" y2="45.72" width="0.1524" layer="91"/>
<junction x="205.74" y="45.72"/>
<pinref part="CN1" gate="-29" pin="S"/>
</segment>
</net>
<net name="COL2_K" class="0">
<segment>
<pinref part="LED_R1C2" gate="G$1" pin="K"/>
<wire x1="175.26" y1="106.68" x2="208.28" y2="106.68" width="0.1524" layer="91"/>
<label x="177.8" y="106.68" size="1.27" layer="95"/>
<pinref part="LED_R2C2" gate="G$1" pin="K"/>
<wire x1="208.28" y1="106.68" x2="233.68" y2="106.68" width="0.1524" layer="91"/>
<wire x1="233.68" y1="43.18" x2="208.28" y2="43.18" width="0.1524" layer="91"/>
<wire x1="208.28" y1="43.18" x2="208.28" y2="106.68" width="0.1524" layer="91"/>
<junction x="208.28" y="106.68"/>
<pinref part="LED_R3C2" gate="G$1" pin="K"/>
<wire x1="233.68" y1="-20.32" x2="208.28" y2="-20.32" width="0.1524" layer="91"/>
<wire x1="208.28" y1="-20.32" x2="208.28" y2="43.18" width="0.1524" layer="91"/>
<junction x="208.28" y="43.18"/>
<pinref part="CN1" gate="-30" pin="S"/>
</segment>
</net>
<net name="COL2_M" class="0">
<segment>
<pinref part="LED_R1C2" gate="G$1" pin="M"/>
<wire x1="175.26" y1="104.14" x2="210.82" y2="104.14" width="0.1524" layer="91"/>
<label x="177.8" y="104.14" size="1.27" layer="95"/>
<pinref part="LED_R2C2" gate="G$1" pin="M"/>
<wire x1="210.82" y1="104.14" x2="233.68" y2="104.14" width="0.1524" layer="91"/>
<wire x1="233.68" y1="40.64" x2="210.82" y2="40.64" width="0.1524" layer="91"/>
<wire x1="210.82" y1="40.64" x2="210.82" y2="104.14" width="0.1524" layer="91"/>
<junction x="210.82" y="104.14"/>
<pinref part="LED_R3C2" gate="G$1" pin="M"/>
<wire x1="233.68" y1="-22.86" x2="210.82" y2="-22.86" width="0.1524" layer="91"/>
<wire x1="210.82" y1="-22.86" x2="210.82" y2="40.64" width="0.1524" layer="91"/>
<junction x="210.82" y="40.64"/>
<pinref part="CN1" gate="-31" pin="S"/>
</segment>
</net>
<net name="COL2_N" class="0">
<segment>
<pinref part="LED_R1C2" gate="G$1" pin="N"/>
<wire x1="175.26" y1="101.6" x2="213.36" y2="101.6" width="0.1524" layer="91"/>
<label x="177.8" y="101.6" size="1.27" layer="95"/>
<pinref part="LED_R2C2" gate="G$1" pin="N"/>
<wire x1="213.36" y1="101.6" x2="233.68" y2="101.6" width="0.1524" layer="91"/>
<wire x1="233.68" y1="38.1" x2="213.36" y2="38.1" width="0.1524" layer="91"/>
<wire x1="213.36" y1="38.1" x2="213.36" y2="101.6" width="0.1524" layer="91"/>
<junction x="213.36" y="101.6"/>
<pinref part="LED_R3C2" gate="G$1" pin="N"/>
<wire x1="233.68" y1="-25.4" x2="213.36" y2="-25.4" width="0.1524" layer="91"/>
<wire x1="213.36" y1="-25.4" x2="213.36" y2="38.1" width="0.1524" layer="91"/>
<junction x="213.36" y="38.1"/>
<pinref part="CN1" gate="-34" pin="S"/>
</segment>
</net>
<net name="COL2_P" class="0">
<segment>
<pinref part="LED_R1C2" gate="G$1" pin="P"/>
<wire x1="175.26" y1="99.06" x2="215.9" y2="99.06" width="0.1524" layer="91"/>
<label x="177.8" y="99.06" size="1.27" layer="95"/>
<pinref part="LED_R2C2" gate="G$1" pin="P"/>
<wire x1="215.9" y1="99.06" x2="233.68" y2="99.06" width="0.1524" layer="91"/>
<wire x1="233.68" y1="35.56" x2="215.9" y2="35.56" width="0.1524" layer="91"/>
<wire x1="215.9" y1="35.56" x2="215.9" y2="99.06" width="0.1524" layer="91"/>
<junction x="215.9" y="99.06"/>
<pinref part="LED_R3C2" gate="G$1" pin="P"/>
<wire x1="233.68" y1="-27.94" x2="215.9" y2="-27.94" width="0.1524" layer="91"/>
<wire x1="215.9" y1="-27.94" x2="215.9" y2="35.56" width="0.1524" layer="91"/>
<junction x="215.9" y="35.56"/>
<pinref part="CN1" gate="-36" pin="S"/>
</segment>
</net>
<net name="COL2_R" class="0">
<segment>
<pinref part="LED_R1C2" gate="G$1" pin="R"/>
<wire x1="175.26" y1="96.52" x2="218.44" y2="96.52" width="0.1524" layer="91"/>
<label x="177.8" y="96.52" size="1.27" layer="95"/>
<pinref part="LED_R2C2" gate="G$1" pin="R"/>
<wire x1="218.44" y1="96.52" x2="233.68" y2="96.52" width="0.1524" layer="91"/>
<wire x1="233.68" y1="33.02" x2="218.44" y2="33.02" width="0.1524" layer="91"/>
<wire x1="218.44" y1="33.02" x2="218.44" y2="96.52" width="0.1524" layer="91"/>
<junction x="218.44" y="96.52"/>
<pinref part="LED_R3C2" gate="G$1" pin="R"/>
<wire x1="233.68" y1="-30.48" x2="218.44" y2="-30.48" width="0.1524" layer="91"/>
<wire x1="218.44" y1="-30.48" x2="218.44" y2="33.02" width="0.1524" layer="91"/>
<junction x="218.44" y="33.02"/>
<pinref part="CN1" gate="-37" pin="S"/>
</segment>
</net>
<net name="COL2_S" class="0">
<segment>
<pinref part="LED_R1C2" gate="G$1" pin="S"/>
<wire x1="175.26" y1="93.98" x2="220.98" y2="93.98" width="0.1524" layer="91"/>
<label x="177.8" y="93.98" size="1.27" layer="95"/>
<pinref part="LED_R2C2" gate="G$1" pin="S"/>
<wire x1="220.98" y1="93.98" x2="233.68" y2="93.98" width="0.1524" layer="91"/>
<wire x1="233.68" y1="30.48" x2="220.98" y2="30.48" width="0.1524" layer="91"/>
<wire x1="220.98" y1="30.48" x2="220.98" y2="93.98" width="0.1524" layer="91"/>
<junction x="220.98" y="93.98"/>
<pinref part="LED_R3C2" gate="G$1" pin="S"/>
<wire x1="233.68" y1="-33.02" x2="220.98" y2="-33.02" width="0.1524" layer="91"/>
<wire x1="220.98" y1="-33.02" x2="220.98" y2="30.48" width="0.1524" layer="91"/>
<junction x="220.98" y="30.48"/>
<pinref part="CN1" gate="-27" pin="S"/>
</segment>
</net>
<net name="COL2_T" class="0">
<segment>
<pinref part="LED_R1C2" gate="G$1" pin="T"/>
<wire x1="175.26" y1="91.44" x2="223.52" y2="91.44" width="0.1524" layer="91"/>
<label x="177.8" y="91.44" size="1.27" layer="95"/>
<pinref part="LED_R2C2" gate="G$1" pin="T"/>
<wire x1="223.52" y1="91.44" x2="233.68" y2="91.44" width="0.1524" layer="91"/>
<wire x1="233.68" y1="27.94" x2="223.52" y2="27.94" width="0.1524" layer="91"/>
<wire x1="223.52" y1="27.94" x2="223.52" y2="91.44" width="0.1524" layer="91"/>
<junction x="223.52" y="91.44"/>
<pinref part="LED_R3C2" gate="G$1" pin="T"/>
<wire x1="233.68" y1="-35.56" x2="223.52" y2="-35.56" width="0.1524" layer="91"/>
<wire x1="223.52" y1="-35.56" x2="223.52" y2="27.94" width="0.1524" layer="91"/>
<junction x="223.52" y="27.94"/>
<pinref part="CN1" gate="-26" pin="S"/>
</segment>
</net>
<net name="COL2_U" class="0">
<segment>
<pinref part="LED_R1C2" gate="G$1" pin="U"/>
<wire x1="175.26" y1="88.9" x2="226.06" y2="88.9" width="0.1524" layer="91"/>
<label x="177.8" y="88.9" size="1.27" layer="95"/>
<pinref part="LED_R2C2" gate="G$1" pin="U"/>
<wire x1="226.06" y1="88.9" x2="233.68" y2="88.9" width="0.1524" layer="91"/>
<wire x1="233.68" y1="25.4" x2="226.06" y2="25.4" width="0.1524" layer="91"/>
<wire x1="226.06" y1="25.4" x2="226.06" y2="88.9" width="0.1524" layer="91"/>
<junction x="226.06" y="88.9"/>
<pinref part="LED_R3C2" gate="G$1" pin="U"/>
<wire x1="233.68" y1="-38.1" x2="226.06" y2="-38.1" width="0.1524" layer="91"/>
<wire x1="226.06" y1="-38.1" x2="226.06" y2="25.4" width="0.1524" layer="91"/>
<junction x="226.06" y="25.4"/>
<pinref part="CN1" gate="-28" pin="S"/>
</segment>
</net>
<net name="COL3_A" class="0">
<segment>
<pinref part="LED_R1C3" gate="G$1" pin="A"/>
<wire x1="307.34" y1="127" x2="320.04" y2="127" width="0.1524" layer="91"/>
<label x="309.88" y="127" size="1.27" layer="95"/>
<pinref part="LED_R2C3" gate="G$1" pin="A"/>
<wire x1="320.04" y1="127" x2="365.76" y2="127" width="0.1524" layer="91"/>
<wire x1="365.76" y1="63.5" x2="320.04" y2="63.5" width="0.1524" layer="91"/>
<wire x1="320.04" y1="63.5" x2="320.04" y2="127" width="0.1524" layer="91"/>
<junction x="320.04" y="127"/>
<pinref part="LED_R3C3" gate="G$1" pin="A"/>
<wire x1="365.76" y1="0" x2="320.04" y2="0" width="0.1524" layer="91"/>
<wire x1="320.04" y1="0" x2="320.04" y2="63.5" width="0.1524" layer="91"/>
<junction x="320.04" y="63.5"/>
<pinref part="CN3" gate="-29" pin="S"/>
</segment>
</net>
<net name="COL3_B" class="0">
<segment>
<pinref part="LED_R1C3" gate="G$1" pin="B"/>
<wire x1="307.34" y1="124.46" x2="322.58" y2="124.46" width="0.1524" layer="91"/>
<label x="309.88" y="124.46" size="1.27" layer="95"/>
<pinref part="LED_R2C3" gate="G$1" pin="B"/>
<wire x1="322.58" y1="124.46" x2="365.76" y2="124.46" width="0.1524" layer="91"/>
<wire x1="365.76" y1="60.96" x2="322.58" y2="60.96" width="0.1524" layer="91"/>
<wire x1="322.58" y1="60.96" x2="322.58" y2="124.46" width="0.1524" layer="91"/>
<junction x="322.58" y="124.46"/>
<pinref part="LED_R3C3" gate="G$1" pin="B"/>
<wire x1="365.76" y1="-2.54" x2="322.58" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="322.58" y1="-2.54" x2="322.58" y2="60.96" width="0.1524" layer="91"/>
<junction x="322.58" y="60.96"/>
<pinref part="CN3" gate="-36" pin="S"/>
</segment>
</net>
<net name="COL3_C" class="0">
<segment>
<pinref part="LED_R1C3" gate="G$1" pin="C"/>
<wire x1="307.34" y1="121.92" x2="325.12" y2="121.92" width="0.1524" layer="91"/>
<label x="309.88" y="121.92" size="1.27" layer="95"/>
<pinref part="LED_R2C3" gate="G$1" pin="C"/>
<wire x1="325.12" y1="121.92" x2="365.76" y2="121.92" width="0.1524" layer="91"/>
<wire x1="365.76" y1="58.42" x2="325.12" y2="58.42" width="0.1524" layer="91"/>
<wire x1="325.12" y1="58.42" x2="325.12" y2="121.92" width="0.1524" layer="91"/>
<junction x="325.12" y="121.92"/>
<pinref part="LED_R3C3" gate="G$1" pin="C"/>
<wire x1="365.76" y1="-5.08" x2="325.12" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="325.12" y1="-5.08" x2="325.12" y2="58.42" width="0.1524" layer="91"/>
<junction x="325.12" y="58.42"/>
<pinref part="CN3" gate="-34" pin="S"/>
</segment>
</net>
<net name="COL3_D" class="0">
<segment>
<pinref part="LED_R1C3" gate="G$1" pin="D"/>
<wire x1="307.34" y1="119.38" x2="327.66" y2="119.38" width="0.1524" layer="91"/>
<label x="309.88" y="119.38" size="1.27" layer="95"/>
<pinref part="LED_R2C3" gate="G$1" pin="D"/>
<wire x1="327.66" y1="119.38" x2="365.76" y2="119.38" width="0.1524" layer="91"/>
<wire x1="365.76" y1="55.88" x2="327.66" y2="55.88" width="0.1524" layer="91"/>
<wire x1="327.66" y1="55.88" x2="327.66" y2="119.38" width="0.1524" layer="91"/>
<junction x="327.66" y="119.38"/>
<pinref part="LED_R3C3" gate="G$1" pin="D"/>
<wire x1="365.76" y1="-7.62" x2="327.66" y2="-7.62" width="0.1524" layer="91"/>
<wire x1="327.66" y1="-7.62" x2="327.66" y2="55.88" width="0.1524" layer="91"/>
<junction x="327.66" y="55.88"/>
<pinref part="CN3" gate="-39" pin="S"/>
</segment>
</net>
<net name="COL3_E" class="0">
<segment>
<pinref part="LED_R1C3" gate="G$1" pin="E"/>
<wire x1="307.34" y1="116.84" x2="330.2" y2="116.84" width="0.1524" layer="91"/>
<label x="309.88" y="116.84" size="1.27" layer="95"/>
<pinref part="LED_R2C3" gate="G$1" pin="E"/>
<wire x1="330.2" y1="116.84" x2="365.76" y2="116.84" width="0.1524" layer="91"/>
<wire x1="365.76" y1="53.34" x2="330.2" y2="53.34" width="0.1524" layer="91"/>
<wire x1="330.2" y1="53.34" x2="330.2" y2="116.84" width="0.1524" layer="91"/>
<junction x="330.2" y="116.84"/>
<pinref part="LED_R3C3" gate="G$1" pin="E"/>
<wire x1="365.76" y1="-10.16" x2="330.2" y2="-10.16" width="0.1524" layer="91"/>
<wire x1="330.2" y1="-10.16" x2="330.2" y2="53.34" width="0.1524" layer="91"/>
<junction x="330.2" y="53.34"/>
<pinref part="CN3" gate="-38" pin="S"/>
</segment>
</net>
<net name="COL3_F" class="0">
<segment>
<pinref part="LED_R1C3" gate="G$1" pin="F"/>
<wire x1="307.34" y1="114.3" x2="332.74" y2="114.3" width="0.1524" layer="91"/>
<label x="309.88" y="114.3" size="1.27" layer="95"/>
<pinref part="LED_R2C3" gate="G$1" pin="F"/>
<wire x1="332.74" y1="114.3" x2="365.76" y2="114.3" width="0.1524" layer="91"/>
<wire x1="365.76" y1="50.8" x2="332.74" y2="50.8" width="0.1524" layer="91"/>
<wire x1="332.74" y1="50.8" x2="332.74" y2="114.3" width="0.1524" layer="91"/>
<junction x="332.74" y="114.3"/>
<pinref part="LED_R3C3" gate="G$1" pin="F"/>
<wire x1="365.76" y1="-12.7" x2="332.74" y2="-12.7" width="0.1524" layer="91"/>
<wire x1="332.74" y1="-12.7" x2="332.74" y2="50.8" width="0.1524" layer="91"/>
<junction x="332.74" y="50.8"/>
<pinref part="CN3" gate="-37" pin="S"/>
</segment>
</net>
<net name="COL3_G" class="0">
<segment>
<pinref part="LED_R1C3" gate="G$1" pin="G"/>
<wire x1="307.34" y1="111.76" x2="335.28" y2="111.76" width="0.1524" layer="91"/>
<label x="309.88" y="111.76" size="1.27" layer="95"/>
<pinref part="LED_R2C3" gate="G$1" pin="G"/>
<wire x1="335.28" y1="111.76" x2="365.76" y2="111.76" width="0.1524" layer="91"/>
<wire x1="365.76" y1="48.26" x2="335.28" y2="48.26" width="0.1524" layer="91"/>
<wire x1="335.28" y1="48.26" x2="335.28" y2="111.76" width="0.1524" layer="91"/>
<junction x="335.28" y="111.76"/>
<pinref part="LED_R3C3" gate="G$1" pin="G"/>
<wire x1="365.76" y1="-15.24" x2="335.28" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="335.28" y1="-15.24" x2="335.28" y2="48.26" width="0.1524" layer="91"/>
<junction x="335.28" y="48.26"/>
<pinref part="CN3" gate="-28" pin="S"/>
</segment>
</net>
<net name="COL3_H" class="0">
<segment>
<pinref part="LED_R1C3" gate="G$1" pin="H"/>
<wire x1="307.34" y1="109.22" x2="337.82" y2="109.22" width="0.1524" layer="91"/>
<label x="309.88" y="109.22" size="1.27" layer="95"/>
<pinref part="LED_R2C3" gate="G$1" pin="H"/>
<wire x1="337.82" y1="109.22" x2="365.76" y2="109.22" width="0.1524" layer="91"/>
<wire x1="365.76" y1="45.72" x2="337.82" y2="45.72" width="0.1524" layer="91"/>
<wire x1="337.82" y1="45.72" x2="337.82" y2="109.22" width="0.1524" layer="91"/>
<junction x="337.82" y="109.22"/>
<pinref part="LED_R3C3" gate="G$1" pin="H"/>
<wire x1="365.76" y1="-17.78" x2="337.82" y2="-17.78" width="0.1524" layer="91"/>
<wire x1="337.82" y1="-17.78" x2="337.82" y2="45.72" width="0.1524" layer="91"/>
<junction x="337.82" y="45.72"/>
<pinref part="CN3" gate="-32" pin="S"/>
</segment>
</net>
<net name="COL3_K" class="0">
<segment>
<pinref part="LED_R1C3" gate="G$1" pin="K"/>
<wire x1="307.34" y1="106.68" x2="340.36" y2="106.68" width="0.1524" layer="91"/>
<label x="309.88" y="106.68" size="1.27" layer="95"/>
<pinref part="LED_R2C3" gate="G$1" pin="K"/>
<wire x1="340.36" y1="106.68" x2="365.76" y2="106.68" width="0.1524" layer="91"/>
<wire x1="365.76" y1="43.18" x2="340.36" y2="43.18" width="0.1524" layer="91"/>
<wire x1="340.36" y1="43.18" x2="340.36" y2="106.68" width="0.1524" layer="91"/>
<junction x="340.36" y="106.68"/>
<pinref part="LED_R3C3" gate="G$1" pin="K"/>
<wire x1="365.76" y1="-20.32" x2="340.36" y2="-20.32" width="0.1524" layer="91"/>
<wire x1="340.36" y1="-20.32" x2="340.36" y2="43.18" width="0.1524" layer="91"/>
<junction x="340.36" y="43.18"/>
<pinref part="CN3" gate="-31" pin="S"/>
</segment>
</net>
<net name="COL3_M" class="0">
<segment>
<pinref part="LED_R1C3" gate="G$1" pin="M"/>
<wire x1="307.34" y1="104.14" x2="342.9" y2="104.14" width="0.1524" layer="91"/>
<label x="309.88" y="104.14" size="1.27" layer="95"/>
<pinref part="LED_R2C3" gate="G$1" pin="M"/>
<wire x1="342.9" y1="104.14" x2="365.76" y2="104.14" width="0.1524" layer="91"/>
<wire x1="365.76" y1="40.64" x2="342.9" y2="40.64" width="0.1524" layer="91"/>
<wire x1="342.9" y1="40.64" x2="342.9" y2="104.14" width="0.1524" layer="91"/>
<junction x="342.9" y="104.14"/>
<pinref part="LED_R3C3" gate="G$1" pin="M"/>
<wire x1="365.76" y1="-22.86" x2="342.9" y2="-22.86" width="0.1524" layer="91"/>
<wire x1="342.9" y1="-22.86" x2="342.9" y2="40.64" width="0.1524" layer="91"/>
<junction x="342.9" y="40.64"/>
<pinref part="CN3" gate="-30" pin="S"/>
</segment>
</net>
<net name="COL3_N" class="0">
<segment>
<pinref part="LED_R1C3" gate="G$1" pin="N"/>
<wire x1="307.34" y1="101.6" x2="345.44" y2="101.6" width="0.1524" layer="91"/>
<label x="309.88" y="101.6" size="1.27" layer="95"/>
<pinref part="LED_R2C3" gate="G$1" pin="N"/>
<wire x1="345.44" y1="101.6" x2="365.76" y2="101.6" width="0.1524" layer="91"/>
<wire x1="365.76" y1="38.1" x2="345.44" y2="38.1" width="0.1524" layer="91"/>
<wire x1="345.44" y1="38.1" x2="345.44" y2="101.6" width="0.1524" layer="91"/>
<junction x="345.44" y="101.6"/>
<pinref part="LED_R3C3" gate="G$1" pin="N"/>
<wire x1="365.76" y1="-25.4" x2="345.44" y2="-25.4" width="0.1524" layer="91"/>
<wire x1="345.44" y1="-25.4" x2="345.44" y2="38.1" width="0.1524" layer="91"/>
<junction x="345.44" y="38.1"/>
<pinref part="CN3" gate="-35" pin="S"/>
</segment>
</net>
<net name="COL3_P" class="0">
<segment>
<pinref part="LED_R1C3" gate="G$1" pin="P"/>
<wire x1="307.34" y1="99.06" x2="347.98" y2="99.06" width="0.1524" layer="91"/>
<label x="309.88" y="99.06" size="1.27" layer="95"/>
<pinref part="LED_R2C3" gate="G$1" pin="P"/>
<wire x1="347.98" y1="99.06" x2="365.76" y2="99.06" width="0.1524" layer="91"/>
<wire x1="365.76" y1="35.56" x2="347.98" y2="35.56" width="0.1524" layer="91"/>
<wire x1="347.98" y1="35.56" x2="347.98" y2="99.06" width="0.1524" layer="91"/>
<junction x="347.98" y="99.06"/>
<pinref part="LED_R3C3" gate="G$1" pin="P"/>
<wire x1="365.76" y1="-27.94" x2="347.98" y2="-27.94" width="0.1524" layer="91"/>
<wire x1="347.98" y1="-27.94" x2="347.98" y2="35.56" width="0.1524" layer="91"/>
<junction x="347.98" y="35.56"/>
<pinref part="CN3" gate="-33" pin="S"/>
</segment>
</net>
<net name="COL3_R" class="0">
<segment>
<pinref part="LED_R1C3" gate="G$1" pin="R"/>
<wire x1="307.34" y1="96.52" x2="350.52" y2="96.52" width="0.1524" layer="91"/>
<label x="309.88" y="96.52" size="1.27" layer="95"/>
<pinref part="LED_R2C3" gate="G$1" pin="R"/>
<wire x1="350.52" y1="96.52" x2="365.76" y2="96.52" width="0.1524" layer="91"/>
<wire x1="365.76" y1="33.02" x2="350.52" y2="33.02" width="0.1524" layer="91"/>
<wire x1="350.52" y1="33.02" x2="350.52" y2="96.52" width="0.1524" layer="91"/>
<junction x="350.52" y="96.52"/>
<pinref part="LED_R3C3" gate="G$1" pin="R"/>
<wire x1="365.76" y1="-30.48" x2="350.52" y2="-30.48" width="0.1524" layer="91"/>
<wire x1="350.52" y1="-30.48" x2="350.52" y2="33.02" width="0.1524" layer="91"/>
<junction x="350.52" y="33.02"/>
<pinref part="CN3" gate="-40" pin="S"/>
</segment>
</net>
<net name="COL3_S" class="0">
<segment>
<pinref part="LED_R1C3" gate="G$1" pin="S"/>
<wire x1="307.34" y1="93.98" x2="353.06" y2="93.98" width="0.1524" layer="91"/>
<label x="309.88" y="93.98" size="1.27" layer="95"/>
<pinref part="LED_R2C3" gate="G$1" pin="S"/>
<wire x1="353.06" y1="93.98" x2="365.76" y2="93.98" width="0.1524" layer="91"/>
<wire x1="365.76" y1="30.48" x2="353.06" y2="30.48" width="0.1524" layer="91"/>
<wire x1="353.06" y1="30.48" x2="353.06" y2="93.98" width="0.1524" layer="91"/>
<junction x="353.06" y="93.98"/>
<pinref part="LED_R3C3" gate="G$1" pin="S"/>
<wire x1="365.76" y1="-33.02" x2="353.06" y2="-33.02" width="0.1524" layer="91"/>
<wire x1="353.06" y1="-33.02" x2="353.06" y2="30.48" width="0.1524" layer="91"/>
<junction x="353.06" y="30.48"/>
<pinref part="CN3" gate="-26" pin="S"/>
</segment>
</net>
<net name="COL3_T" class="0">
<segment>
<pinref part="LED_R1C3" gate="G$1" pin="T"/>
<wire x1="307.34" y1="91.44" x2="355.6" y2="91.44" width="0.1524" layer="91"/>
<label x="309.88" y="91.44" size="1.27" layer="95"/>
<pinref part="LED_R2C3" gate="G$1" pin="T"/>
<wire x1="355.6" y1="91.44" x2="365.76" y2="91.44" width="0.1524" layer="91"/>
<wire x1="365.76" y1="27.94" x2="355.6" y2="27.94" width="0.1524" layer="91"/>
<wire x1="355.6" y1="27.94" x2="355.6" y2="91.44" width="0.1524" layer="91"/>
<junction x="355.6" y="91.44"/>
<pinref part="LED_R3C3" gate="G$1" pin="T"/>
<wire x1="365.76" y1="-35.56" x2="355.6" y2="-35.56" width="0.1524" layer="91"/>
<wire x1="355.6" y1="-35.56" x2="355.6" y2="27.94" width="0.1524" layer="91"/>
<junction x="355.6" y="27.94"/>
<pinref part="CN3" gate="-27" pin="S"/>
</segment>
</net>
<net name="COL3_U" class="0">
<segment>
<pinref part="LED_R1C3" gate="G$1" pin="U"/>
<wire x1="307.34" y1="88.9" x2="358.14" y2="88.9" width="0.1524" layer="91"/>
<label x="309.88" y="88.9" size="1.27" layer="95"/>
<pinref part="LED_R2C3" gate="G$1" pin="U"/>
<wire x1="358.14" y1="88.9" x2="365.76" y2="88.9" width="0.1524" layer="91"/>
<wire x1="365.76" y1="25.4" x2="358.14" y2="25.4" width="0.1524" layer="91"/>
<wire x1="358.14" y1="25.4" x2="358.14" y2="88.9" width="0.1524" layer="91"/>
<junction x="358.14" y="88.9"/>
<pinref part="LED_R3C3" gate="G$1" pin="U"/>
<wire x1="365.76" y1="-38.1" x2="358.14" y2="-38.1" width="0.1524" layer="91"/>
<wire x1="358.14" y1="-38.1" x2="358.14" y2="25.4" width="0.1524" layer="91"/>
<junction x="358.14" y="25.4"/>
<pinref part="CN3" gate="-25" pin="S"/>
</segment>
</net>
<net name="COL4_A" class="0">
<segment>
<pinref part="LED_R1C4" gate="G$1" pin="A"/>
<wire x1="-86.36" y1="-78.74" x2="-73.66" y2="-78.74" width="0.1524" layer="91"/>
<label x="-83.82" y="-78.74" size="1.27" layer="95"/>
<pinref part="LED_R2C4" gate="G$1" pin="A"/>
<wire x1="-73.66" y1="-78.74" x2="-27.94" y2="-78.74" width="0.1524" layer="91"/>
<wire x1="-27.94" y1="-142.24" x2="-73.66" y2="-142.24" width="0.1524" layer="91"/>
<wire x1="-73.66" y1="-142.24" x2="-73.66" y2="-78.74" width="0.1524" layer="91"/>
<junction x="-73.66" y="-78.74"/>
<pinref part="LED_R3C4" gate="G$1" pin="A"/>
<wire x1="-27.94" y1="-205.74" x2="-73.66" y2="-205.74" width="0.1524" layer="91"/>
<wire x1="-73.66" y1="-205.74" x2="-73.66" y2="-142.24" width="0.1524" layer="91"/>
<junction x="-73.66" y="-142.24"/>
<pinref part="CN2" gate="-8" pin="S"/>
</segment>
</net>
<net name="COL4_B" class="0">
<segment>
<pinref part="LED_R1C4" gate="G$1" pin="B"/>
<wire x1="-86.36" y1="-81.28" x2="-71.12" y2="-81.28" width="0.1524" layer="91"/>
<label x="-83.82" y="-81.28" size="1.27" layer="95"/>
<pinref part="LED_R2C4" gate="G$1" pin="B"/>
<wire x1="-71.12" y1="-81.28" x2="-27.94" y2="-81.28" width="0.1524" layer="91"/>
<wire x1="-27.94" y1="-144.78" x2="-71.12" y2="-144.78" width="0.1524" layer="91"/>
<wire x1="-71.12" y1="-144.78" x2="-71.12" y2="-81.28" width="0.1524" layer="91"/>
<junction x="-71.12" y="-81.28"/>
<pinref part="LED_R3C4" gate="G$1" pin="B"/>
<wire x1="-27.94" y1="-208.28" x2="-71.12" y2="-208.28" width="0.1524" layer="91"/>
<wire x1="-71.12" y1="-208.28" x2="-71.12" y2="-144.78" width="0.1524" layer="91"/>
<junction x="-71.12" y="-144.78"/>
<pinref part="CN2" gate="-9" pin="S"/>
</segment>
</net>
<net name="COL4\_C" class="0">
<segment>
<pinref part="LED_R1C4" gate="G$1" pin="C"/>
<wire x1="-86.36" y1="-83.82" x2="-68.58" y2="-83.82" width="0.1524" layer="91"/>
<label x="-83.82" y="-83.82" size="1.27" layer="95"/>
<pinref part="LED_R2C4" gate="G$1" pin="C"/>
<wire x1="-68.58" y1="-83.82" x2="-27.94" y2="-83.82" width="0.1524" layer="91"/>
<wire x1="-27.94" y1="-147.32" x2="-68.58" y2="-147.32" width="0.1524" layer="91"/>
<wire x1="-68.58" y1="-147.32" x2="-68.58" y2="-83.82" width="0.1524" layer="91"/>
<junction x="-68.58" y="-83.82"/>
<pinref part="LED_R3C4" gate="G$1" pin="C"/>
<wire x1="-27.94" y1="-210.82" x2="-68.58" y2="-210.82" width="0.1524" layer="91"/>
<wire x1="-68.58" y1="-210.82" x2="-68.58" y2="-147.32" width="0.1524" layer="91"/>
<junction x="-68.58" y="-147.32"/>
<pinref part="CN2" gate="-11" pin="S"/>
</segment>
</net>
<net name="COL4_D" class="0">
<segment>
<pinref part="LED_R1C4" gate="G$1" pin="D"/>
<wire x1="-86.36" y1="-86.36" x2="-66.04" y2="-86.36" width="0.1524" layer="91"/>
<label x="-83.82" y="-86.36" size="1.27" layer="95"/>
<pinref part="LED_R2C4" gate="G$1" pin="D"/>
<wire x1="-66.04" y1="-86.36" x2="-27.94" y2="-86.36" width="0.1524" layer="91"/>
<wire x1="-27.94" y1="-149.86" x2="-66.04" y2="-149.86" width="0.1524" layer="91"/>
<wire x1="-66.04" y1="-149.86" x2="-66.04" y2="-86.36" width="0.1524" layer="91"/>
<junction x="-66.04" y="-86.36"/>
<pinref part="LED_R3C4" gate="G$1" pin="D"/>
<wire x1="-27.94" y1="-213.36" x2="-66.04" y2="-213.36" width="0.1524" layer="91"/>
<wire x1="-66.04" y1="-213.36" x2="-66.04" y2="-149.86" width="0.1524" layer="91"/>
<junction x="-66.04" y="-149.86"/>
<pinref part="CN2" gate="-14" pin="S"/>
</segment>
</net>
<net name="COL4_E" class="0">
<segment>
<pinref part="LED_R1C4" gate="G$1" pin="E"/>
<wire x1="-86.36" y1="-88.9" x2="-63.5" y2="-88.9" width="0.1524" layer="91"/>
<label x="-83.82" y="-88.9" size="1.27" layer="95"/>
<pinref part="LED_R2C4" gate="G$1" pin="E"/>
<wire x1="-63.5" y1="-88.9" x2="-27.94" y2="-88.9" width="0.1524" layer="91"/>
<wire x1="-27.94" y1="-152.4" x2="-63.5" y2="-152.4" width="0.1524" layer="91"/>
<wire x1="-63.5" y1="-152.4" x2="-63.5" y2="-88.9" width="0.1524" layer="91"/>
<junction x="-63.5" y="-88.9"/>
<pinref part="LED_R3C4" gate="G$1" pin="E"/>
<wire x1="-27.94" y1="-215.9" x2="-63.5" y2="-215.9" width="0.1524" layer="91"/>
<wire x1="-63.5" y1="-215.9" x2="-63.5" y2="-152.4" width="0.1524" layer="91"/>
<junction x="-63.5" y="-152.4"/>
<pinref part="CN2" gate="-15" pin="S"/>
</segment>
</net>
<net name="COL4_F" class="0">
<segment>
<pinref part="LED_R1C4" gate="G$1" pin="F"/>
<wire x1="-86.36" y1="-91.44" x2="-60.96" y2="-91.44" width="0.1524" layer="91"/>
<label x="-83.82" y="-91.44" size="1.27" layer="95"/>
<pinref part="LED_R2C4" gate="G$1" pin="F"/>
<wire x1="-60.96" y1="-91.44" x2="-27.94" y2="-91.44" width="0.1524" layer="91"/>
<wire x1="-27.94" y1="-154.94" x2="-60.96" y2="-154.94" width="0.1524" layer="91"/>
<wire x1="-60.96" y1="-154.94" x2="-60.96" y2="-91.44" width="0.1524" layer="91"/>
<junction x="-60.96" y="-91.44"/>
<pinref part="LED_R3C4" gate="G$1" pin="F"/>
<wire x1="-27.94" y1="-218.44" x2="-60.96" y2="-218.44" width="0.1524" layer="91"/>
<wire x1="-60.96" y1="-218.44" x2="-60.96" y2="-154.94" width="0.1524" layer="91"/>
<junction x="-60.96" y="-154.94"/>
<pinref part="CN2" gate="-16" pin="S"/>
</segment>
</net>
<net name="COL4_G" class="0">
<segment>
<pinref part="LED_R1C4" gate="G$1" pin="G"/>
<wire x1="-86.36" y1="-93.98" x2="-58.42" y2="-93.98" width="0.1524" layer="91"/>
<label x="-83.82" y="-93.98" size="1.27" layer="95"/>
<pinref part="LED_R2C4" gate="G$1" pin="G"/>
<wire x1="-58.42" y1="-93.98" x2="-27.94" y2="-93.98" width="0.1524" layer="91"/>
<wire x1="-27.94" y1="-157.48" x2="-58.42" y2="-157.48" width="0.1524" layer="91"/>
<wire x1="-58.42" y1="-157.48" x2="-58.42" y2="-93.98" width="0.1524" layer="91"/>
<junction x="-58.42" y="-93.98"/>
<pinref part="LED_R3C4" gate="G$1" pin="G"/>
<wire x1="-27.94" y1="-220.98" x2="-58.42" y2="-220.98" width="0.1524" layer="91"/>
<wire x1="-58.42" y1="-220.98" x2="-58.42" y2="-157.48" width="0.1524" layer="91"/>
<junction x="-58.42" y="-157.48"/>
<pinref part="CN2" gate="-1" pin="S"/>
</segment>
</net>
<net name="COL4_H" class="0">
<segment>
<pinref part="LED_R1C4" gate="G$1" pin="H"/>
<wire x1="-86.36" y1="-96.52" x2="-55.88" y2="-96.52" width="0.1524" layer="91"/>
<label x="-83.82" y="-96.52" size="1.27" layer="95"/>
<pinref part="LED_R2C4" gate="G$1" pin="H"/>
<wire x1="-55.88" y1="-96.52" x2="-27.94" y2="-96.52" width="0.1524" layer="91"/>
<wire x1="-27.94" y1="-160.02" x2="-55.88" y2="-160.02" width="0.1524" layer="91"/>
<wire x1="-55.88" y1="-160.02" x2="-55.88" y2="-96.52" width="0.1524" layer="91"/>
<junction x="-55.88" y="-96.52"/>
<pinref part="LED_R3C4" gate="G$1" pin="H"/>
<wire x1="-27.94" y1="-223.52" x2="-55.88" y2="-223.52" width="0.1524" layer="91"/>
<wire x1="-55.88" y1="-223.52" x2="-55.88" y2="-160.02" width="0.1524" layer="91"/>
<junction x="-55.88" y="-160.02"/>
<pinref part="CN2" gate="-5" pin="S"/>
</segment>
</net>
<net name="COL4_K" class="0">
<segment>
<pinref part="LED_R1C4" gate="G$1" pin="K"/>
<wire x1="-86.36" y1="-99.06" x2="-53.34" y2="-99.06" width="0.1524" layer="91"/>
<label x="-83.82" y="-99.06" size="1.27" layer="95"/>
<pinref part="LED_R2C4" gate="G$1" pin="K"/>
<wire x1="-53.34" y1="-99.06" x2="-27.94" y2="-99.06" width="0.1524" layer="91"/>
<wire x1="-27.94" y1="-162.56" x2="-53.34" y2="-162.56" width="0.1524" layer="91"/>
<wire x1="-53.34" y1="-162.56" x2="-53.34" y2="-99.06" width="0.1524" layer="91"/>
<junction x="-53.34" y="-99.06"/>
<pinref part="LED_R3C4" gate="G$1" pin="K"/>
<wire x1="-27.94" y1="-226.06" x2="-53.34" y2="-226.06" width="0.1524" layer="91"/>
<wire x1="-53.34" y1="-226.06" x2="-53.34" y2="-162.56" width="0.1524" layer="91"/>
<junction x="-53.34" y="-162.56"/>
<pinref part="CN2" gate="-6" pin="S"/>
</segment>
</net>
<net name="COL4_M" class="0">
<segment>
<pinref part="LED_R1C4" gate="G$1" pin="M"/>
<wire x1="-86.36" y1="-101.6" x2="-50.8" y2="-101.6" width="0.1524" layer="91"/>
<label x="-83.82" y="-101.6" size="1.27" layer="95"/>
<pinref part="LED_R2C4" gate="G$1" pin="M"/>
<wire x1="-50.8" y1="-101.6" x2="-27.94" y2="-101.6" width="0.1524" layer="91"/>
<wire x1="-27.94" y1="-165.1" x2="-50.8" y2="-165.1" width="0.1524" layer="91"/>
<wire x1="-50.8" y1="-165.1" x2="-50.8" y2="-101.6" width="0.1524" layer="91"/>
<junction x="-50.8" y="-101.6"/>
<pinref part="LED_R3C4" gate="G$1" pin="M"/>
<wire x1="-27.94" y1="-228.6" x2="-50.8" y2="-228.6" width="0.1524" layer="91"/>
<wire x1="-50.8" y1="-228.6" x2="-50.8" y2="-165.1" width="0.1524" layer="91"/>
<junction x="-50.8" y="-165.1"/>
<pinref part="CN2" gate="-7" pin="S"/>
</segment>
</net>
<net name="COL4_N" class="0">
<segment>
<pinref part="LED_R1C4" gate="G$1" pin="N"/>
<wire x1="-86.36" y1="-104.14" x2="-48.26" y2="-104.14" width="0.1524" layer="91"/>
<label x="-83.82" y="-104.14" size="1.27" layer="95"/>
<pinref part="LED_R2C4" gate="G$1" pin="N"/>
<wire x1="-48.26" y1="-104.14" x2="-27.94" y2="-104.14" width="0.1524" layer="91"/>
<wire x1="-27.94" y1="-167.64" x2="-48.26" y2="-167.64" width="0.1524" layer="91"/>
<wire x1="-48.26" y1="-167.64" x2="-48.26" y2="-104.14" width="0.1524" layer="91"/>
<junction x="-48.26" y="-104.14"/>
<pinref part="LED_R3C4" gate="G$1" pin="N"/>
<wire x1="-27.94" y1="-231.14" x2="-48.26" y2="-231.14" width="0.1524" layer="91"/>
<wire x1="-48.26" y1="-231.14" x2="-48.26" y2="-167.64" width="0.1524" layer="91"/>
<junction x="-48.26" y="-167.64"/>
<pinref part="CN2" gate="-10" pin="S"/>
</segment>
</net>
<net name="COL4_P" class="0">
<segment>
<pinref part="LED_R1C4" gate="G$1" pin="P"/>
<wire x1="-86.36" y1="-106.68" x2="-45.72" y2="-106.68" width="0.1524" layer="91"/>
<label x="-83.82" y="-106.68" size="1.27" layer="95"/>
<pinref part="LED_R2C4" gate="G$1" pin="P"/>
<wire x1="-45.72" y1="-106.68" x2="-27.94" y2="-106.68" width="0.1524" layer="91"/>
<wire x1="-27.94" y1="-170.18" x2="-45.72" y2="-170.18" width="0.1524" layer="91"/>
<wire x1="-45.72" y1="-170.18" x2="-45.72" y2="-106.68" width="0.1524" layer="91"/>
<junction x="-45.72" y="-106.68"/>
<pinref part="LED_R3C4" gate="G$1" pin="P"/>
<wire x1="-27.94" y1="-233.68" x2="-45.72" y2="-233.68" width="0.1524" layer="91"/>
<wire x1="-45.72" y1="-233.68" x2="-45.72" y2="-170.18" width="0.1524" layer="91"/>
<junction x="-45.72" y="-170.18"/>
<pinref part="CN2" gate="-12" pin="S"/>
</segment>
</net>
<net name="COL4_R" class="0">
<segment>
<pinref part="LED_R1C4" gate="G$1" pin="R"/>
<wire x1="-86.36" y1="-109.22" x2="-43.18" y2="-109.22" width="0.1524" layer="91"/>
<label x="-83.82" y="-109.22" size="1.27" layer="95"/>
<pinref part="LED_R2C4" gate="G$1" pin="R"/>
<wire x1="-43.18" y1="-109.22" x2="-27.94" y2="-109.22" width="0.1524" layer="91"/>
<wire x1="-27.94" y1="-172.72" x2="-43.18" y2="-172.72" width="0.1524" layer="91"/>
<wire x1="-43.18" y1="-172.72" x2="-43.18" y2="-109.22" width="0.1524" layer="91"/>
<junction x="-43.18" y="-109.22"/>
<pinref part="LED_R3C4" gate="G$1" pin="R"/>
<wire x1="-27.94" y1="-236.22" x2="-43.18" y2="-236.22" width="0.1524" layer="91"/>
<wire x1="-43.18" y1="-236.22" x2="-43.18" y2="-172.72" width="0.1524" layer="91"/>
<junction x="-43.18" y="-172.72"/>
<pinref part="CN2" gate="-13" pin="S"/>
</segment>
</net>
<net name="COL4_S" class="0">
<segment>
<pinref part="LED_R1C4" gate="G$1" pin="S"/>
<wire x1="-86.36" y1="-111.76" x2="-40.64" y2="-111.76" width="0.1524" layer="91"/>
<label x="-83.82" y="-111.76" size="1.27" layer="95"/>
<pinref part="LED_R2C4" gate="G$1" pin="S"/>
<wire x1="-40.64" y1="-111.76" x2="-27.94" y2="-111.76" width="0.1524" layer="91"/>
<wire x1="-27.94" y1="-175.26" x2="-40.64" y2="-175.26" width="0.1524" layer="91"/>
<wire x1="-40.64" y1="-175.26" x2="-40.64" y2="-111.76" width="0.1524" layer="91"/>
<junction x="-40.64" y="-111.76"/>
<pinref part="LED_R3C4" gate="G$1" pin="S"/>
<wire x1="-27.94" y1="-238.76" x2="-40.64" y2="-238.76" width="0.1524" layer="91"/>
<wire x1="-40.64" y1="-238.76" x2="-40.64" y2="-175.26" width="0.1524" layer="91"/>
<junction x="-40.64" y="-175.26"/>
<pinref part="CN2" gate="-3" pin="S"/>
</segment>
</net>
<net name="COL4_T" class="0">
<segment>
<pinref part="LED_R1C4" gate="G$1" pin="T"/>
<wire x1="-86.36" y1="-114.3" x2="-38.1" y2="-114.3" width="0.1524" layer="91"/>
<label x="-83.82" y="-114.3" size="1.27" layer="95"/>
<pinref part="LED_R2C4" gate="G$1" pin="T"/>
<wire x1="-38.1" y1="-114.3" x2="-27.94" y2="-114.3" width="0.1524" layer="91"/>
<wire x1="-27.94" y1="-177.8" x2="-38.1" y2="-177.8" width="0.1524" layer="91"/>
<wire x1="-38.1" y1="-177.8" x2="-38.1" y2="-114.3" width="0.1524" layer="91"/>
<junction x="-38.1" y="-114.3"/>
<pinref part="LED_R3C4" gate="G$1" pin="T"/>
<wire x1="-27.94" y1="-241.3" x2="-38.1" y2="-241.3" width="0.1524" layer="91"/>
<wire x1="-38.1" y1="-241.3" x2="-38.1" y2="-177.8" width="0.1524" layer="91"/>
<junction x="-38.1" y="-177.8"/>
<pinref part="CN2" gate="-2" pin="S"/>
</segment>
</net>
<net name="COL4_U" class="0">
<segment>
<pinref part="LED_R1C4" gate="G$1" pin="U"/>
<wire x1="-86.36" y1="-116.84" x2="-35.56" y2="-116.84" width="0.1524" layer="91"/>
<label x="-83.82" y="-116.84" size="1.27" layer="95"/>
<pinref part="LED_R2C4" gate="G$1" pin="U"/>
<wire x1="-35.56" y1="-116.84" x2="-27.94" y2="-116.84" width="0.1524" layer="91"/>
<wire x1="-27.94" y1="-180.34" x2="-35.56" y2="-180.34" width="0.1524" layer="91"/>
<wire x1="-35.56" y1="-180.34" x2="-35.56" y2="-116.84" width="0.1524" layer="91"/>
<junction x="-35.56" y="-116.84"/>
<pinref part="LED_R3C4" gate="G$1" pin="U"/>
<wire x1="-27.94" y1="-243.84" x2="-35.56" y2="-243.84" width="0.1524" layer="91"/>
<wire x1="-35.56" y1="-243.84" x2="-35.56" y2="-180.34" width="0.1524" layer="91"/>
<junction x="-35.56" y="-180.34"/>
<pinref part="CN2" gate="-4" pin="S"/>
</segment>
</net>
<net name="COL5_A" class="0">
<segment>
<pinref part="LED_R1C5" gate="G$1" pin="A"/>
<wire x1="45.72" y1="-78.74" x2="58.42" y2="-78.74" width="0.1524" layer="91"/>
<label x="48.26" y="-78.74" size="1.27" layer="95"/>
<pinref part="LED_R2C5" gate="G$1" pin="A"/>
<wire x1="58.42" y1="-78.74" x2="104.14" y2="-78.74" width="0.1524" layer="91"/>
<wire x1="104.14" y1="-142.24" x2="58.42" y2="-142.24" width="0.1524" layer="91"/>
<wire x1="58.42" y1="-142.24" x2="58.42" y2="-78.74" width="0.1524" layer="91"/>
<junction x="58.42" y="-78.74"/>
<pinref part="LED_R3C5" gate="G$1" pin="A"/>
<wire x1="104.14" y1="-205.74" x2="58.42" y2="-205.74" width="0.1524" layer="91"/>
<wire x1="58.42" y1="-205.74" x2="58.42" y2="-142.24" width="0.1524" layer="91"/>
<junction x="58.42" y="-142.24"/>
<pinref part="CN4" gate="-5" pin="S"/>
</segment>
</net>
<net name="COL5_B" class="0">
<segment>
<pinref part="LED_R1C5" gate="G$1" pin="B"/>
<wire x1="45.72" y1="-81.28" x2="60.96" y2="-81.28" width="0.1524" layer="91"/>
<label x="48.26" y="-81.28" size="1.27" layer="95"/>
<pinref part="LED_R2C5" gate="G$1" pin="B"/>
<wire x1="60.96" y1="-81.28" x2="104.14" y2="-81.28" width="0.1524" layer="91"/>
<wire x1="104.14" y1="-144.78" x2="60.96" y2="-144.78" width="0.1524" layer="91"/>
<wire x1="60.96" y1="-144.78" x2="60.96" y2="-81.28" width="0.1524" layer="91"/>
<junction x="60.96" y="-81.28"/>
<pinref part="LED_R3C5" gate="G$1" pin="B"/>
<wire x1="104.14" y1="-208.28" x2="60.96" y2="-208.28" width="0.1524" layer="91"/>
<wire x1="60.96" y1="-208.28" x2="60.96" y2="-144.78" width="0.1524" layer="91"/>
<junction x="60.96" y="-144.78"/>
<pinref part="CN4" gate="-12" pin="S"/>
</segment>
</net>
<net name="COL5_C" class="0">
<segment>
<pinref part="LED_R1C5" gate="G$1" pin="C"/>
<wire x1="45.72" y1="-83.82" x2="63.5" y2="-83.82" width="0.1524" layer="91"/>
<label x="48.26" y="-83.82" size="1.27" layer="95"/>
<pinref part="LED_R2C5" gate="G$1" pin="C"/>
<wire x1="63.5" y1="-83.82" x2="104.14" y2="-83.82" width="0.1524" layer="91"/>
<wire x1="104.14" y1="-147.32" x2="63.5" y2="-147.32" width="0.1524" layer="91"/>
<wire x1="63.5" y1="-147.32" x2="63.5" y2="-83.82" width="0.1524" layer="91"/>
<junction x="63.5" y="-83.82"/>
<pinref part="LED_R3C5" gate="G$1" pin="C"/>
<wire x1="104.14" y1="-210.82" x2="63.5" y2="-210.82" width="0.1524" layer="91"/>
<wire x1="63.5" y1="-210.82" x2="63.5" y2="-147.32" width="0.1524" layer="91"/>
<junction x="63.5" y="-147.32"/>
<pinref part="CN4" gate="-10" pin="S"/>
</segment>
</net>
<net name="COL5_D" class="0">
<segment>
<pinref part="LED_R1C5" gate="G$1" pin="D"/>
<wire x1="45.72" y1="-86.36" x2="66.04" y2="-86.36" width="0.1524" layer="91"/>
<label x="48.26" y="-86.36" size="1.27" layer="95"/>
<pinref part="LED_R2C5" gate="G$1" pin="D"/>
<wire x1="66.04" y1="-86.36" x2="104.14" y2="-86.36" width="0.1524" layer="91"/>
<wire x1="104.14" y1="-149.86" x2="66.04" y2="-149.86" width="0.1524" layer="91"/>
<wire x1="66.04" y1="-149.86" x2="66.04" y2="-86.36" width="0.1524" layer="91"/>
<junction x="66.04" y="-86.36"/>
<pinref part="LED_R3C5" gate="G$1" pin="D"/>
<wire x1="104.14" y1="-213.36" x2="66.04" y2="-213.36" width="0.1524" layer="91"/>
<wire x1="66.04" y1="-213.36" x2="66.04" y2="-149.86" width="0.1524" layer="91"/>
<junction x="66.04" y="-149.86"/>
<pinref part="CN4" gate="-15" pin="S"/>
</segment>
</net>
<net name="COL5_E" class="0">
<segment>
<pinref part="LED_R1C5" gate="G$1" pin="E"/>
<wire x1="45.72" y1="-88.9" x2="68.58" y2="-88.9" width="0.1524" layer="91"/>
<label x="48.26" y="-88.9" size="1.27" layer="95"/>
<pinref part="LED_R2C5" gate="G$1" pin="E"/>
<wire x1="68.58" y1="-88.9" x2="104.14" y2="-88.9" width="0.1524" layer="91"/>
<wire x1="104.14" y1="-152.4" x2="68.58" y2="-152.4" width="0.1524" layer="91"/>
<wire x1="68.58" y1="-152.4" x2="68.58" y2="-88.9" width="0.1524" layer="91"/>
<junction x="68.58" y="-88.9"/>
<pinref part="LED_R3C5" gate="G$1" pin="E"/>
<wire x1="104.14" y1="-215.9" x2="68.58" y2="-215.9" width="0.1524" layer="91"/>
<wire x1="68.58" y1="-215.9" x2="68.58" y2="-152.4" width="0.1524" layer="91"/>
<junction x="68.58" y="-152.4"/>
<pinref part="CN4" gate="-14" pin="S"/>
</segment>
</net>
<net name="COL5_F" class="0">
<segment>
<pinref part="LED_R1C5" gate="G$1" pin="F"/>
<wire x1="45.72" y1="-91.44" x2="71.12" y2="-91.44" width="0.1524" layer="91"/>
<label x="48.26" y="-91.44" size="1.27" layer="95"/>
<pinref part="LED_R2C5" gate="G$1" pin="F"/>
<wire x1="71.12" y1="-91.44" x2="104.14" y2="-91.44" width="0.1524" layer="91"/>
<wire x1="104.14" y1="-154.94" x2="71.12" y2="-154.94" width="0.1524" layer="91"/>
<wire x1="71.12" y1="-154.94" x2="71.12" y2="-91.44" width="0.1524" layer="91"/>
<junction x="71.12" y="-91.44"/>
<pinref part="LED_R3C5" gate="G$1" pin="F"/>
<wire x1="104.14" y1="-218.44" x2="71.12" y2="-218.44" width="0.1524" layer="91"/>
<wire x1="71.12" y1="-218.44" x2="71.12" y2="-154.94" width="0.1524" layer="91"/>
<junction x="71.12" y="-154.94"/>
<pinref part="CN4" gate="-13" pin="S"/>
</segment>
</net>
<net name="COL5_G" class="0">
<segment>
<pinref part="LED_R1C5" gate="G$1" pin="G"/>
<wire x1="45.72" y1="-93.98" x2="73.66" y2="-93.98" width="0.1524" layer="91"/>
<label x="48.26" y="-93.98" size="1.27" layer="95"/>
<pinref part="LED_R2C5" gate="G$1" pin="G"/>
<wire x1="73.66" y1="-93.98" x2="104.14" y2="-93.98" width="0.1524" layer="91"/>
<wire x1="104.14" y1="-157.48" x2="73.66" y2="-157.48" width="0.1524" layer="91"/>
<wire x1="73.66" y1="-157.48" x2="73.66" y2="-93.98" width="0.1524" layer="91"/>
<junction x="73.66" y="-93.98"/>
<pinref part="LED_R3C5" gate="G$1" pin="G"/>
<wire x1="104.14" y1="-220.98" x2="73.66" y2="-220.98" width="0.1524" layer="91"/>
<wire x1="73.66" y1="-220.98" x2="73.66" y2="-157.48" width="0.1524" layer="91"/>
<junction x="73.66" y="-157.48"/>
<pinref part="CN4" gate="-4" pin="S"/>
</segment>
</net>
<net name="COL5_H" class="0">
<segment>
<pinref part="LED_R1C5" gate="G$1" pin="H"/>
<wire x1="45.72" y1="-96.52" x2="76.2" y2="-96.52" width="0.1524" layer="91"/>
<label x="48.26" y="-96.52" size="1.27" layer="95"/>
<pinref part="LED_R2C5" gate="G$1" pin="H"/>
<wire x1="76.2" y1="-96.52" x2="104.14" y2="-96.52" width="0.1524" layer="91"/>
<wire x1="104.14" y1="-160.02" x2="76.2" y2="-160.02" width="0.1524" layer="91"/>
<wire x1="76.2" y1="-160.02" x2="76.2" y2="-96.52" width="0.1524" layer="91"/>
<junction x="76.2" y="-96.52"/>
<pinref part="LED_R3C5" gate="G$1" pin="H"/>
<wire x1="104.14" y1="-223.52" x2="76.2" y2="-223.52" width="0.1524" layer="91"/>
<wire x1="76.2" y1="-223.52" x2="76.2" y2="-160.02" width="0.1524" layer="91"/>
<junction x="76.2" y="-160.02"/>
<pinref part="CN4" gate="-8" pin="S"/>
</segment>
</net>
<net name="COL5_K" class="0">
<segment>
<pinref part="LED_R1C5" gate="G$1" pin="K"/>
<wire x1="45.72" y1="-99.06" x2="78.74" y2="-99.06" width="0.1524" layer="91"/>
<label x="48.26" y="-99.06" size="1.27" layer="95"/>
<pinref part="LED_R2C5" gate="G$1" pin="K"/>
<wire x1="78.74" y1="-99.06" x2="104.14" y2="-99.06" width="0.1524" layer="91"/>
<wire x1="104.14" y1="-162.56" x2="78.74" y2="-162.56" width="0.1524" layer="91"/>
<wire x1="78.74" y1="-162.56" x2="78.74" y2="-99.06" width="0.1524" layer="91"/>
<junction x="78.74" y="-99.06"/>
<pinref part="LED_R3C5" gate="G$1" pin="K"/>
<wire x1="104.14" y1="-226.06" x2="78.74" y2="-226.06" width="0.1524" layer="91"/>
<wire x1="78.74" y1="-226.06" x2="78.74" y2="-162.56" width="0.1524" layer="91"/>
<junction x="78.74" y="-162.56"/>
<pinref part="CN4" gate="-7" pin="S"/>
</segment>
</net>
<net name="COL5_M" class="0">
<segment>
<pinref part="LED_R1C5" gate="G$1" pin="M"/>
<wire x1="45.72" y1="-101.6" x2="81.28" y2="-101.6" width="0.1524" layer="91"/>
<label x="48.26" y="-101.6" size="1.27" layer="95"/>
<pinref part="LED_R2C5" gate="G$1" pin="M"/>
<wire x1="81.28" y1="-101.6" x2="104.14" y2="-101.6" width="0.1524" layer="91"/>
<wire x1="104.14" y1="-165.1" x2="81.28" y2="-165.1" width="0.1524" layer="91"/>
<wire x1="81.28" y1="-165.1" x2="81.28" y2="-101.6" width="0.1524" layer="91"/>
<junction x="81.28" y="-101.6"/>
<pinref part="LED_R3C5" gate="G$1" pin="M"/>
<wire x1="104.14" y1="-228.6" x2="81.28" y2="-228.6" width="0.1524" layer="91"/>
<wire x1="81.28" y1="-228.6" x2="81.28" y2="-165.1" width="0.1524" layer="91"/>
<junction x="81.28" y="-165.1"/>
<pinref part="CN4" gate="-6" pin="S"/>
</segment>
</net>
<net name="COL5_N" class="0">
<segment>
<pinref part="LED_R1C5" gate="G$1" pin="N"/>
<wire x1="45.72" y1="-104.14" x2="83.82" y2="-104.14" width="0.1524" layer="91"/>
<label x="48.26" y="-104.14" size="1.27" layer="95"/>
<pinref part="LED_R2C5" gate="G$1" pin="N"/>
<wire x1="83.82" y1="-104.14" x2="104.14" y2="-104.14" width="0.1524" layer="91"/>
<wire x1="104.14" y1="-167.64" x2="83.82" y2="-167.64" width="0.1524" layer="91"/>
<wire x1="83.82" y1="-167.64" x2="83.82" y2="-104.14" width="0.1524" layer="91"/>
<junction x="83.82" y="-104.14"/>
<pinref part="LED_R3C5" gate="G$1" pin="N"/>
<wire x1="104.14" y1="-231.14" x2="83.82" y2="-231.14" width="0.1524" layer="91"/>
<wire x1="83.82" y1="-231.14" x2="83.82" y2="-167.64" width="0.1524" layer="91"/>
<junction x="83.82" y="-167.64"/>
<pinref part="CN4" gate="-11" pin="S"/>
</segment>
</net>
<net name="COL5_P" class="0">
<segment>
<pinref part="LED_R1C5" gate="G$1" pin="P"/>
<wire x1="45.72" y1="-106.68" x2="86.36" y2="-106.68" width="0.1524" layer="91"/>
<label x="48.26" y="-106.68" size="1.27" layer="95"/>
<pinref part="LED_R2C5" gate="G$1" pin="P"/>
<wire x1="86.36" y1="-106.68" x2="104.14" y2="-106.68" width="0.1524" layer="91"/>
<wire x1="104.14" y1="-170.18" x2="86.36" y2="-170.18" width="0.1524" layer="91"/>
<wire x1="86.36" y1="-170.18" x2="86.36" y2="-106.68" width="0.1524" layer="91"/>
<junction x="86.36" y="-106.68"/>
<pinref part="LED_R3C5" gate="G$1" pin="P"/>
<wire x1="104.14" y1="-233.68" x2="86.36" y2="-233.68" width="0.1524" layer="91"/>
<wire x1="86.36" y1="-233.68" x2="86.36" y2="-170.18" width="0.1524" layer="91"/>
<junction x="86.36" y="-170.18"/>
<pinref part="CN4" gate="-9" pin="S"/>
</segment>
</net>
<net name="COL5_R" class="0">
<segment>
<pinref part="LED_R1C5" gate="G$1" pin="R"/>
<wire x1="45.72" y1="-109.22" x2="88.9" y2="-109.22" width="0.1524" layer="91"/>
<label x="48.26" y="-109.22" size="1.27" layer="95"/>
<pinref part="LED_R2C5" gate="G$1" pin="R"/>
<wire x1="88.9" y1="-109.22" x2="104.14" y2="-109.22" width="0.1524" layer="91"/>
<wire x1="104.14" y1="-172.72" x2="88.9" y2="-172.72" width="0.1524" layer="91"/>
<wire x1="88.9" y1="-172.72" x2="88.9" y2="-109.22" width="0.1524" layer="91"/>
<junction x="88.9" y="-109.22"/>
<pinref part="LED_R3C5" gate="G$1" pin="R"/>
<wire x1="104.14" y1="-236.22" x2="88.9" y2="-236.22" width="0.1524" layer="91"/>
<wire x1="88.9" y1="-236.22" x2="88.9" y2="-172.72" width="0.1524" layer="91"/>
<junction x="88.9" y="-172.72"/>
<pinref part="CN4" gate="-16" pin="S"/>
</segment>
</net>
<net name="COL5\_S" class="0">
<segment>
<pinref part="LED_R1C5" gate="G$1" pin="S"/>
<wire x1="45.72" y1="-111.76" x2="91.44" y2="-111.76" width="0.1524" layer="91"/>
<label x="48.26" y="-111.76" size="1.27" layer="95"/>
<pinref part="LED_R2C5" gate="G$1" pin="S"/>
<wire x1="91.44" y1="-111.76" x2="104.14" y2="-111.76" width="0.1524" layer="91"/>
<wire x1="104.14" y1="-175.26" x2="91.44" y2="-175.26" width="0.1524" layer="91"/>
<wire x1="91.44" y1="-175.26" x2="91.44" y2="-111.76" width="0.1524" layer="91"/>
<junction x="91.44" y="-111.76"/>
<pinref part="LED_R3C5" gate="G$1" pin="S"/>
<wire x1="104.14" y1="-238.76" x2="91.44" y2="-238.76" width="0.1524" layer="91"/>
<wire x1="91.44" y1="-238.76" x2="91.44" y2="-175.26" width="0.1524" layer="91"/>
<junction x="91.44" y="-175.26"/>
<pinref part="CN4" gate="-2" pin="S"/>
</segment>
</net>
<net name="COL5_T" class="0">
<segment>
<pinref part="LED_R1C5" gate="G$1" pin="T"/>
<wire x1="45.72" y1="-114.3" x2="93.98" y2="-114.3" width="0.1524" layer="91"/>
<label x="48.26" y="-114.3" size="1.27" layer="95"/>
<pinref part="LED_R2C5" gate="G$1" pin="T"/>
<wire x1="93.98" y1="-114.3" x2="104.14" y2="-114.3" width="0.1524" layer="91"/>
<wire x1="104.14" y1="-177.8" x2="93.98" y2="-177.8" width="0.1524" layer="91"/>
<wire x1="93.98" y1="-177.8" x2="93.98" y2="-114.3" width="0.1524" layer="91"/>
<junction x="93.98" y="-114.3"/>
<pinref part="LED_R3C5" gate="G$1" pin="T"/>
<wire x1="104.14" y1="-241.3" x2="93.98" y2="-241.3" width="0.1524" layer="91"/>
<wire x1="93.98" y1="-241.3" x2="93.98" y2="-177.8" width="0.1524" layer="91"/>
<junction x="93.98" y="-177.8"/>
<pinref part="CN4" gate="-3" pin="S"/>
</segment>
</net>
<net name="COL5\_U" class="0">
<segment>
<pinref part="LED_R1C5" gate="G$1" pin="U"/>
<wire x1="45.72" y1="-116.84" x2="96.52" y2="-116.84" width="0.1524" layer="91"/>
<label x="48.26" y="-116.84" size="1.27" layer="95"/>
<pinref part="LED_R2C5" gate="G$1" pin="U"/>
<wire x1="96.52" y1="-116.84" x2="104.14" y2="-116.84" width="0.1524" layer="91"/>
<wire x1="104.14" y1="-180.34" x2="96.52" y2="-180.34" width="0.1524" layer="91"/>
<wire x1="96.52" y1="-180.34" x2="96.52" y2="-116.84" width="0.1524" layer="91"/>
<junction x="96.52" y="-116.84"/>
<pinref part="LED_R3C5" gate="G$1" pin="U"/>
<wire x1="104.14" y1="-243.84" x2="96.52" y2="-243.84" width="0.1524" layer="91"/>
<wire x1="96.52" y1="-243.84" x2="96.52" y2="-180.34" width="0.1524" layer="91"/>
<junction x="96.52" y="-180.34"/>
<pinref part="CN4" gate="-1" pin="S"/>
</segment>
</net>
<net name="COL6_A" class="0">
<segment>
<pinref part="LED_R1C6" gate="G$1" pin="A"/>
<wire x1="175.26" y1="-78.74" x2="187.96" y2="-78.74" width="0.1524" layer="91"/>
<label x="177.8" y="-78.74" size="1.27" layer="95"/>
<pinref part="LED_R2C6" gate="G$1" pin="A"/>
<wire x1="187.96" y1="-78.74" x2="233.68" y2="-78.74" width="0.1524" layer="91"/>
<wire x1="233.68" y1="-142.24" x2="187.96" y2="-142.24" width="0.1524" layer="91"/>
<wire x1="187.96" y1="-142.24" x2="187.96" y2="-78.74" width="0.1524" layer="91"/>
<junction x="187.96" y="-78.74"/>
<pinref part="LED_R3C6" gate="G$1" pin="A"/>
<wire x1="233.68" y1="-205.74" x2="187.96" y2="-205.74" width="0.1524" layer="91"/>
<wire x1="187.96" y1="-205.74" x2="187.96" y2="-142.24" width="0.1524" layer="91"/>
<junction x="187.96" y="-142.24"/>
<pinref part="CN2" gate="-24" pin="S"/>
</segment>
</net>
<net name="COL6_B" class="0">
<segment>
<pinref part="LED_R1C6" gate="G$1" pin="B"/>
<wire x1="175.26" y1="-81.28" x2="190.5" y2="-81.28" width="0.1524" layer="91"/>
<label x="177.8" y="-81.28" size="1.27" layer="95"/>
<pinref part="LED_R2C6" gate="G$1" pin="B"/>
<wire x1="190.5" y1="-81.28" x2="233.68" y2="-81.28" width="0.1524" layer="91"/>
<wire x1="233.68" y1="-144.78" x2="190.5" y2="-144.78" width="0.1524" layer="91"/>
<wire x1="190.5" y1="-144.78" x2="190.5" y2="-81.28" width="0.1524" layer="91"/>
<junction x="190.5" y="-81.28"/>
<pinref part="LED_R3C6" gate="G$1" pin="B"/>
<wire x1="233.68" y1="-208.28" x2="190.5" y2="-208.28" width="0.1524" layer="91"/>
<wire x1="190.5" y1="-208.28" x2="190.5" y2="-144.78" width="0.1524" layer="91"/>
<junction x="190.5" y="-144.78"/>
<pinref part="CN2" gate="-25" pin="S"/>
</segment>
</net>
<net name="COL6_C" class="0">
<segment>
<pinref part="LED_R1C6" gate="G$1" pin="C"/>
<wire x1="175.26" y1="-83.82" x2="193.04" y2="-83.82" width="0.1524" layer="91"/>
<label x="177.8" y="-83.82" size="1.27" layer="95"/>
<pinref part="LED_R2C6" gate="G$1" pin="C"/>
<wire x1="193.04" y1="-83.82" x2="233.68" y2="-83.82" width="0.1524" layer="91"/>
<wire x1="233.68" y1="-147.32" x2="193.04" y2="-147.32" width="0.1524" layer="91"/>
<wire x1="193.04" y1="-147.32" x2="193.04" y2="-83.82" width="0.1524" layer="91"/>
<junction x="193.04" y="-83.82"/>
<pinref part="LED_R3C6" gate="G$1" pin="C"/>
<wire x1="233.68" y1="-210.82" x2="193.04" y2="-210.82" width="0.1524" layer="91"/>
<wire x1="193.04" y1="-210.82" x2="193.04" y2="-147.32" width="0.1524" layer="91"/>
<junction x="193.04" y="-147.32"/>
<pinref part="CN2" gate="-27" pin="S"/>
</segment>
</net>
<net name="COL6_D" class="0">
<segment>
<pinref part="LED_R1C6" gate="G$1" pin="D"/>
<wire x1="175.26" y1="-86.36" x2="195.58" y2="-86.36" width="0.1524" layer="91"/>
<label x="177.8" y="-86.36" size="1.27" layer="95"/>
<pinref part="LED_R2C6" gate="G$1" pin="D"/>
<wire x1="195.58" y1="-86.36" x2="233.68" y2="-86.36" width="0.1524" layer="91"/>
<wire x1="233.68" y1="-149.86" x2="195.58" y2="-149.86" width="0.1524" layer="91"/>
<wire x1="195.58" y1="-149.86" x2="195.58" y2="-86.36" width="0.1524" layer="91"/>
<junction x="195.58" y="-86.36"/>
<pinref part="LED_R3C6" gate="G$1" pin="D"/>
<wire x1="233.68" y1="-213.36" x2="195.58" y2="-213.36" width="0.1524" layer="91"/>
<wire x1="195.58" y1="-213.36" x2="195.58" y2="-149.86" width="0.1524" layer="91"/>
<junction x="195.58" y="-149.86"/>
<pinref part="CN2" gate="-30" pin="S"/>
</segment>
</net>
<net name="COL6_E" class="0">
<segment>
<pinref part="LED_R1C6" gate="G$1" pin="E"/>
<wire x1="175.26" y1="-88.9" x2="198.12" y2="-88.9" width="0.1524" layer="91"/>
<label x="177.8" y="-88.9" size="1.27" layer="95"/>
<pinref part="LED_R2C6" gate="G$1" pin="E"/>
<wire x1="198.12" y1="-88.9" x2="233.68" y2="-88.9" width="0.1524" layer="91"/>
<wire x1="233.68" y1="-152.4" x2="198.12" y2="-152.4" width="0.1524" layer="91"/>
<wire x1="198.12" y1="-152.4" x2="198.12" y2="-88.9" width="0.1524" layer="91"/>
<junction x="198.12" y="-88.9"/>
<pinref part="LED_R3C6" gate="G$1" pin="E"/>
<wire x1="233.68" y1="-215.9" x2="198.12" y2="-215.9" width="0.1524" layer="91"/>
<wire x1="198.12" y1="-215.9" x2="198.12" y2="-152.4" width="0.1524" layer="91"/>
<junction x="198.12" y="-152.4"/>
<pinref part="CN2" gate="-31" pin="S"/>
</segment>
</net>
<net name="COL6_F" class="0">
<segment>
<pinref part="LED_R1C6" gate="G$1" pin="F"/>
<wire x1="175.26" y1="-91.44" x2="200.66" y2="-91.44" width="0.1524" layer="91"/>
<label x="177.8" y="-91.44" size="1.27" layer="95"/>
<pinref part="LED_R2C6" gate="G$1" pin="F"/>
<wire x1="200.66" y1="-91.44" x2="233.68" y2="-91.44" width="0.1524" layer="91"/>
<wire x1="233.68" y1="-154.94" x2="200.66" y2="-154.94" width="0.1524" layer="91"/>
<wire x1="200.66" y1="-154.94" x2="200.66" y2="-91.44" width="0.1524" layer="91"/>
<junction x="200.66" y="-91.44"/>
<pinref part="LED_R3C6" gate="G$1" pin="F"/>
<wire x1="233.68" y1="-218.44" x2="200.66" y2="-218.44" width="0.1524" layer="91"/>
<wire x1="200.66" y1="-218.44" x2="200.66" y2="-154.94" width="0.1524" layer="91"/>
<junction x="200.66" y="-154.94"/>
<pinref part="CN2" gate="-32" pin="S"/>
</segment>
</net>
<net name="COL6_G" class="0">
<segment>
<pinref part="LED_R1C6" gate="G$1" pin="G"/>
<wire x1="175.26" y1="-93.98" x2="203.2" y2="-93.98" width="0.1524" layer="91"/>
<label x="177.8" y="-93.98" size="1.27" layer="95"/>
<pinref part="LED_R2C6" gate="G$1" pin="G"/>
<wire x1="203.2" y1="-93.98" x2="233.68" y2="-93.98" width="0.1524" layer="91"/>
<wire x1="233.68" y1="-157.48" x2="203.2" y2="-157.48" width="0.1524" layer="91"/>
<wire x1="203.2" y1="-157.48" x2="203.2" y2="-93.98" width="0.1524" layer="91"/>
<junction x="203.2" y="-93.98"/>
<pinref part="LED_R3C6" gate="G$1" pin="G"/>
<wire x1="233.68" y1="-220.98" x2="203.2" y2="-220.98" width="0.1524" layer="91"/>
<wire x1="203.2" y1="-220.98" x2="203.2" y2="-157.48" width="0.1524" layer="91"/>
<junction x="203.2" y="-157.48"/>
<pinref part="CN2" gate="-17" pin="S"/>
</segment>
</net>
<net name="COL6_H" class="0">
<segment>
<pinref part="LED_R1C6" gate="G$1" pin="H"/>
<wire x1="175.26" y1="-96.52" x2="205.74" y2="-96.52" width="0.1524" layer="91"/>
<label x="177.8" y="-96.52" size="1.27" layer="95"/>
<pinref part="LED_R2C6" gate="G$1" pin="H"/>
<wire x1="205.74" y1="-96.52" x2="233.68" y2="-96.52" width="0.1524" layer="91"/>
<wire x1="233.68" y1="-160.02" x2="205.74" y2="-160.02" width="0.1524" layer="91"/>
<wire x1="205.74" y1="-160.02" x2="205.74" y2="-96.52" width="0.1524" layer="91"/>
<junction x="205.74" y="-96.52"/>
<pinref part="LED_R3C6" gate="G$1" pin="H"/>
<wire x1="233.68" y1="-223.52" x2="205.74" y2="-223.52" width="0.1524" layer="91"/>
<wire x1="205.74" y1="-223.52" x2="205.74" y2="-160.02" width="0.1524" layer="91"/>
<junction x="205.74" y="-160.02"/>
<pinref part="CN2" gate="-21" pin="S"/>
</segment>
</net>
<net name="COL6_K" class="0">
<segment>
<pinref part="LED_R1C6" gate="G$1" pin="K"/>
<wire x1="175.26" y1="-99.06" x2="208.28" y2="-99.06" width="0.1524" layer="91"/>
<label x="177.8" y="-99.06" size="1.27" layer="95"/>
<pinref part="LED_R2C6" gate="G$1" pin="K"/>
<wire x1="208.28" y1="-99.06" x2="233.68" y2="-99.06" width="0.1524" layer="91"/>
<wire x1="233.68" y1="-162.56" x2="208.28" y2="-162.56" width="0.1524" layer="91"/>
<wire x1="208.28" y1="-162.56" x2="208.28" y2="-99.06" width="0.1524" layer="91"/>
<junction x="208.28" y="-99.06"/>
<pinref part="LED_R3C6" gate="G$1" pin="K"/>
<wire x1="233.68" y1="-226.06" x2="208.28" y2="-226.06" width="0.1524" layer="91"/>
<wire x1="208.28" y1="-226.06" x2="208.28" y2="-162.56" width="0.1524" layer="91"/>
<junction x="208.28" y="-162.56"/>
<pinref part="CN2" gate="-22" pin="S"/>
</segment>
</net>
<net name="COL6_M" class="0">
<segment>
<pinref part="LED_R1C6" gate="G$1" pin="M"/>
<wire x1="175.26" y1="-101.6" x2="210.82" y2="-101.6" width="0.1524" layer="91"/>
<label x="177.8" y="-101.6" size="1.27" layer="95"/>
<pinref part="LED_R2C6" gate="G$1" pin="M"/>
<wire x1="210.82" y1="-101.6" x2="233.68" y2="-101.6" width="0.1524" layer="91"/>
<wire x1="233.68" y1="-165.1" x2="210.82" y2="-165.1" width="0.1524" layer="91"/>
<wire x1="210.82" y1="-165.1" x2="210.82" y2="-101.6" width="0.1524" layer="91"/>
<junction x="210.82" y="-101.6"/>
<pinref part="LED_R3C6" gate="G$1" pin="M"/>
<wire x1="233.68" y1="-228.6" x2="210.82" y2="-228.6" width="0.1524" layer="91"/>
<wire x1="210.82" y1="-228.6" x2="210.82" y2="-165.1" width="0.1524" layer="91"/>
<junction x="210.82" y="-165.1"/>
<pinref part="CN2" gate="-23" pin="S"/>
</segment>
</net>
<net name="COL6_N" class="0">
<segment>
<pinref part="LED_R1C6" gate="G$1" pin="N"/>
<wire x1="175.26" y1="-104.14" x2="213.36" y2="-104.14" width="0.1524" layer="91"/>
<label x="177.8" y="-104.14" size="1.27" layer="95"/>
<pinref part="LED_R2C6" gate="G$1" pin="N"/>
<wire x1="213.36" y1="-104.14" x2="233.68" y2="-104.14" width="0.1524" layer="91"/>
<wire x1="233.68" y1="-167.64" x2="213.36" y2="-167.64" width="0.1524" layer="91"/>
<wire x1="213.36" y1="-167.64" x2="213.36" y2="-104.14" width="0.1524" layer="91"/>
<junction x="213.36" y="-104.14"/>
<pinref part="LED_R3C6" gate="G$1" pin="N"/>
<wire x1="233.68" y1="-231.14" x2="213.36" y2="-231.14" width="0.1524" layer="91"/>
<wire x1="213.36" y1="-231.14" x2="213.36" y2="-167.64" width="0.1524" layer="91"/>
<junction x="213.36" y="-167.64"/>
<pinref part="CN2" gate="-26" pin="S"/>
</segment>
</net>
<net name="COL6_P" class="0">
<segment>
<pinref part="LED_R1C6" gate="G$1" pin="P"/>
<wire x1="175.26" y1="-106.68" x2="215.9" y2="-106.68" width="0.1524" layer="91"/>
<label x="177.8" y="-106.68" size="1.27" layer="95"/>
<pinref part="LED_R2C6" gate="G$1" pin="P"/>
<wire x1="215.9" y1="-106.68" x2="233.68" y2="-106.68" width="0.1524" layer="91"/>
<wire x1="233.68" y1="-170.18" x2="215.9" y2="-170.18" width="0.1524" layer="91"/>
<wire x1="215.9" y1="-170.18" x2="215.9" y2="-106.68" width="0.1524" layer="91"/>
<junction x="215.9" y="-106.68"/>
<pinref part="LED_R3C6" gate="G$1" pin="P"/>
<wire x1="233.68" y1="-233.68" x2="215.9" y2="-233.68" width="0.1524" layer="91"/>
<wire x1="215.9" y1="-233.68" x2="215.9" y2="-170.18" width="0.1524" layer="91"/>
<junction x="215.9" y="-170.18"/>
<pinref part="CN2" gate="-28" pin="S"/>
</segment>
</net>
<net name="COL6_R" class="0">
<segment>
<pinref part="LED_R1C6" gate="G$1" pin="R"/>
<wire x1="175.26" y1="-109.22" x2="218.44" y2="-109.22" width="0.1524" layer="91"/>
<label x="177.8" y="-109.22" size="1.27" layer="95"/>
<pinref part="LED_R2C6" gate="G$1" pin="R"/>
<wire x1="218.44" y1="-109.22" x2="233.68" y2="-109.22" width="0.1524" layer="91"/>
<wire x1="233.68" y1="-172.72" x2="218.44" y2="-172.72" width="0.1524" layer="91"/>
<wire x1="218.44" y1="-172.72" x2="218.44" y2="-109.22" width="0.1524" layer="91"/>
<junction x="218.44" y="-109.22"/>
<pinref part="LED_R3C6" gate="G$1" pin="R"/>
<wire x1="233.68" y1="-236.22" x2="218.44" y2="-236.22" width="0.1524" layer="91"/>
<wire x1="218.44" y1="-236.22" x2="218.44" y2="-172.72" width="0.1524" layer="91"/>
<junction x="218.44" y="-172.72"/>
<pinref part="CN2" gate="-29" pin="S"/>
</segment>
</net>
<net name="COL6_S" class="0">
<segment>
<pinref part="LED_R1C6" gate="G$1" pin="S"/>
<wire x1="175.26" y1="-111.76" x2="220.98" y2="-111.76" width="0.1524" layer="91"/>
<label x="177.8" y="-111.76" size="1.27" layer="95"/>
<pinref part="LED_R2C6" gate="G$1" pin="S"/>
<wire x1="220.98" y1="-111.76" x2="233.68" y2="-111.76" width="0.1524" layer="91"/>
<wire x1="233.68" y1="-175.26" x2="220.98" y2="-175.26" width="0.1524" layer="91"/>
<wire x1="220.98" y1="-175.26" x2="220.98" y2="-111.76" width="0.1524" layer="91"/>
<junction x="220.98" y="-111.76"/>
<pinref part="LED_R3C6" gate="G$1" pin="S"/>
<wire x1="233.68" y1="-238.76" x2="220.98" y2="-238.76" width="0.1524" layer="91"/>
<wire x1="220.98" y1="-238.76" x2="220.98" y2="-175.26" width="0.1524" layer="91"/>
<junction x="220.98" y="-175.26"/>
<pinref part="CN2" gate="-19" pin="S"/>
</segment>
</net>
<net name="COL6_T" class="0">
<segment>
<pinref part="LED_R1C6" gate="G$1" pin="T"/>
<wire x1="175.26" y1="-114.3" x2="223.52" y2="-114.3" width="0.1524" layer="91"/>
<label x="177.8" y="-114.3" size="1.27" layer="95"/>
<pinref part="LED_R2C6" gate="G$1" pin="T"/>
<wire x1="223.52" y1="-114.3" x2="233.68" y2="-114.3" width="0.1524" layer="91"/>
<wire x1="233.68" y1="-177.8" x2="223.52" y2="-177.8" width="0.1524" layer="91"/>
<wire x1="223.52" y1="-177.8" x2="223.52" y2="-114.3" width="0.1524" layer="91"/>
<junction x="223.52" y="-114.3"/>
<pinref part="LED_R3C6" gate="G$1" pin="T"/>
<wire x1="233.68" y1="-241.3" x2="223.52" y2="-241.3" width="0.1524" layer="91"/>
<wire x1="223.52" y1="-241.3" x2="223.52" y2="-177.8" width="0.1524" layer="91"/>
<junction x="223.52" y="-177.8"/>
<pinref part="CN2" gate="-18" pin="S"/>
</segment>
</net>
<net name="COL6_U" class="0">
<segment>
<pinref part="LED_R1C6" gate="G$1" pin="U"/>
<wire x1="175.26" y1="-116.84" x2="226.06" y2="-116.84" width="0.1524" layer="91"/>
<label x="177.8" y="-116.84" size="1.27" layer="95"/>
<pinref part="LED_R2C6" gate="G$1" pin="U"/>
<wire x1="226.06" y1="-116.84" x2="233.68" y2="-116.84" width="0.1524" layer="91"/>
<wire x1="233.68" y1="-180.34" x2="226.06" y2="-180.34" width="0.1524" layer="91"/>
<wire x1="226.06" y1="-180.34" x2="226.06" y2="-116.84" width="0.1524" layer="91"/>
<junction x="226.06" y="-116.84"/>
<pinref part="LED_R3C6" gate="G$1" pin="U"/>
<wire x1="233.68" y1="-243.84" x2="226.06" y2="-243.84" width="0.1524" layer="91"/>
<wire x1="226.06" y1="-243.84" x2="226.06" y2="-180.34" width="0.1524" layer="91"/>
<junction x="226.06" y="-180.34"/>
<pinref part="CN2" gate="-20" pin="S"/>
</segment>
</net>
<net name="COL7_A" class="0">
<segment>
<pinref part="LED_R1C7" gate="G$1" pin="A"/>
<wire x1="307.34" y1="-78.74" x2="320.04" y2="-78.74" width="0.1524" layer="91"/>
<label x="309.88" y="-78.74" size="1.27" layer="95"/>
<pinref part="LED_R2C7" gate="G$1" pin="A"/>
<wire x1="320.04" y1="-78.74" x2="365.76" y2="-78.74" width="0.1524" layer="91"/>
<wire x1="365.76" y1="-142.24" x2="320.04" y2="-142.24" width="0.1524" layer="91"/>
<wire x1="320.04" y1="-142.24" x2="320.04" y2="-78.74" width="0.1524" layer="91"/>
<junction x="320.04" y="-78.74"/>
<pinref part="LED_R3C7" gate="G$1" pin="A"/>
<wire x1="365.76" y1="-205.74" x2="320.04" y2="-205.74" width="0.1524" layer="91"/>
<wire x1="320.04" y1="-205.74" x2="320.04" y2="-142.24" width="0.1524" layer="91"/>
<junction x="320.04" y="-142.24"/>
<pinref part="CN2" gate="-40" pin="S"/>
</segment>
</net>
<net name="COL7_B" class="0">
<segment>
<pinref part="LED_R1C7" gate="G$1" pin="B"/>
<wire x1="307.34" y1="-81.28" x2="322.58" y2="-81.28" width="0.1524" layer="91"/>
<label x="309.88" y="-81.28" size="1.27" layer="95"/>
<pinref part="LED_R2C7" gate="G$1" pin="B"/>
<wire x1="322.58" y1="-81.28" x2="365.76" y2="-81.28" width="0.1524" layer="91"/>
<wire x1="365.76" y1="-144.78" x2="322.58" y2="-144.78" width="0.1524" layer="91"/>
<wire x1="322.58" y1="-144.78" x2="322.58" y2="-81.28" width="0.1524" layer="91"/>
<junction x="322.58" y="-81.28"/>
<pinref part="LED_R3C7" gate="G$1" pin="B"/>
<wire x1="365.76" y1="-208.28" x2="322.58" y2="-208.28" width="0.1524" layer="91"/>
<wire x1="322.58" y1="-208.28" x2="322.58" y2="-144.78" width="0.1524" layer="91"/>
<junction x="322.58" y="-144.78"/>
<pinref part="CN4" gate="-20" pin="S"/>
</segment>
</net>
<net name="COL7_C" class="0">
<segment>
<pinref part="LED_R1C7" gate="G$1" pin="C"/>
<wire x1="307.34" y1="-83.82" x2="325.12" y2="-83.82" width="0.1524" layer="91"/>
<label x="309.88" y="-83.82" size="1.27" layer="95"/>
<pinref part="LED_R2C7" gate="G$1" pin="C"/>
<wire x1="325.12" y1="-83.82" x2="365.76" y2="-83.82" width="0.1524" layer="91"/>
<wire x1="365.76" y1="-147.32" x2="325.12" y2="-147.32" width="0.1524" layer="91"/>
<wire x1="325.12" y1="-147.32" x2="325.12" y2="-83.82" width="0.1524" layer="91"/>
<junction x="325.12" y="-83.82"/>
<pinref part="LED_R3C7" gate="G$1" pin="C"/>
<wire x1="365.76" y1="-210.82" x2="325.12" y2="-210.82" width="0.1524" layer="91"/>
<wire x1="325.12" y1="-210.82" x2="325.12" y2="-147.32" width="0.1524" layer="91"/>
<junction x="325.12" y="-147.32"/>
<pinref part="CN4" gate="-18" pin="S"/>
</segment>
</net>
<net name="COL7_D" class="0">
<segment>
<pinref part="LED_R1C7" gate="G$1" pin="D"/>
<wire x1="307.34" y1="-86.36" x2="327.66" y2="-86.36" width="0.1524" layer="91"/>
<label x="309.88" y="-86.36" size="1.27" layer="95"/>
<pinref part="LED_R2C7" gate="G$1" pin="D"/>
<wire x1="327.66" y1="-86.36" x2="365.76" y2="-86.36" width="0.1524" layer="91"/>
<wire x1="365.76" y1="-149.86" x2="327.66" y2="-149.86" width="0.1524" layer="91"/>
<wire x1="327.66" y1="-149.86" x2="327.66" y2="-86.36" width="0.1524" layer="91"/>
<junction x="327.66" y="-86.36"/>
<pinref part="LED_R3C7" gate="G$1" pin="D"/>
<wire x1="365.76" y1="-213.36" x2="327.66" y2="-213.36" width="0.1524" layer="91"/>
<wire x1="327.66" y1="-213.36" x2="327.66" y2="-149.86" width="0.1524" layer="91"/>
<junction x="327.66" y="-149.86"/>
<pinref part="CN4" gate="-23" pin="S"/>
</segment>
</net>
<net name="COL7_E" class="0">
<segment>
<pinref part="LED_R1C7" gate="G$1" pin="E"/>
<wire x1="307.34" y1="-88.9" x2="330.2" y2="-88.9" width="0.1524" layer="91"/>
<label x="309.88" y="-88.9" size="1.27" layer="95"/>
<pinref part="LED_R2C7" gate="G$1" pin="E"/>
<wire x1="330.2" y1="-88.9" x2="365.76" y2="-88.9" width="0.1524" layer="91"/>
<wire x1="365.76" y1="-152.4" x2="330.2" y2="-152.4" width="0.1524" layer="91"/>
<wire x1="330.2" y1="-152.4" x2="330.2" y2="-88.9" width="0.1524" layer="91"/>
<junction x="330.2" y="-88.9"/>
<pinref part="LED_R3C7" gate="G$1" pin="E"/>
<wire x1="365.76" y1="-215.9" x2="330.2" y2="-215.9" width="0.1524" layer="91"/>
<wire x1="330.2" y1="-215.9" x2="330.2" y2="-152.4" width="0.1524" layer="91"/>
<junction x="330.2" y="-152.4"/>
<pinref part="CN4" gate="-22" pin="S"/>
</segment>
</net>
<net name="COL7_F" class="0">
<segment>
<pinref part="LED_R1C7" gate="G$1" pin="F"/>
<wire x1="307.34" y1="-91.44" x2="332.74" y2="-91.44" width="0.1524" layer="91"/>
<label x="309.88" y="-91.44" size="1.27" layer="95"/>
<pinref part="LED_R2C7" gate="G$1" pin="F"/>
<wire x1="332.74" y1="-91.44" x2="365.76" y2="-91.44" width="0.1524" layer="91"/>
<wire x1="365.76" y1="-154.94" x2="332.74" y2="-154.94" width="0.1524" layer="91"/>
<wire x1="332.74" y1="-154.94" x2="332.74" y2="-91.44" width="0.1524" layer="91"/>
<junction x="332.74" y="-91.44"/>
<pinref part="LED_R3C7" gate="G$1" pin="F"/>
<wire x1="365.76" y1="-218.44" x2="332.74" y2="-218.44" width="0.1524" layer="91"/>
<wire x1="332.74" y1="-218.44" x2="332.74" y2="-154.94" width="0.1524" layer="91"/>
<junction x="332.74" y="-154.94"/>
<pinref part="CN4" gate="-21" pin="S"/>
</segment>
</net>
<net name="COL7_G" class="0">
<segment>
<pinref part="LED_R1C7" gate="G$1" pin="G"/>
<wire x1="307.34" y1="-93.98" x2="335.28" y2="-93.98" width="0.1524" layer="91"/>
<label x="309.88" y="-93.98" size="1.27" layer="95"/>
<pinref part="LED_R2C7" gate="G$1" pin="G"/>
<wire x1="335.28" y1="-93.98" x2="365.76" y2="-93.98" width="0.1524" layer="91"/>
<wire x1="365.76" y1="-157.48" x2="335.28" y2="-157.48" width="0.1524" layer="91"/>
<wire x1="335.28" y1="-157.48" x2="335.28" y2="-93.98" width="0.1524" layer="91"/>
<junction x="335.28" y="-93.98"/>
<pinref part="LED_R3C7" gate="G$1" pin="G"/>
<wire x1="365.76" y1="-220.98" x2="335.28" y2="-220.98" width="0.1524" layer="91"/>
<wire x1="335.28" y1="-220.98" x2="335.28" y2="-157.48" width="0.1524" layer="91"/>
<junction x="335.28" y="-157.48"/>
<pinref part="CN2" gate="-33" pin="S"/>
</segment>
</net>
<net name="COL7_H" class="0">
<segment>
<pinref part="LED_R1C7" gate="G$1" pin="H"/>
<wire x1="307.34" y1="-96.52" x2="337.82" y2="-96.52" width="0.1524" layer="91"/>
<label x="309.88" y="-96.52" size="1.27" layer="95"/>
<pinref part="LED_R2C7" gate="G$1" pin="H"/>
<wire x1="337.82" y1="-96.52" x2="365.76" y2="-96.52" width="0.1524" layer="91"/>
<wire x1="365.76" y1="-160.02" x2="337.82" y2="-160.02" width="0.1524" layer="91"/>
<wire x1="337.82" y1="-160.02" x2="337.82" y2="-96.52" width="0.1524" layer="91"/>
<junction x="337.82" y="-96.52"/>
<pinref part="LED_R3C7" gate="G$1" pin="H"/>
<wire x1="365.76" y1="-223.52" x2="337.82" y2="-223.52" width="0.1524" layer="91"/>
<wire x1="337.82" y1="-223.52" x2="337.82" y2="-160.02" width="0.1524" layer="91"/>
<junction x="337.82" y="-160.02"/>
<pinref part="CN2" gate="-37" pin="S"/>
</segment>
</net>
<net name="COL7_K" class="0">
<segment>
<pinref part="LED_R1C7" gate="G$1" pin="K"/>
<wire x1="307.34" y1="-99.06" x2="340.36" y2="-99.06" width="0.1524" layer="91"/>
<label x="309.88" y="-99.06" size="1.27" layer="95"/>
<pinref part="LED_R2C7" gate="G$1" pin="K"/>
<wire x1="340.36" y1="-99.06" x2="365.76" y2="-99.06" width="0.1524" layer="91"/>
<wire x1="365.76" y1="-162.56" x2="340.36" y2="-162.56" width="0.1524" layer="91"/>
<wire x1="340.36" y1="-162.56" x2="340.36" y2="-99.06" width="0.1524" layer="91"/>
<junction x="340.36" y="-99.06"/>
<pinref part="LED_R3C7" gate="G$1" pin="K"/>
<wire x1="365.76" y1="-226.06" x2="340.36" y2="-226.06" width="0.1524" layer="91"/>
<wire x1="340.36" y1="-226.06" x2="340.36" y2="-162.56" width="0.1524" layer="91"/>
<junction x="340.36" y="-162.56"/>
<pinref part="CN2" gate="-38" pin="S"/>
</segment>
</net>
<net name="COL7_M" class="0">
<segment>
<pinref part="LED_R1C7" gate="G$1" pin="M"/>
<wire x1="307.34" y1="-101.6" x2="342.9" y2="-101.6" width="0.1524" layer="91"/>
<label x="309.88" y="-101.6" size="1.27" layer="95"/>
<pinref part="LED_R2C7" gate="G$1" pin="M"/>
<wire x1="342.9" y1="-101.6" x2="365.76" y2="-101.6" width="0.1524" layer="91"/>
<wire x1="365.76" y1="-165.1" x2="342.9" y2="-165.1" width="0.1524" layer="91"/>
<wire x1="342.9" y1="-165.1" x2="342.9" y2="-101.6" width="0.1524" layer="91"/>
<junction x="342.9" y="-101.6"/>
<pinref part="LED_R3C7" gate="G$1" pin="M"/>
<wire x1="365.76" y1="-228.6" x2="342.9" y2="-228.6" width="0.1524" layer="91"/>
<wire x1="342.9" y1="-228.6" x2="342.9" y2="-165.1" width="0.1524" layer="91"/>
<junction x="342.9" y="-165.1"/>
<pinref part="CN2" gate="-39" pin="S"/>
</segment>
</net>
<net name="COL7_N" class="0">
<segment>
<pinref part="LED_R1C7" gate="G$1" pin="N"/>
<wire x1="307.34" y1="-104.14" x2="345.44" y2="-104.14" width="0.1524" layer="91"/>
<label x="309.88" y="-104.14" size="1.27" layer="95"/>
<pinref part="LED_R2C7" gate="G$1" pin="N"/>
<wire x1="345.44" y1="-104.14" x2="365.76" y2="-104.14" width="0.1524" layer="91"/>
<wire x1="365.76" y1="-167.64" x2="345.44" y2="-167.64" width="0.1524" layer="91"/>
<wire x1="345.44" y1="-167.64" x2="345.44" y2="-104.14" width="0.1524" layer="91"/>
<junction x="345.44" y="-104.14"/>
<pinref part="LED_R3C7" gate="G$1" pin="N"/>
<wire x1="365.76" y1="-231.14" x2="345.44" y2="-231.14" width="0.1524" layer="91"/>
<wire x1="345.44" y1="-231.14" x2="345.44" y2="-167.64" width="0.1524" layer="91"/>
<junction x="345.44" y="-167.64"/>
<pinref part="CN4" gate="-19" pin="S"/>
</segment>
</net>
<net name="COL7_P" class="0">
<segment>
<pinref part="LED_R1C7" gate="G$1" pin="P"/>
<wire x1="307.34" y1="-106.68" x2="347.98" y2="-106.68" width="0.1524" layer="91"/>
<label x="309.88" y="-106.68" size="1.27" layer="95"/>
<pinref part="LED_R2C7" gate="G$1" pin="P"/>
<wire x1="347.98" y1="-106.68" x2="365.76" y2="-106.68" width="0.1524" layer="91"/>
<wire x1="365.76" y1="-170.18" x2="347.98" y2="-170.18" width="0.1524" layer="91"/>
<wire x1="347.98" y1="-170.18" x2="347.98" y2="-106.68" width="0.1524" layer="91"/>
<junction x="347.98" y="-106.68"/>
<pinref part="LED_R3C7" gate="G$1" pin="P"/>
<wire x1="365.76" y1="-233.68" x2="347.98" y2="-233.68" width="0.1524" layer="91"/>
<wire x1="347.98" y1="-233.68" x2="347.98" y2="-170.18" width="0.1524" layer="91"/>
<junction x="347.98" y="-170.18"/>
<pinref part="CN4" gate="-17" pin="S"/>
</segment>
</net>
<net name="COL7_R" class="0">
<segment>
<pinref part="LED_R1C7" gate="G$1" pin="R"/>
<wire x1="307.34" y1="-109.22" x2="350.52" y2="-109.22" width="0.1524" layer="91"/>
<label x="309.88" y="-109.22" size="1.27" layer="95"/>
<pinref part="LED_R2C7" gate="G$1" pin="R"/>
<wire x1="350.52" y1="-109.22" x2="365.76" y2="-109.22" width="0.1524" layer="91"/>
<wire x1="365.76" y1="-172.72" x2="350.52" y2="-172.72" width="0.1524" layer="91"/>
<wire x1="350.52" y1="-172.72" x2="350.52" y2="-109.22" width="0.1524" layer="91"/>
<junction x="350.52" y="-109.22"/>
<pinref part="LED_R3C7" gate="G$1" pin="R"/>
<wire x1="365.76" y1="-236.22" x2="350.52" y2="-236.22" width="0.1524" layer="91"/>
<wire x1="350.52" y1="-236.22" x2="350.52" y2="-172.72" width="0.1524" layer="91"/>
<junction x="350.52" y="-172.72"/>
<pinref part="CN4" gate="-24" pin="S"/>
</segment>
</net>
<net name="COL7_S" class="0">
<segment>
<pinref part="LED_R1C7" gate="G$1" pin="S"/>
<wire x1="307.34" y1="-111.76" x2="353.06" y2="-111.76" width="0.1524" layer="91"/>
<label x="309.88" y="-111.76" size="1.27" layer="95"/>
<pinref part="LED_R2C7" gate="G$1" pin="S"/>
<wire x1="353.06" y1="-111.76" x2="365.76" y2="-111.76" width="0.1524" layer="91"/>
<wire x1="365.76" y1="-175.26" x2="353.06" y2="-175.26" width="0.1524" layer="91"/>
<wire x1="353.06" y1="-175.26" x2="353.06" y2="-111.76" width="0.1524" layer="91"/>
<junction x="353.06" y="-111.76"/>
<pinref part="LED_R3C7" gate="G$1" pin="S"/>
<wire x1="365.76" y1="-238.76" x2="353.06" y2="-238.76" width="0.1524" layer="91"/>
<wire x1="353.06" y1="-238.76" x2="353.06" y2="-175.26" width="0.1524" layer="91"/>
<junction x="353.06" y="-175.26"/>
<pinref part="CN2" gate="-35" pin="S"/>
</segment>
</net>
<net name="COL7_T" class="0">
<segment>
<pinref part="LED_R1C7" gate="G$1" pin="T"/>
<wire x1="307.34" y1="-114.3" x2="355.6" y2="-114.3" width="0.1524" layer="91"/>
<label x="309.88" y="-114.3" size="1.27" layer="95"/>
<pinref part="LED_R2C7" gate="G$1" pin="T"/>
<wire x1="355.6" y1="-114.3" x2="365.76" y2="-114.3" width="0.1524" layer="91"/>
<wire x1="365.76" y1="-177.8" x2="355.6" y2="-177.8" width="0.1524" layer="91"/>
<wire x1="355.6" y1="-177.8" x2="355.6" y2="-114.3" width="0.1524" layer="91"/>
<junction x="355.6" y="-114.3"/>
<pinref part="LED_R3C7" gate="G$1" pin="T"/>
<wire x1="365.76" y1="-241.3" x2="355.6" y2="-241.3" width="0.1524" layer="91"/>
<wire x1="355.6" y1="-241.3" x2="355.6" y2="-177.8" width="0.1524" layer="91"/>
<junction x="355.6" y="-177.8"/>
<pinref part="CN2" gate="-34" pin="S"/>
</segment>
</net>
<net name="COL7_U" class="0">
<segment>
<pinref part="LED_R1C7" gate="G$1" pin="U"/>
<wire x1="307.34" y1="-116.84" x2="358.14" y2="-116.84" width="0.1524" layer="91"/>
<label x="309.88" y="-116.84" size="1.27" layer="95"/>
<pinref part="LED_R2C7" gate="G$1" pin="U"/>
<wire x1="358.14" y1="-116.84" x2="365.76" y2="-116.84" width="0.1524" layer="91"/>
<wire x1="365.76" y1="-180.34" x2="358.14" y2="-180.34" width="0.1524" layer="91"/>
<wire x1="358.14" y1="-180.34" x2="358.14" y2="-116.84" width="0.1524" layer="91"/>
<junction x="358.14" y="-116.84"/>
<pinref part="LED_R3C7" gate="G$1" pin="U"/>
<wire x1="365.76" y1="-243.84" x2="358.14" y2="-243.84" width="0.1524" layer="91"/>
<wire x1="358.14" y1="-243.84" x2="358.14" y2="-180.34" width="0.1524" layer="91"/>
<junction x="358.14" y="-180.34"/>
<pinref part="CN2" gate="-36" pin="S"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="CN4" gate="-37" pin="S"/>
<pinref part="GND1" gate="1" pin="GND"/>
<wire x1="-203.2" y1="-76.2" x2="-200.66" y2="-76.2" width="0.1524" layer="91"/>
<wire x1="-200.66" y1="-76.2" x2="-200.66" y2="-81.28" width="0.1524" layer="91"/>
<pinref part="CN4" gate="-39" pin="S"/>
<wire x1="-203.2" y1="-73.66" x2="-200.66" y2="-73.66" width="0.1524" layer="91"/>
<wire x1="-200.66" y1="-73.66" x2="-200.66" y2="-76.2" width="0.1524" layer="91"/>
<junction x="-200.66" y="-76.2"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
