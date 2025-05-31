<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="xbr" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_6" />
        <signal name="XLXN_7" />
        <signal name="PLL" />
        <signal name="POST" />
        <signal name="XLXN_11" />
        <signal name="XLXN_15" />
        <signal name="BUT" />
        <signal name="RST" />
        <signal name="XLXN_41" />
        <signal name="CLK" />
        <signal name="SMC" />
        <signal name="XLXN_37" />
        <signal name="DBG" />
        <signal name="XLXN_16" />
        <signal name="CES" />
        <signal name="CED" />
        <signal name="CEQ" />
        <signal name="CET" />
        <signal name="CEP" />
        <port polarity="Output" name="PLL" />
        <port polarity="Input" name="POST" />
        <port polarity="Input" name="BUT" />
        <port polarity="BiDirectional" name="RST" />
        <port polarity="Input" name="CLK" />
        <port polarity="Output" name="SMC" />
        <port polarity="Output" name="DBG" />
        <port polarity="Output" name="CES" />
        <port polarity="Output" name="CED" />
        <port polarity="Output" name="CEQ" />
        <port polarity="Output" name="CET" />
        <port polarity="Output" name="CEP" />
        <blockdef name="post_proc">
            <timestamp>2021-5-26T4:18:24</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <line x2="64" y1="-96" y2="-96" x1="0" />
        </blockdef>
        <blockdef name="divider_slow">
            <timestamp>2021-4-28T14:41:42</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="slower">
            <timestamp>2021-9-29T17:32:42</timestamp>
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <line x2="320" y1="-96" y2="-96" x1="384" />
        </blockdef>
        <blockdef name="divider_dual">
            <timestamp>2021-5-6T20:38:37</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="or2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
        </blockdef>
        <blockdef name="divider_post">
            <timestamp>2021-5-6T22:1:21</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="penta_nand">
            <timestamp>2022-8-5T15:13:53</timestamp>
            <rect width="256" x="64" y="-448" height="448" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="post_proc" name="XLXI_3">
            <blockpin signalname="XLXN_15" name="CLK" />
            <blockpin signalname="XLXN_6" name="to_slow" />
            <blockpin signalname="XLXN_41" name="DBG" />
            <blockpin signalname="RST" name="RST" />
            <blockpin signalname="POST" name="POST" />
            <blockpin signalname="XLXN_11" name="callback" />
        </block>
        <block symbolname="divider_slow" name="XLXI_4">
            <blockpin signalname="XLXN_15" name="CLK" />
            <blockpin signalname="XLXN_7" name="CLK_S" />
        </block>
        <block symbolname="slower" name="XLXI_5">
            <blockpin signalname="XLXN_7" name="CLK" />
            <blockpin signalname="XLXN_6" name="in_slow" />
            <blockpin signalname="PLL" name="PLL" />
            <blockpin signalname="XLXN_11" name="callback" />
        </block>
        <block symbolname="divider_post" name="XLXI_10">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="XLXN_15" name="CLK_P" />
        </block>
        <block symbolname="or2" name="XLXI_9">
            <blockpin signalname="XLXN_41" name="I0" />
            <blockpin signalname="XLXN_37" name="I1" />
            <blockpin signalname="DBG" name="O" />
        </block>
        <block symbolname="divider_dual" name="XLXI_7">
            <blockpin signalname="XLXN_7" name="CLK" />
            <blockpin signalname="XLXN_16" name="CLK_D" />
        </block>
        <block symbolname="penta_nand" name="XLXI_13">
            <blockpin signalname="RST" name="RST" />
            <blockpin signalname="CES" name="CES" />
            <blockpin signalname="CED" name="CED" />
            <blockpin signalname="CET" name="CET" />
            <blockpin signalname="CEQ" name="CEQ" />
            <blockpin signalname="CEP" name="CEP" />
            <blockpin signalname="XLXN_16" name="CLK" />
            <blockpin signalname="BUT" name="BUT" />
            <blockpin signalname="SMC" name="SMC" />
            <blockpin signalname="XLXN_37" name="DBG" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1648" y="1472" name="XLXI_3" orien="R0">
        </instance>
        <instance x="1648" y="1632" name="XLXI_4" orien="R0">
        </instance>
        <branch name="XLXN_6">
            <wire x2="2208" y1="1312" y2="1312" x1="2032" />
        </branch>
        <instance x="2208" y="1408" name="XLXI_5" orien="R0">
        </instance>
        <branch name="PLL">
            <wire x2="2608" y1="1376" y2="1376" x1="2592" />
        </branch>
        <iomarker fontsize="28" x="2608" y="1376" name="PLL" orien="R0" />
        <branch name="POST">
            <wire x2="1648" y1="1376" y2="1376" x1="1632" />
        </branch>
        <branch name="XLXN_11">
            <wire x2="1632" y1="1200" y2="1312" x1="1632" />
            <wire x2="1648" y1="1312" y2="1312" x1="1632" />
            <wire x2="2608" y1="1200" y2="1200" x1="1632" />
            <wire x2="2608" y1="1200" y2="1312" x1="2608" />
            <wire x2="2608" y1="1312" y2="1312" x1="2592" />
        </branch>
        <iomarker fontsize="28" x="2096" y="1440" name="RST" orien="R0" />
        <branch name="RST">
            <wire x2="2064" y1="1440" y2="1440" x1="2032" />
            <wire x2="2096" y1="1440" y2="1440" x1="2064" />
            <wire x2="2064" y1="1440" y2="1584" x1="2064" />
            <wire x2="2208" y1="1584" y2="1584" x1="2064" />
        </branch>
        <branch name="BUT">
            <wire x2="2208" y1="1776" y2="1776" x1="2192" />
        </branch>
        <iomarker fontsize="28" x="2192" y="1776" name="BUT" orien="R180" />
        <iomarker fontsize="28" x="1632" y="1376" name="POST" orien="R180" />
        <branch name="XLXN_15">
            <wire x2="1632" y1="1520" y2="1520" x1="1616" />
            <wire x2="1632" y1="1520" y2="1600" x1="1632" />
            <wire x2="1648" y1="1600" y2="1600" x1="1632" />
            <wire x2="1648" y1="1440" y2="1440" x1="1632" />
            <wire x2="1632" y1="1440" y2="1520" x1="1632" />
        </branch>
        <instance x="1232" y="1552" name="XLXI_10" orien="R0">
        </instance>
        <branch name="CLK">
            <wire x2="1232" y1="1520" y2="1520" x1="1216" />
        </branch>
        <iomarker fontsize="28" x="1216" y="1520" name="CLK" orien="R180" />
        <branch name="XLXN_41">
            <wire x2="2048" y1="1216" y2="1216" x1="1040" />
            <wire x2="2048" y1="1216" y2="1376" x1="2048" />
            <wire x2="1040" y1="1216" y2="2032" x1="1040" />
            <wire x2="2608" y1="2032" y2="2032" x1="1040" />
            <wire x2="2048" y1="1376" y2="1376" x1="2032" />
        </branch>
        <branch name="XLXN_37">
            <wire x2="2608" y1="1968" y2="1968" x1="2592" />
        </branch>
        <branch name="DBG">
            <wire x2="2880" y1="2000" y2="2000" x1="2864" />
        </branch>
        <instance x="2608" y="2096" name="XLXI_9" orien="R0" />
        <iomarker fontsize="28" x="2880" y="2000" name="DBG" orien="R0" />
        <branch name="XLXN_16">
            <wire x2="2048" y1="1968" y2="1968" x1="2032" />
            <wire x2="2208" y1="1968" y2="1968" x1="2048" />
        </branch>
        <instance x="1648" y="2000" name="XLXI_7" orien="R0">
        </instance>
        <branch name="XLXN_7">
            <wire x2="1584" y1="1824" y2="1968" x1="1584" />
            <wire x2="1648" y1="1968" y2="1968" x1="1584" />
            <wire x2="2048" y1="1824" y2="1824" x1="1584" />
            <wire x2="2048" y1="1600" y2="1600" x1="2032" />
            <wire x2="2192" y1="1600" y2="1600" x1="2048" />
            <wire x2="2048" y1="1600" y2="1824" x1="2048" />
            <wire x2="2208" y1="1376" y2="1376" x1="2192" />
            <wire x2="2192" y1="1376" y2="1600" x1="2192" />
        </branch>
        <instance x="2208" y="2000" name="XLXI_13" orien="R0">
        </instance>
        <branch name="CES">
            <wire x2="2608" y1="1584" y2="1584" x1="2592" />
        </branch>
        <iomarker fontsize="28" x="2608" y="1584" name="CES" orien="R0" />
        <branch name="CED">
            <wire x2="2608" y1="1648" y2="1648" x1="2592" />
        </branch>
        <iomarker fontsize="28" x="2608" y="1648" name="CED" orien="R0" />
        <branch name="CEQ">
            <wire x2="2608" y1="1776" y2="1776" x1="2592" />
        </branch>
        <iomarker fontsize="28" x="2608" y="1776" name="CEQ" orien="R0" />
        <branch name="CET">
            <wire x2="2608" y1="1712" y2="1712" x1="2592" />
        </branch>
        <iomarker fontsize="28" x="2608" y="1712" name="CET" orien="R0" />
        <branch name="SMC">
            <wire x2="2608" y1="1904" y2="1904" x1="2592" />
        </branch>
        <iomarker fontsize="28" x="2608" y="1904" name="SMC" orien="R0" />
    </sheet>
</drawing>
