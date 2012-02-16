<map version="0.9.0">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1329134605664" ID="ID_1305478691" MODIFIED="1329362354009" TEXT="The Grand Unified Theory of Software">
<node CREATED="1329361639888" FOLDED="true" ID="ID_1550572140" MODIFIED="1329362501067" POSITION="left" TEXT="The big idea">
<node CREATED="1329361648288" ID="ID_834525889" MODIFIED="1329361662630" TEXT="Define code as structures a la mechanical primitives"/>
<node CREATED="1329361663328" ID="ID_1639702695" MODIFIED="1329361693800" TEXT="Create rules to represent applications as aggregates of such primitives"/>
<node CREATED="1329361823522" ID="ID_695361399" MODIFIED="1329361918674" TEXT="model notions of stability, brittleness, etc as functions of the aggregate structure"/>
<node CREATED="1329361696268" ID="ID_1349652182" MODIFIED="1329361946994" TEXT="Model things that cause code to change structure or behavior as forces that act on it and derive ways of predicting their impact"/>
<node CREATED="1329362268365" ID="ID_126440965" MODIFIED="1329362295087" TEXT="Model the subjective nature of such a theory by including the human observer within it"/>
<node CREATED="1329362307465" ID="ID_31566439" MODIFIED="1329362320197" TEXT="Model the &quot;Turtles all the way down&quot; nature of software"/>
</node>
<node CREATED="1329134649336" FOLDED="true" ID="ID_1070783728" MODIFIED="1329363512287" POSITION="left" TEXT="structure">
<node CREATED="1329134653683" ID="ID_987058451" MODIFIED="1329134666584" TEXT="what the building blocks of software are"/>
<node CREATED="1329134666921" ID="ID_856519527" MODIFIED="1329134677728" TEXT="how they&apos;re combined"/>
<node CREATED="1329134827118" ID="ID_1967589898" MODIFIED="1329134841762" TEXT="sw is linked pieces of code">
<node CREATED="1329134842165" ID="ID_1521901268" MODIFIED="1329134846817" TEXT="that can be brittle">
<node CREATED="1329134853372" ID="ID_329435738" MODIFIED="1329134855972" TEXT="or flexible"/>
</node>
</node>
<node CREATED="1329361807362" ID="ID_40031544" MODIFIED="1329361811434" TEXT="sw can have stability">
<node CREATED="1329361812432" ID="ID_1157038028" MODIFIED="1329361816194" TEXT="or instability"/>
</node>
<node CREATED="1329134864005" ID="ID_683906679" MODIFIED="1329134870232" TEXT="sw can have weight">
<node CREATED="1329134872289" ID="ID_1631969535" MODIFIED="1329134876951" TEXT="like page weight"/>
<node CREATED="1329134877235" ID="ID_1632559301" MODIFIED="1329134885555" TEXT="or memory size"/>
</node>
</node>
<node CREATED="1329362353999" FOLDED="true" ID="ID_340451030" MODIFIED="1329362491999" POSITION="left" TEXT="forces on the structure">
<node CREATED="1329134682959" ID="ID_1600311431" MODIFIED="1329362335229" TEXT="change">
<node CREATED="1329134690834" ID="ID_743650862" MODIFIED="1329134696974" TEXT="how software changes"/>
<node CREATED="1329134697817" ID="ID_888730334" MODIFIED="1329134703039" TEXT="how this impacts the structure"/>
<node CREATED="1329134705554" ID="ID_281651636" MODIFIED="1329134714137" TEXT="the agents of change"/>
</node>
<node CREATED="1329362368457" ID="ID_868700252" MODIFIED="1329362400799" TEXT="build-time constraints">
<node CREATED="1329362414277" ID="ID_669252699" MODIFIED="1329362420869" TEXT="functional requirements"/>
<node CREATED="1329362421137" ID="ID_1706693406" MODIFIED="1329362425019" TEXT="non-functional requirements"/>
<node CREATED="1329362425567" ID="ID_1628002402" MODIFIED="1329362435979" TEXT="political forces"/>
<node CREATED="1329362436257" ID="ID_82476935" MODIFIED="1329362440979" TEXT="developer preference"/>
</node>
<node CREATED="1329362401317" ID="ID_1092078847" MODIFIED="1329362405109" TEXT="run-time constraints">
<node CREATED="1329362446557" ID="ID_1469375182" MODIFIED="1329362450509" TEXT="load"/>
<node CREATED="1329362450817" ID="ID_723732362" MODIFIED="1329362461629" TEXT="capacity"/>
<node CREATED="1329362482197" ID="ID_894077226" MODIFIED="1329362487659" TEXT="more tbd">
<icon BUILTIN="messagebox_warning"/>
</node>
</node>
</node>
<node CREATED="1329362520907" ID="ID_1392220180" MODIFIED="1329363513708" POSITION="left" TEXT="Questions expected to be answered">
<node CREATED="1329362530967" ID="ID_203580458" MODIFIED="1329362574359" TEXT="Is this piece of software stable? Flexible? Brittle?"/>
<node CREATED="1329362584607" ID="ID_1234208980" MODIFIED="1329362600909" TEXT="How did it reach its current state of stability/flexibility/brittleness?"/>
<node CREATED="1329362541478" ID="ID_794945914" MODIFIED="1329362561069" TEXT="if I change X, what will happen to the software?"/>
<node CREATED="1329362639887" ID="ID_442734906" MODIFIED="1329362657009" TEXT="How much change of X can the software take before it breaks?"/>
<node CREATED="1329362665951" ID="ID_139738722" MODIFIED="1329362675273" TEXT="What is the cost of changing X?"/>
</node>
<node CREATED="1329298773513" ID="ID_690891581" MODIFIED="1329302662229" POSITION="right" TEXT="All definitions are &quot;at a certain level&quot; defined by a human observer called the &quot;user&quot;"/>
<node CREATED="1329298743240" ID="ID_1248203685" MODIFIED="1329362790953" POSITION="right" TEXT="statements are the atoms of software - at a given level">
<node CREATED="1329298834443" ID="ID_368024794" MODIFIED="1329298846854" TEXT="they have context and a user at their level"/>
<node CREATED="1329298847884" ID="ID_12407724" MODIFIED="1329298854522" TEXT="meaning at a level above them"/>
<node CREATED="1329298854804" ID="ID_632534766" MODIFIED="1329298861452" TEXT="implementation at a level below them"/>
<node CREATED="1329298864691" ID="ID_1994379696" MODIFIED="1329363009584" TEXT="so statement can be represented as: s: (M,C,U, B)">
<node CREATED="1329298922118" ID="ID_32609701" MODIFIED="1329298943828" TEXT="M: Meaning - facts/ s^1">
<node CREATED="1329301488392" ID="ID_1879104980" MODIFIED="1329301513983" TEXT="meaning is always orthogonal to Base and the set of executors made available"/>
</node>
<node CREATED="1329298944528" ID="ID_1087983480" MODIFIED="1329299047873" TEXT="C: Context: (I, E, O, S)">
<node CREATED="1329298982502" ID="ID_579882248" MODIFIED="1329298992413" TEXT="I: Input: Inputs to the statement"/>
<node CREATED="1329299054052" ID="ID_866873097" MODIFIED="1329299081871" TEXT="E: Executor: the part of the base that knows how to execute the statment"/>
<node CREATED="1329298992763" ID="ID_452576411" MODIFIED="1329299010376" TEXT="O: Output: Outputs from the statement"/>
<node CREATED="1329299010626" ID="ID_717653547" MODIFIED="1329299028649" TEXT="S: Side effects: Impacts to the context as a result of executing the statment"/>
</node>
<node CREATED="1329299115185" ID="ID_164678851" MODIFIED="1329299202132" TEXT="U: User: who observes, optionally provides input and/or on whose behalf the execution happens"/>
<node CREATED="1329298954183" ID="ID_1136311919" MODIFIED="1329300332427" TEXT="B: Base: (Eb, Sb)">
<node CREATED="1329300257297" ID="ID_204877095" MODIFIED="1329300339915" TEXT="A Base B is a collection of executors Eb that can execute a set of statements Sb"/>
<node CREATED="1329303401201" ID="ID_1277440693" MODIFIED="1329363475808">
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
</html>
</richcontent>
</node>
</node>
</node>
</node>
<node CREATED="1329301597637" ID="ID_1443429226" MODIFIED="1329362831703" POSITION="right" TEXT="properties of statements">
<node CREATED="1329303908525" ID="ID_1350894160" MODIFIED="1329305103019" TEXT="static">
<node CREATED="1329302616557" ID="ID_775908008" MODIFIED="1329363891985" TEXT="height: # of statements before this one">
<node CREATED="1329363894983" ID="ID_757283116" MODIFIED="1329363917975" TEXT="presupposes a &quot;stack&quot; of statements; maybe should be moved to collections of statements"/>
</node>
<node CREATED="1329301631178" ID="ID_422459141" MODIFIED="1329363996625">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      weight: something x <b>g<sub>B</sub></b>
    </p>
  </body>
</html>
</richcontent>
<font NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1329301651659" ID="ID_1700809000" MODIFIED="1329304990479" TEXT="speed: Big O of the statement wrt the context"/>
<node CREATED="1329301655139" ID="ID_1339697097" MODIFIED="1329305002719" TEXT="size: Space complexity of the statement wrt the context"/>
<node CREATED="1329303666165" ID="ID_1624160501" MODIFIED="1329303678835" TEXT="fan in: the number of unique inputs to the statement"/>
<node CREATED="1329303679935" ID="ID_1356335565" MODIFIED="1329303688165" TEXT="fan out: the number of unique outputs to the statement"/>
<node CREATED="1329303688655" ID="ID_1500910572" MODIFIED="1329333212751" TEXT="effects: the number of unique side effects due to its execution"/>
<node CREATED="1329304133162" ID="ID_1778094766" MODIFIED="1329360943015">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      complexity&#160;: f(Fi, Fo, effects)
    </p>
    <p>
      with range in [0,1]
    </p>
  </body>
</html></richcontent>
<node CREATED="1329304280307" ID="ID_783685951" MODIFIED="1329361448753" TEXT="Measure of how difficult the statement is to understand"/>
<node CREATED="1329304311925" ID="ID_550333114" MODIFIED="1329304317045" TEXT="Less is better"/>
<node CREATED="1329333227389" ID="ID_594899236" MODIFIED="1329333272793" TEXT="Note: fact, function and proc are used below for latent meaning. Statemnts are NOT actually any of these">
<icon BUILTIN="attach"/>
</node>
<node CREATED="1329305213829" ID="ID_230257826" MODIFIED="1329361509669">
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
<node CREATED="1329360107333" ID="ID_1976798798" MODIFIED="1329360143645" TEXT="mapping to [0,1] TBD">
<icon BUILTIN="messagebox_warning"/>
</node>
</node>
<node CREATED="1329360947343" ID="ID_832814093" MODIFIED="1329360957135" TEXT="simplicity: 1-complexity">
<node CREATED="1329361368831" ID="ID_1484868274" MODIFIED="1329361406243" TEXT="note: i originally called this understandability">
<icon BUILTIN="attach"/>
</node>
</node>
<node CREATED="1329304429898" ID="ID_1028255278" MODIFIED="1329304432678" TEXT="stability">
<node CREATED="1329333342773" ID="ID_1779893464" MODIFIED="1329333353966" TEXT="defn TBD">
<icon BUILTIN="messagebox_warning"/>
</node>
<node CREATED="1329333374286" ID="ID_797636524" MODIFIED="1329333385314" TEXT="but should be a value in [0..1]"/>
</node>
<node CREATED="1329304462685" ID="ID_231771709" MODIFIED="1329304465175" TEXT="flexibility">
<node CREATED="1329333342773" ID="ID_1669841278" MODIFIED="1329333353966" TEXT="defn TBD">
<icon BUILTIN="messagebox_warning"/>
</node>
<node CREATED="1329333361555" ID="ID_1147269751" MODIFIED="1329362073666" TEXT="Could probably be defined as 1-stability, although the two concepts are not complements"/>
</node>
</node>
<node CREATED="1329303949626" ID="ID_602967971" MODIFIED="1329360217236" TEXT="dynamic">
<node CREATED="1329303955146" ID="ID_180446275" MODIFIED="1329303997927" TEXT="state: passive, loaded, active, done"/>
<node CREATED="1329303999547" ID="ID_1098763686" MODIFIED="1329304029107" TEXT="execution frame: sum total of the running context state"/>
</node>
</node>
<node CREATED="1329301746756" ID="ID_777864323" MODIFIED="1329301752286" POSITION="right" TEXT="changes on statements"/>
<node CREATED="1329301788158" ID="ID_726108879" MODIFIED="1329363525258" POSITION="right" TEXT="Collections of statements">
<node CREATED="1329299291952" ID="ID_26607867" MODIFIED="1329333400806" TEXT="Sequencing statements">
<node CREATED="1329299319451" ID="ID_830057011" MODIFIED="1329302353982" TEXT="s = s1 , s2 implies">
<node CREATED="1329299395229" ID="ID_828503570" MODIFIED="1329302360313" TEXT="M = M1 &amp; M2">
<node CREATED="1329299484368" ID="ID_1513203125" MODIFIED="1329299748052" TEXT="where &quot;&amp;&quot; implies a merge of the two meanings that is undefined at this level, but defined at the +1 level"/>
</node>
<node CREATED="1329299410098" ID="ID_1164785870" MODIFIED="1329302365383" TEXT="C = C1 + C2">
<node CREATED="1329299522278" ID="ID_1026952964" MODIFIED="1329299739182" TEXT="where &quot;+&quot; implies that the states of both contexts have now merged such that:">
<node CREATED="1329299545708" ID="ID_306417967" MODIFIED="1329299569808" TEXT="I: input of the sequence is the union of both individual inputs"/>
<node CREATED="1329299601657" ID="ID_1856655594" MODIFIED="1329299616826" TEXT="O: output of the sequence is the union of both individual outputs "/>
<node CREATED="1329299617656" ID="ID_714459904" MODIFIED="1329299643665" TEXT="S: Side-effects from the first statement are superimposed upon by those from the second statement"/>
</node>
</node>
<node CREATED="1329299430048" ID="ID_1468475984" MODIFIED="1329302403056" TEXT="U = U1 or  = U2 or not at all">
<node CREATED="1329301415730" ID="ID_841825593" MODIFIED="1329301435320" TEXT="ie the user becomes pertinent only when the input and output are directly tied to the user"/>
</node>
<node CREATED="1329299417688" ID="ID_597978498" MODIFIED="1329302410017" TEXT="B = B1 = B2">
<node CREATED="1329299750542" ID="ID_1590715224" MODIFIED="1329299779451" TEXT="where &quot;=&quot; implies that Base 1 and 2 are equivalent, ie">
<node CREATED="1329299781181" ID="ID_457591011" MODIFIED="1329299783521" TEXT="they are the same"/>
<node CREATED="1329299783981" ID="ID_613812391" MODIFIED="1329299892939" TEXT="or, they both support s1 and s2">
<node CREATED="1329300114459" ID="ID_455530108" MODIFIED="1329300129729" TEXT="B supports s if there exists an executor E for s in B"/>
</node>
</node>
</node>
</node>
<node CREATED="1329300373341" ID="ID_209733810" MODIFIED="1329302427017" TEXT="s = s1, s2, ...., sn">
<node CREATED="1329300387058" ID="ID_1481400169" MODIFIED="1329300395335" TEXT="extrapolate from binary logic above"/>
</node>
</node>
<node CREATED="1329301832579" ID="ID_1054163326" MODIFIED="1329302015447" TEXT="Parallellizing Statements"/>
<node CREATED="1329302096012" ID="ID_1824290203" MODIFIED="1329323009922" TEXT="Meta Statements">
<node CREATED="1329302022151" ID="ID_478667032" MODIFIED="1329360349258" TEXT="Fork"/>
<node CREATED="1329302048850" ID="ID_636541915" MODIFIED="1329360352698" TEXT="Join"/>
<node CREATED="1329302117322" ID="ID_1923966136" MODIFIED="1329360356188" TEXT="Loop"/>
<node CREATED="1329302137233" ID="ID_1614834312" MODIFIED="1329303551777" TEXT="Group"/>
<node CREATED="1329303532367" ID="ID_1341171281" MODIFIED="1329303554637" TEXT="Quote"/>
<node CREATED="1329303536887" ID="ID_905807551" MODIFIED="1329303557557" TEXT="Eval"/>
</node>
</node>
<node CREATED="1329301806588" ID="ID_1788415420" MODIFIED="1329301810168" POSITION="right" TEXT="Changes on collections"/>
</node>
</map>
