<map version="0.9.0">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1329134605664" ID="ID_1305478691" MODIFIED="1329733452956" STYLE="fork" TEXT="The Grand Unified Theory of Software">
<font NAME="SansSerif" SIZE="20"/>
<node CREATED="1329361639888" FOLDED="true" ID="ID_1550572140" MODIFIED="1329503987044" POSITION="left" STYLE="fork" TEXT="The big idea">
<icon BUILTIN="idea"/>
<node CREATED="1329361648288" ID="ID_834525889" MODIFIED="1329388699536" STYLE="fork" TEXT="Define code as structures a la mechanical primitives"/>
<node CREATED="1329361663328" ID="ID_1639702695" MODIFIED="1329388699536" STYLE="fork" TEXT="Create rules to represent applications as aggregates of such primitives"/>
<node CREATED="1329361823522" ID="ID_695361399" MODIFIED="1329388699536" STYLE="fork" TEXT="model notions of stability, brittleness, etc as functions of the aggregate structure"/>
<node CREATED="1329361696268" ID="ID_1349652182" MODIFIED="1329388699536" STYLE="fork" TEXT="Model things that cause code to change structure or behavior as forces that act on it and derive ways of predicting their impact"/>
<node CREATED="1329362268365" ID="ID_126440965" MODIFIED="1329388699536" STYLE="fork" TEXT="Model the subjective nature of such a theory by including the human observer within it"/>
<node CREATED="1329362307465" ID="ID_31566439" MODIFIED="1329388699536" STYLE="fork" TEXT="Model the &quot;Turtles all the way down&quot; nature of software"/>
</node>
<node CREATED="1329134649336" FOLDED="true" ID="ID_1070783728" MODIFIED="1329504402323" POSITION="left" STYLE="fork" TEXT="structure">
<node CREATED="1329134653683" ID="ID_987058451" MODIFIED="1329408416777" STYLE="fork" TEXT="what the building blocks of software are"/>
<node CREATED="1329371654990" FOLDED="true" ID="ID_1280834606" MODIFIED="1329504243491" STYLE="fork" TEXT="ways of thinking about the building blocks">
<node CREATED="1329371666760" ID="ID_299040272" MODIFIED="1329388695816" STYLE="fork" TEXT="they are bricks stacked one on top of the other"/>
<node CREATED="1329371676390" ID="ID_319776305" MODIFIED="1329388695816" STYLE="fork" TEXT="they are pipes connected to each other through which data flows"/>
<node CREATED="1329372553662" ID="ID_1816357960" MODIFIED="1329388695816" STYLE="fork">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      combination: they are like bricks&#160;for static analysis
    </p>
    <p>
      and pipes for dynamic analysis
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1329397248014" ID="ID_434693058" MODIFIED="1329397306926" TEXT="it also helps to think of new statements jacking the older ones up&#xa;and the structure being built by continously pushing pieces upwards"/>
<node CREATED="1329397316584" ID="ID_561717926" MODIFIED="1329397359946">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      This also jives with the notion of &quot;higher up = less stable&quot;&#160;
    </p>
    <p>
      AND that of starting the execution at the top
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1329134666921" ID="ID_856519527" MODIFIED="1329388695816" STYLE="fork" TEXT="how they&apos;re combined"/>
<node CREATED="1329134827118" ID="ID_1967589898" MODIFIED="1329388695816" STYLE="fork" TEXT="sw is linked pieces of code">
<node CREATED="1329134842165" ID="ID_1521901268" MODIFIED="1329388695816" STYLE="fork" TEXT="that can be brittle">
<node CREATED="1329134853372" ID="ID_329435738" MODIFIED="1329388695816" STYLE="fork" TEXT="or flexible"/>
</node>
</node>
<node CREATED="1329361807362" ID="ID_40031544" MODIFIED="1329388695816" STYLE="fork" TEXT="sw can have stability">
<node CREATED="1329361812432" FOLDED="true" ID="ID_1157038028" MODIFIED="1329504400178" STYLE="fork" TEXT="Notions of stability">
<node CREATED="1329397828395" ID="ID_1058483500" MODIFIED="1329397840087" TEXT="structural stability: will it stay up?"/>
<node CREATED="1329397840715" ID="ID_1780894444" MODIFIED="1329397863597" TEXT="stability under load: Will it stay up with 1MM hits?"/>
<node CREATED="1329397864245" FOLDED="true" ID="ID_569201878" MODIFIED="1329504398306">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      As a negative of breakage: What will cause it to break?
    </p>
    <p>
      Thus, what will NOT cause breakage?
    </p>
  </body>
</html></richcontent>
<node CREATED="1329397944335" ID="ID_1650142406" MODIFIED="1329397959777" TEXT="=&gt; Stability = 1 - P(Breakage)"/>
<node CREATED="1329397984285" ID="ID_1455470515" MODIFIED="1329397995947" TEXT="This definition also allows notions such as:">
<node CREATED="1329397997515" ID="ID_254151621" MODIFIED="1329398004857" TEXT="Breaking strength of an app"/>
<node CREATED="1329398005195" ID="ID_1852215685" MODIFIED="1329398014177" TEXT="MTBF definitions"/>
</node>
<node CREATED="1329399381223" FOLDED="true" ID="ID_1642355631" MODIFIED="1329503876281" TEXT="The breakage ladder">
<node CREATED="1329399387913" ID="ID_1504436173" MODIFIED="1329399406745" TEXT="didnt parse"/>
<node CREATED="1329399407013" ID="ID_1991370124" MODIFIED="1329399410355" TEXT="didnt compile"/>
<node CREATED="1329399410993" ID="ID_389385197" MODIFIED="1329399413045" TEXT="didnt link"/>
<node CREATED="1329399424743" ID="ID_706745565" MODIFIED="1329399426665" TEXT="didnt merge"/>
<node CREATED="1329399413573" ID="ID_1160575097" MODIFIED="1329399416035" TEXT="didnt run"/>
<node CREATED="1329399443983" ID="ID_203116052" MODIFIED="1329399447615" TEXT="stopped running with load"/>
<node CREATED="1329399430483" ID="ID_1618315255" MODIFIED="1329399439555" TEXT="stopped running over time"/>
</node>
</node>
<node CREATED="1329398946582" ID="ID_1470224447" MODIFIED="1329399013164">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      sequences add height, modularity adds width
    </p>
    <p>
      That is, every subroutine call adds to the width of the routine (think activity diagram)
    </p>
    <p>
      and therefore reduces the overall height
    </p>
  </body>
</html></richcontent>
<node CREATED="1329399169673" ID="ID_887546729" MODIFIED="1329399187105" TEXT="thus, the lesser area (h x w), the better structural stability"/>
</node>
</node>
</node>
<node CREATED="1329134864005" FOLDED="true" ID="ID_683906679" MODIFIED="1329503944683" STYLE="fork" TEXT="sw can have weight">
<node CREATED="1329134872289" ID="ID_1631969535" MODIFIED="1329388695816" STYLE="fork" TEXT="like page weight"/>
<node CREATED="1329134877235" ID="ID_1632559301" MODIFIED="1329388695816" STYLE="fork" TEXT="or memory size"/>
</node>
</node>
<node CREATED="1329362353999" FOLDED="true" ID="ID_340451030" MODIFIED="1329398933974" POSITION="left" STYLE="fork" TEXT="forces on the structure">
<node CREATED="1329134682959" ID="ID_1600311431" MODIFIED="1329388692536" STYLE="fork" TEXT="change">
<node CREATED="1329134690834" ID="ID_743650862" MODIFIED="1329388692536" STYLE="fork" TEXT="how software changes"/>
<node CREATED="1329134697817" ID="ID_888730334" MODIFIED="1329388692536" STYLE="fork" TEXT="how this impacts the structure"/>
<node CREATED="1329134705554" ID="ID_281651636" MODIFIED="1329388692536" STYLE="fork" TEXT="the agents of change"/>
</node>
<node CREATED="1329362368457" ID="ID_868700252" MODIFIED="1329388692536" STYLE="fork" TEXT="build-time constraints">
<node CREATED="1329362414277" ID="ID_669252699" MODIFIED="1329388692536" STYLE="fork" TEXT="functional requirements"/>
<node CREATED="1329362421137" ID="ID_1706693406" MODIFIED="1329388692536" STYLE="fork" TEXT="non-functional requirements"/>
<node CREATED="1329362425567" ID="ID_1628002402" MODIFIED="1329388692536" STYLE="fork" TEXT="political forces"/>
<node CREATED="1329362436257" ID="ID_82476935" MODIFIED="1329388692536" STYLE="fork" TEXT="developer preference"/>
</node>
<node CREATED="1329362401317" ID="ID_1092078847" MODIFIED="1329388692536" STYLE="fork" TEXT="run-time constraints">
<node CREATED="1329362446557" ID="ID_1469375182" MODIFIED="1329388692536" STYLE="fork" TEXT="load"/>
<node CREATED="1329362450817" ID="ID_723732362" MODIFIED="1329388692536" STYLE="fork" TEXT="capacity"/>
<node CREATED="1329362482197" ID="ID_894077226" MODIFIED="1329388692536" STYLE="fork" TEXT="more tbd">
<icon BUILTIN="messagebox_warning"/>
</node>
</node>
</node>
<node CREATED="1329362520907" FOLDED="true" ID="ID_1392220180" MODIFIED="1329503728849" POSITION="left" STYLE="fork" TEXT="Questions expected to be answered">
<icon BUILTIN="help"/>
<node CREATED="1329362530967" ID="ID_203580458" MODIFIED="1329388684476" STYLE="fork" TEXT="Is this piece of software stable? Flexible? Brittle?"/>
<node CREATED="1329389523317" ID="ID_1484561328" MODIFIED="1329389532897" TEXT="Can I define how complex a system is based on its code?">
<node CREATED="1329389534437" ID="ID_1685294786" MODIFIED="1329389548187" TEXT="how can I use this to develop a plan to understand it?">
<node CREATED="1329389553067" ID="ID_206163394" MODIFIED="1329389557997" TEXT="What is important/core?"/>
<node CREATED="1329389558527" ID="ID_369668103" MODIFIED="1329389569316" TEXT="What is large in size?"/>
</node>
</node>
<node CREATED="1329362541478" ID="ID_794945914" MODIFIED="1329388684476" STYLE="fork" TEXT="if I change X, what will happen to the software?"/>
<node CREATED="1329362639887" ID="ID_442734906" MODIFIED="1329388684476" STYLE="fork" TEXT="How much change of X can the software take before it breaks?"/>
<node CREATED="1329362665951" ID="ID_139738722" MODIFIED="1329388684476" STYLE="fork" TEXT="What is the cost of changing X?"/>
<node CREATED="1329362584607" ID="ID_1234208980" MODIFIED="1329388684476" STYLE="fork" TEXT="How did it reach its current state of stability/flexibility/brittleness?"/>
</node>
<node CREATED="1329298773513" ID="ID_690891581" MODIFIED="1329388684476" POSITION="right" STYLE="fork" TEXT="All definitions are &quot;at a certain level&quot; defined by a human observer called the &quot;user&quot;"/>
<node CREATED="1329298743240" FOLDED="true" ID="ID_1248203685" MODIFIED="1329504670313" POSITION="right" STYLE="fork" TEXT="statements are the atoms of software - at a given level">
<node CREATED="1329298834443" ID="ID_368024794" MODIFIED="1329388684476" STYLE="fork" TEXT="they have context and a user at their level"/>
<node CREATED="1329298847884" ID="ID_12407724" MODIFIED="1329388684466" STYLE="fork" TEXT="meaning at a level above them"/>
<node CREATED="1329298854804" ID="ID_632534766" MODIFIED="1329388684466" STYLE="fork" TEXT="implementation at a level below them"/>
<node CREATED="1329298864691" FOLDED="true" ID="ID_1994379696" MODIFIED="1329504646983" STYLE="fork" TEXT="so statement can be represented as: s: (M,C,U, B)">
<node CREATED="1329298922118" FOLDED="true" ID="ID_32609701" MODIFIED="1329504509344" STYLE="fork" TEXT="M: Meaning - facts/ s^1">
<node CREATED="1329301488392" ID="ID_1879104980" MODIFIED="1329388684466" STYLE="fork" TEXT="meaning is always orthogonal to Base and the set of executors made available"/>
<node CREATED="1329367096777" ID="ID_1104548130" MODIFIED="1329388684466" STYLE="fork" TEXT="meaning is expressed in an informal way eg, English, to denote that its not directly amenable to mechanical processing"/>
<node CREATED="1329367124519" ID="ID_1048240758" MODIFIED="1329388684466" STYLE="fork" TEXT="it is possible to ascribe FOPL (or even imperative) semantics to meaning.Some gain in higher-order calculation is obviously possible, but Godel&apos;s limits render it eventually pointless."/>
<node CREATED="1329367189823" ID="ID_13323861" MODIFIED="1329388684466" STYLE="fork" TEXT="the point of representing meaning is that processes occuring inside the user&apos;s mind can be modeled as being contained in it"/>
</node>
<node CREATED="1329298944528" FOLDED="true" ID="ID_1087983480" MODIFIED="1329504498022" STYLE="fork" TEXT="C: Context: (I, E, O, S)">
<node CREATED="1329298982502" ID="ID_579882248" MODIFIED="1329388684466" STYLE="fork" TEXT="I: Input: Inputs to the statement"/>
<node CREATED="1329299054052" ID="ID_866873097" MODIFIED="1329388684466" STYLE="fork" TEXT="E: Executor: the part of the base that knows how to execute the statment"/>
<node CREATED="1329298992763" ID="ID_452576411" MODIFIED="1329388684466" STYLE="fork" TEXT="O: Output: Outputs from the statement"/>
<node CREATED="1329299010626" ID="ID_717653547" MODIFIED="1329388684466" STYLE="fork" TEXT="S: Side effects: Impacts to the context as a result of executing the statment"/>
</node>
<node CREATED="1329299115185" ID="ID_164678851" MODIFIED="1329388684466" STYLE="fork" TEXT="U: User: who observes, optionally provides input and/or on whose behalf the execution happens"/>
<node CREATED="1329298954183" ID="ID_1136311919" MODIFIED="1329504538159" STYLE="fork" TEXT="B: Base: (Eb, Sb)">
<node CREATED="1329300257297" ID="ID_204877095" MODIFIED="1329388684466" STYLE="fork" TEXT="A Base B is a collection of executors Eb that can execute a set of statements Sb"/>
<node CREATED="1329303401201" ID="ID_1277440693" MODIFIED="1329388684466" STYLE="fork">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      gravity (<b>g<sub>B</sub></b>): an arbitrary number that denotes the size of the base
    </p>
    <p>
      <b>g<sub>B</sub></b>= c1 * |Eb|, where c1 is a measure of the overall &quot;icebergness&quot; of the base.
    </p>
    <p>
      <b>g<sub>B </sub></b>should be used as a measure of comparing two bases.
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1329302096012" FOLDED="true" ID="ID_1824290203" MODIFIED="1329504669449" TEXT="Special Statements">
<node CREATED="1329396047946" ID="ID_1494261248" MODIFIED="1329396060648" TEXT="Input"/>
<node CREATED="1329396053306" ID="ID_1108604133" MODIFIED="1329396063318" TEXT="Output"/>
<node CREATED="1329396019036" ID="ID_1497708583" MODIFIED="1329396021018" TEXT="Branch"/>
<node CREATED="1329302022151" ID="ID_478667032" MODIFIED="1329388684376" STYLE="fork" TEXT="Fork"/>
<node CREATED="1329302048850" ID="ID_636541915" MODIFIED="1329388684376" STYLE="fork" TEXT="Join"/>
<node CREATED="1329302117322" ID="ID_1923966136" MODIFIED="1329388684376" STYLE="fork" TEXT="Loop">
<node CREATED="1329396202606" ID="ID_471839668" MODIFIED="1329396223308" TEXT="Should this be just a spl case of branch? TBD">
<icon BUILTIN="messagebox_warning"/>
</node>
</node>
<node CREATED="1329303532367" ID="ID_1341171281" MODIFIED="1329388684376" STYLE="fork" TEXT="Quote"/>
<node CREATED="1329303536887" ID="ID_905807551" MODIFIED="1329388684376" STYLE="fork" TEXT="Eval"/>
</node>
</node>
<node CREATED="1329301597637" ID="ID_1443429226" MODIFIED="1329505138814" POSITION="right" STYLE="fork" TEXT="properties of statements">
<node CREATED="1329303908525" FOLDED="true" ID="ID_1350894160" MODIFIED="1329505248481" STYLE="fork" TEXT="static">
<node CREATED="1329302616557" ID="ID_775908008" MODIFIED="1329392430283" STYLE="fork" TEXT="h: height: distance from the base in count of statements">
<node CREATED="1329363894983" ID="ID_757283116" MODIFIED="1329388684456" STYLE="fork" TEXT="1 for statements"/>
<node CREATED="1329370762630" ID="ID_1889767535" MODIFIED="1329388684456" STYLE="fork" TEXT="statement aggregates will obviously have &gt;1 height"/>
</node>
<node CREATED="1329301655139" ID="ID_1339697097" MODIFIED="1329392435693" STYLE="fork" TEXT="m: mass: Space complexity of the statement wrt the context">
<node CREATED="1329389288782" ID="ID_557447816" MODIFIED="1329389420979" TEXT="this will be used to determine footprint, not stability">
<icon BUILTIN="messagebox_warning"/>
</node>
</node>
<node CREATED="1329372695234" ID="ID_281595980" MODIFIED="1329392440493" STYLE="fork" TEXT="w: weight: mass x gb">
<node CREATED="1329372708475" ID="ID_95823430" MODIFIED="1329388684456" STYLE="fork" TEXT="this just seems cool. but will it be needed? tbd">
<icon BUILTIN="messagebox_warning"/>
<icon BUILTIN="attach"/>
</node>
</node>
<node CREATED="1329301651659" ID="ID_1700809000" MODIFIED="1329392452593" STYLE="fork" TEXT="s: speed: Big O of the statement wrt the context">
<node CREATED="1329389004934" ID="ID_1500179884" MODIFIED="1329389031453" TEXT="alternately, using the pipe model, 1/speed would be the resistance to flow"/>
<node CREATED="1329389040722" ID="ID_550091586" MODIFIED="1329389057832" TEXT="More work on this when I reach the dynamic parts">
<icon BUILTIN="messagebox_warning"/>
</node>
</node>
<node CREATED="1329303666165" ID="ID_1624160501" MODIFIED="1329392458473" STYLE="fork" TEXT="Fi: fan in: the number of unique inputs to the statement"/>
<node CREATED="1329303679935" ID="ID_1356335565" MODIFIED="1329392464063" STYLE="fork" TEXT="Fo: fan out: the number of unique outputs to the statement"/>
<node CREATED="1329303688655" ID="ID_1500910572" MODIFIED="1329392469353" STYLE="fork" TEXT="E: effects: the number of unique side effects due to its execution"/>
<node CREATED="1329304133162" ID="ID_1778094766" MODIFIED="1329392578153" STYLE="fork">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      c: complexity&#160;= (7*E + sgn * ( 2*Fo + Fi))/7
    </p>
    <p>
      &#160;&#160;&#160;where sgn = ((E+1) mod 2) * ((E+1) - E^2)
    </p>
    <p>
      this has a range of [0,1]
    </p>
  </body>
</html></richcontent>
<node CREATED="1329304280307" ID="ID_783685951" MODIFIED="1329388684456" STYLE="fork" TEXT="Measure of how difficult the statement is to understand"/>
<node CREATED="1329304311925" ID="ID_550333114" MODIFIED="1329388684456" STYLE="fork" TEXT="Less is better"/>
<node CREATED="1329333227389" ID="ID_594899236" MODIFIED="1329388684466" STYLE="fork" TEXT="Note: fact, function and proc are used below for latent meaning. Statemnts are NOT actually any of these">
<icon BUILTIN="attach"/>
</node>
<node CREATED="1329305213829" ID="ID_230257826" MODIFIED="1329388684466" STYLE="fork">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      effects | outputs | inputs | c7y&#160;&#160;&#160;| comment
    </p>
    <p>
      = = = = = = = = =====================
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;N&#160;&#160;&#160;&#160;&#160;|&#160;&#160;&#160;&#160;&#160;N&#160;&#160;&#160;&#160;&#160;&#160;&#160;|&#160;&#160;&#160;&#160;&#160;N&#160;&#160;&#160;&#160;&#160;&#160;&#160;|&#160;&#160;&#160;0&#160;&#160;&#160;&#160;| No impact at all - not a statement
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;N&#160;&#160;&#160;&#160;&#160;|&#160;&#160;&#160;&#160;&#160;N&#160;&#160;&#160;&#160;&#160;&#160;&#160;|&#160;&#160;&#160;&#160;&#160;Y&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;|&#160;&#160;&#160;1&#160;&#160;&#160;&#160;| NOOP
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;N&#160;&#160;&#160;&#160;&#160;|&#160;&#160;&#160;&#160;&#160;Y&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;|&#160;&#160;&#160;&#160;&#160;N&#160;&#160;&#160;&#160;&#160;&#160;&#160;|&#160;&#160;&#160;2&#160;&#160;&#160;&#160;| Fact
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;N&#160;&#160;&#160;&#160;&#160;|&#160;&#160;&#160;&#160;&#160;Y&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;|&#160;&#160;&#160;&#160;&#160;Y&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;|&#160;&#160;&#160;3&#160;&#160;&#160;&#160;| Fn
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;Y&#160;&#160;&#160;&#160;&#160;&#160;|&#160;&#160;&#160;&#160;&#160;N&#160;&#160;&#160;&#160;&#160;&#160;&#160;|&#160;&#160;&#160;&#160;&#160;N&#160;&#160;&#160;&#160;&#160;&#160;&#160;|&#160;&#160;&#160;7&#160;&#160;&#160;&#160;| Proc Proc
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;Y&#160;&#160;&#160;&#160;&#160;&#160;|&#160;&#160;&#160;&#160;&#160;N&#160;&#160;&#160;&#160;&#160;&#160;&#160;|&#160;&#160;&#160;&#160;&#160;Y&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;|&#160;&#160;&#160;6&#160;&#160;&#160;&#160;| NOOP Proc
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;Y&#160;&#160;&#160;&#160;&#160;&#160;|&#160;&#160;&#160;&#160;&#160;Y&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;|&#160;&#160;&#160;&#160;&#160;N&#160;&#160;&#160;&#160;&#160;&#160;&#160;|&#160;&#160;&#160;5&#160;&#160;&#160;&#160;| Fact Proc
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;Y&#160;&#160;&#160;&#160;&#160;&#160;|&#160;&#160;&#160;&#160;&#160;Y&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;|&#160;&#160;&#160;&#160;&#160;Y&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;|&#160;&#160;&#160;4&#160;&#160;&#160;&#160;| Fn Proc
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1329360947343" ID="ID_832814093" MODIFIED="1329392633753" STYLE="fork" TEXT="sim: simplicity: 1-complexity">
<node CREATED="1329361368831" ID="ID_1484868274" MODIFIED="1329388684466" STYLE="fork" TEXT="note: i originally called this understandability">
<icon BUILTIN="attach"/>
</node>
</node>
<node CREATED="1329304429898" ID="ID_1028255278" MODIFIED="1329392640173" STYLE="fork" TEXT="S: stability">
<node CREATED="1329333342773" ID="ID_1779893464" MODIFIED="1329388684466" STYLE="fork" TEXT="=1 for statements"/>
<node CREATED="1329333374286" ID="ID_797636524" MODIFIED="1329391426051" STYLE="fork" TEXT="i thought for long about measuing stability of individual statements, but it seems to me after some thought that instability comes from the incorrect/complex combination of statements rather than the statements themselves.&#xa;Hence moving calculated stability to the aggregates"/>
</node>
<node CREATED="1329304462685" ID="ID_231771709" MODIFIED="1329392649283" STYLE="fork" TEXT="f: flexibility: Fi/(Fi+Fo+Fe)">
<node CREATED="1329333342773" ID="ID_1669841278" MODIFIED="1329388885486" STYLE="fork" TEXT="Measured as how many ways there are to influence the output"/>
<node CREATED="1329388888936" ID="ID_690871127" MODIFIED="1329388904225" TEXT="Therefore, the larger the input options, the larger the flexiblity"/>
<node CREATED="1329388948475" ID="ID_80861897" MODIFIED="1329389952679" TEXT="This is similar to Bob Martin&apos;s stability definition for classes and packages">
<icon BUILTIN="attach"/>
</node>
</node>
</node>
<node CREATED="1329303949626" FOLDED="true" ID="ID_602967971" MODIFIED="1329396101556" STYLE="fork" TEXT="dynamic">
<node CREATED="1329303955146" ID="ID_180446275" MODIFIED="1329388684466" STYLE="fork" TEXT="state: passive, loaded, active, done"/>
<node CREATED="1329303999547" ID="ID_1098763686" MODIFIED="1329388684466" STYLE="fork" TEXT="execution frame: sum total of the running context state"/>
</node>
</node>
<node CREATED="1329301746756" ID="ID_777864323" MODIFIED="1329388684376" POSITION="right" STYLE="fork" TEXT="changes on statements"/>
<node CREATED="1329301788158" ID="ID_726108879" MODIFIED="1329505263320" POSITION="right" STYLE="fork" TEXT="Aggregates of statements">
<node CREATED="1329299291952" FOLDED="true" ID="ID_26607867" MODIFIED="1329505305929" STYLE="fork" TEXT="Sequence of statements">
<node CREATED="1329394885325" ID="ID_857995712" MODIFIED="1329394905467" TEXT="This is a set of statements that are executed in exact order"/>
<node CREATED="1329299319451" ID="ID_830057011" MODIFIED="1329388684376" STYLE="fork" TEXT="s = s1 , s2 implies">
<node CREATED="1329299395229" ID="ID_828503570" MODIFIED="1329388684376" STYLE="fork" TEXT="M = M1 &amp; M2">
<node CREATED="1329299484368" ID="ID_1513203125" MODIFIED="1329388684376" STYLE="fork" TEXT="where &quot;&amp;&quot; implies a merge of the two meanings that is undefined at this level, but defined at the +1 level"/>
</node>
<node CREATED="1329299410098" ID="ID_1164785870" MODIFIED="1329388684376" STYLE="fork" TEXT="C = C1 + C2">
<node CREATED="1329299522278" ID="ID_1026952964" MODIFIED="1329388684376" STYLE="fork" TEXT="where &quot;+&quot; implies that the states of both contexts have now merged such that:">
<node CREATED="1329299545708" ID="ID_306417967" MODIFIED="1329388684376" STYLE="fork" TEXT="I: input of the sequence is the union of both individual inputs"/>
<node CREATED="1329299601657" ID="ID_1856655594" MODIFIED="1329388684376" STYLE="fork" TEXT="O: output of the sequence is the union of both individual outputs "/>
<node CREATED="1329299617656" ID="ID_714459904" MODIFIED="1329388684376" STYLE="fork" TEXT="S: Side-effects from the first statement are superimposed upon by those from the second statement"/>
</node>
</node>
<node CREATED="1329299430048" ID="ID_1468475984" MODIFIED="1329388684376" STYLE="fork" TEXT="U = U1 or  = U2 or not at all">
<node CREATED="1329301415730" ID="ID_841825593" MODIFIED="1329388684376" STYLE="fork" TEXT="ie the user becomes pertinent only when the input and output are directly tied to the user"/>
</node>
<node CREATED="1329299417688" ID="ID_597978498" MODIFIED="1329388684376" STYLE="fork" TEXT="B = B1 = B2">
<node CREATED="1329299750542" ID="ID_1590715224" MODIFIED="1329388684376" STYLE="fork" TEXT="where &quot;=&quot; implies that Base 1 and 2 are equivalent, ie">
<node CREATED="1329299781181" ID="ID_457591011" MODIFIED="1329388684376" STYLE="fork" TEXT="they are the same"/>
<node CREATED="1329299783981" ID="ID_613812391" MODIFIED="1329388684376" STYLE="fork" TEXT="or, they both support s1 and s2">
<node CREATED="1329300114459" ID="ID_455530108" MODIFIED="1329388684376" STYLE="fork" TEXT="B supports s if there exists an executor E for s in B"/>
</node>
</node>
</node>
<node CREATED="1329392736791" ID="ID_264183161" MODIFIED="1329393293594">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      h =&#160;&#8721; h<sub>i</sub>
    </p>
  </body>
</html></richcontent>
<node CREATED="1329392967972" ID="ID_1522886019" MODIFIED="1329392987514" TEXT="ie, height of the sequence is the sum of individual statement heights"/>
</node>
<node CREATED="1329392658191" ID="ID_50055452" MODIFIED="1329392689023" TEXT="S">
<node CREATED="1329392693761" ID="ID_1810718776" MODIFIED="1329392725883" TEXT="stability decreases as the height of the sequence does"/>
<node CREATED="1329393916553" ID="ID_1456815716" MODIFIED="1329393936385" TEXT="exponential function of h tbd">
<icon BUILTIN="messagebox_warning"/>
</node>
</node>
<node CREATED="1329394060573" ID="ID_518012492" MODIFIED="1329394069395" TEXT="other properties tbd">
<icon BUILTIN="messagebox_warning"/>
</node>
</node>
<node CREATED="1329300373341" ID="ID_209733810" MODIFIED="1329388684376" STYLE="fork" TEXT="s = s1, s2, ...., sn">
<node CREATED="1329300387058" ID="ID_1481400169" MODIFIED="1329388684376" STYLE="fork" TEXT="extrapolate from binary logic above"/>
</node>
</node>
<node CREATED="1329301832579" ID="ID_1054163326" MODIFIED="1329399983281" STYLE="fork" TEXT="Parallel Statements">
<node CREATED="1329394096183" ID="ID_1500477524" MODIFIED="1329394103425" TEXT="s = s1 || s2"/>
</node>
<node CREATED="1329302137233" ID="ID_1614834312" MODIFIED="1329388684376" STYLE="fork" TEXT="Routine - a group of statements">
<node CREATED="1329394702664" ID="ID_1742801050" MODIFIED="1329394716556" TEXT="this is similar to sequence, except it allows all other kinds of statements"/>
</node>
<node CREATED="1329387402101" ID="ID_816669729" MODIFIED="1329388684376" STYLE="fork" TEXT="Component - a group of routines">
<node CREATED="1329394723804" ID="ID_979766687" MODIFIED="1329394749616" TEXT="this is a collection of related routines that may/not depend on each other"/>
</node>
<node CREATED="1329387410259" FOLDED="true" ID="ID_578452799" MODIFIED="1329400216709" STYLE="fork" TEXT="Application - group of components">
<node CREATED="1329394801184" ID="ID_494395569" MODIFIED="1329394834246" TEXT="this is a group of components orchestrated together to achieve a set of goals defined in the M domain"/>
<node CREATED="1329394834864" ID="ID_1400024757" MODIFIED="1329394847746" TEXT="there is a user attached to the sytem"/>
<node CREATED="1329394848474" ID="ID_853028684" MODIFIED="1329394869626" TEXT="there is a feedback/control loop between user and application"/>
</node>
<node CREATED="1329400119779" ID="ID_186182206" MODIFIED="1329400372532" TEXT="What about process or machine boundaries?">
<node CREATED="1329400130299" ID="ID_1794799504" MODIFIED="1329505305929" TEXT="Well, that&apos;s what the executor is! to be expanded from Seq onwards">
<arrowlink COLOR="#ff3300" DESTINATION="ID_26607867" ENDARROW="Default" ENDINCLINATION="303;0;" ID="Arrow_ID_852907189" STARTARROW="Default" STARTINCLINATION="419;-76;"/>
</node>
<node CREATED="1329400269150" ID="ID_1959128742" MODIFIED="1329400349412" TEXT="Todo: When drawing multiple stmts with a single executor, box them together and write the executor on a corner">
<icon BUILTIN="button_ok"/>
</node>
</node>
</node>
<node CREATED="1329395667257" FOLDED="true" ID="ID_1486900774" MODIFIED="1329409733621" POSITION="right" TEXT="Properties of aggregates">
<node CREATED="1329395677976" ID="ID_761752636" MODIFIED="1329395705648" TEXT="height is the sum of the child elements&apos; heights"/>
<node CREATED="1329395705926" ID="ID_1187205767" MODIFIED="1329400524122" TEXT="stability is defined in a ladder">
<icon BUILTIN="closed"/>
<node CREATED="1329395717976" ID="ID_1820195065" MODIFIED="1329395743958" TEXT="straight seq: = exp decrease as height increases"/>
<node CREATED="1329395744826" ID="ID_955892670" MODIFIED="1329395769738" TEXT="parallel stmts = min(stability of individual stmts)"/>
<node CREATED="1329395773836" ID="ID_1619155534" MODIFIED="1329395814048" TEXT="routine = compound stability of child elements"/>
<node CREATED="1329395815226" ID="ID_1995674028" MODIFIED="1329395842688" TEXT="component/application = function of # layers, size of each layer etc"/>
</node>
</node>
<node CREATED="1329301806588" ID="ID_1788415420" MODIFIED="1329388684376" POSITION="right" STYLE="fork" TEXT="Changes on aggregates"/>
<node CREATED="1329387661360" ID="ID_237796339" MODIFIED="1329611932481" POSITION="left" STYLE="fork" TEXT="notes">
<icon BUILTIN="edit"/>
<node CREATED="1329387665319" ID="ID_928161729" MODIFIED="1329388684376" STYLE="fork" TEXT="Can Bob Martin&apos;s SOLID priniciples be included here?"/>
<node CREATED="1329387682907" ID="ID_1895407319" MODIFIED="1329388684376" STYLE="fork" TEXT="In particular the Stability principle and the &quot;Main Line&quot; concept?"/>
<node CREATED="1329391468933" ID="ID_430344424" MODIFIED="1329391496134" TEXT="Similarly, can equivalents of the McCabe metrics be incorporated?"/>
<node CREATED="1329611935312" ID="ID_595069496" LINK="http://blog.johanneslink.net/2009/03/06/a-unified-theory-of-software-design/" MODIFIED="1329611981174" TEXT="Nice idea of modeling change as a &quot;probability p of x changing&quot; from this blog post"/>
<node CREATED="1329613576384" ID="ID_1739068988" LINK="http://research.microsoft.com/pubs/68626/unified_theories.pdf" MODIFIED="1329613606080" TEXT="CAR Hoare&apos;s Theories of Software is also a good source"/>
</node>
</node>
</map>
