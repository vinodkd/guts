<map version="0.9.0">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1329134605664" ID="ID_1305478691" MODIFIED="1347358460879" STYLE="fork">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p style="text-align: center">
      The Grand Unified Theory of Software
    </p>
    <p style="text-align: center">
      <font size="1">.</font><font size="3">.. or at least a NATURAL theory of software</font>
    </p>
  </body>
</html></richcontent>
<font NAME="SansSerif" SIZE="20"/>
<node CREATED="1329361639888" FOLDED="true" ID="ID_1550572140" MODIFIED="1346988877353" POSITION="left" STYLE="fork" TEXT="The big idea">
<font NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="idea"/>
<node CREATED="1329361648288" ID="ID_834525889" MODIFIED="1346156916374" STYLE="fork" TEXT="Define code as structures a la mechanical primitives">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1329361663328" ID="ID_1639702695" MODIFIED="1346156916374" STYLE="fork" TEXT="Create rules to represent applications as aggregates of such primitives">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1329361823522" ID="ID_695361399" MODIFIED="1346156916373" STYLE="fork" TEXT="model notions of stability, brittleness, etc as functions of the aggregate structure">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1329361696268" ID="ID_1349652182" MODIFIED="1346156916367" STYLE="fork" TEXT="Model things that cause code to change structure or behavior as forces that act on it and derive ways of predicting their impact">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1329362268365" ID="ID_126440965" MODIFIED="1346156916365" STYLE="fork" TEXT="Model the subjective nature of such a theory by including the human observer within it">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1329362307465" ID="ID_31566439" MODIFIED="1346156916365" STYLE="fork" TEXT="Model the &quot;Turtles all the way down&quot; nature of software">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1329825532146" ID="ID_1380240163" MODIFIED="1346156916359" TEXT="Try to come up with &quot;natural&quot; formulas, ie those that do not need empirical constants to determine their value">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1346988827275" ID="ID_1248395301" MODIFIED="1346988857386" TEXT="Try very hard not to make this into a Manager&apos;s tool to beat the developer with, but a practitioner&apos;s tool to reason about their work">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node CREATED="1330691219637" FOLDED="true" ID="ID_1291820072" MODIFIED="1346988876335" POSITION="left" TEXT="origins and seeds">
<font NAME="SansSerif" SIZE="12"/>
<node CREATED="1330691229697" ID="ID_1691277531" MODIFIED="1330691274409" TEXT="Alan Kays talk that showed the Windows code as being larger than the Empire St. Building when printed out on A4 sheets"/>
<node CREATED="1330691274917" ID="ID_22645303" MODIFIED="1330691311769" TEXT="Alan Cooper&apos;s viz of code as a steep and tottering deck of cards"/>
<node CREATED="1330691315707" ID="ID_1739038080" MODIFIED="1330691320149" TEXT="My FEM post"/>
</node>
<node CREATED="1329134649336" FOLDED="true" ID="ID_1070783728" MODIFIED="1346988880960" POSITION="left" STYLE="fork" TEXT="structure">
<font NAME="SansSerif" SIZE="12"/>
<node CREATED="1329134653683" ID="ID_987058451" MODIFIED="1329408416777" STYLE="fork" TEXT="what the building blocks of software are"/>
<node CREATED="1329134666921" ID="ID_856519527" MODIFIED="1329388695816" STYLE="fork" TEXT="how they&apos;re combined"/>
<node CREATED="1329134827118" FOLDED="true" ID="ID_1967589898" MODIFIED="1346157045887" STYLE="fork" TEXT="sw is linked pieces of code">
<node CREATED="1329134842165" ID="ID_1521901268" MODIFIED="1346157044003" STYLE="fork" TEXT="that can be brittle">
<node CREATED="1329134853372" ID="ID_329435738" MODIFIED="1329388695816" STYLE="fork" TEXT="or flexible"/>
</node>
</node>
<node CREATED="1329361807362" ID="ID_40031544" MODIFIED="1346157046635" STYLE="fork" TEXT="sw can have stability">
<node CREATED="1329361812432" FOLDED="true" ID="ID_1157038028" MODIFIED="1346157117755" STYLE="fork" TEXT="Notions of stability">
<node CREATED="1329397828395" ID="ID_1058483500" MODIFIED="1329397840087" TEXT="structural stability: will it stay up?"/>
<node CREATED="1329397840715" ID="ID_1780894444" MODIFIED="1329397863597" TEXT="stability under load: Will it stay up with 1MM hits?"/>
<node CREATED="1329397864245" ID="ID_569201878" MODIFIED="1346157052159">
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
<node CREATED="1329397984285" FOLDED="true" ID="ID_1455470515" MODIFIED="1346157057355" TEXT="This definition also allows notions such as:">
<node CREATED="1329397997515" ID="ID_254151621" MODIFIED="1329398004857" TEXT="Breaking strength of an app"/>
<node CREATED="1329398005195" ID="ID_1852215685" MODIFIED="1329398014177" TEXT="MTBF definitions"/>
</node>
<node CREATED="1329399381223" FOLDED="true" ID="ID_1642355631" MODIFIED="1346157063115" TEXT="The breakage ladder">
<node CREATED="1329399387913" ID="ID_1504436173" MODIFIED="1329399406745" TEXT="didnt parse"/>
<node CREATED="1329399407013" ID="ID_1991370124" MODIFIED="1329399410355" TEXT="didnt compile"/>
<node CREATED="1329399410993" ID="ID_389385197" MODIFIED="1329399413045" TEXT="didnt link"/>
<node CREATED="1329399424743" ID="ID_706745565" MODIFIED="1329399426665" TEXT="didnt merge"/>
<node CREATED="1329399413573" ID="ID_1160575097" MODIFIED="1329399416035" TEXT="didnt run"/>
<node CREATED="1329399443983" ID="ID_203116052" MODIFIED="1329399447615" TEXT="stopped running with load"/>
<node CREATED="1329399430483" ID="ID_1618315255" MODIFIED="1329399439555" TEXT="stopped running over time"/>
</node>
</node>
<node CREATED="1329398946582" FOLDED="true" ID="ID_1470224447" MODIFIED="1346157086362">
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
<node CREATED="1330311564592" ID="ID_1810777539" MODIFIED="1330311581484" TEXT="crucial bit: its a *subroutine call* not a subroutine itself"/>
<node CREATED="1330311679960" ID="ID_794152611" MODIFIED="1330311700338" TEXT="this implies a passive and active dual for a subroutine - its definition and an actual call"/>
<node CREATED="1330311779682" ID="ID_580813329" MODIFIED="1330311801397" TEXT="my original idea was to define a subroutine call as a &quot;dense&quot; point"/>
<node CREATED="1330311802245" ID="ID_1488685989" MODIFIED="1330311834762" TEXT="...but maybe i should treat subroutines as blueprints and just replace their call sites with replicas of the defnition and just add up h x w?"/>
</node>
<node CREATED="1329793626272" ID="ID_70462662" MODIFIED="1329793660244" TEXT="&quot;Blake canonical ordering&quot; as the model of stable code, and by extrapolation: instability as a lack of it"/>
<node CREATED="1329973792886" FOLDED="true" ID="ID_626535587" MODIFIED="1346157102341">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      combined: stability = conceptual stability + build stability
    </p>
    <p>
      where conceptual = h x w
    </p>
    <p>
      &#160;&#160;&#160;&#160;and&#160;&#160;build = breakage ladder
    </p>
  </body>
</html></richcontent>
<node CREATED="1329973870115" ID="ID_1987956636" MODIFIED="1329973884787" TEXT="adv: this can represent both production and WIP code"/>
</node>
<node CREATED="1329973934666" FOLDED="true" ID="ID_1727916442" MODIFIED="1346157114586" TEXT="consider a unit line, box or cube as representing stability">
<node CREATED="1329973952960" ID="ID_994843769" MODIFIED="1329973977962" TEXT="then 0 or (0,0) or (0,0,0) =&gt; completely stable"/>
<node CREATED="1329973979644" ID="ID_1653091445" MODIFIED="1329973996117" TEXT="and (1,1,1) =&gt; completely unstable"/>
<node CREATED="1329973996636" ID="ID_1950030043" MODIFIED="1329974018949" TEXT="alternatively we can take 1/x to get natural meanings"/>
</node>
</node>
</node>
<node CREATED="1329134864005" FOLDED="true" ID="ID_683906679" MODIFIED="1346157128094" STYLE="fork" TEXT="sw can have weight">
<node CREATED="1329134872289" ID="ID_1631969535" MODIFIED="1329388695816" STYLE="fork" TEXT="like page weight"/>
<node CREATED="1329134877235" ID="ID_1632559301" MODIFIED="1329388695816" STYLE="fork" TEXT="or memory size"/>
<node CREATED="1329793385540" ID="ID_895824341" MODIFIED="1346157123490" TEXT="notions of weight">
<node CREATED="1329793402220" ID="ID_1999709997" MODIFIED="1329793453332" TEXT="effort to remove a piece of code from its base can be thought of as &quot;escape velocity&quot;"/>
</node>
</node>
<node CREATED="1329371654990" FOLDED="true" ID="ID_1280834606" MODIFIED="1346157157741" STYLE="fork" TEXT="ways of thinking about the building blocks">
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
</node>
<node CREATED="1329362353999" FOLDED="true" ID="ID_340451030" MODIFIED="1346988886953" POSITION="left" STYLE="fork" TEXT="forces on the structure">
<font NAME="SansSerif" SIZE="12"/>
<node CREATED="1329134682959" FOLDED="true" ID="ID_1600311431" MODIFIED="1346157168518" STYLE="fork" TEXT="change">
<node CREATED="1329134690834" ID="ID_743650862" MODIFIED="1329388692536" STYLE="fork" TEXT="how software changes"/>
<node CREATED="1329134697817" ID="ID_888730334" MODIFIED="1329388692536" STYLE="fork" TEXT="how this impacts the structure"/>
<node CREATED="1329134705554" ID="ID_281651636" MODIFIED="1329388692536" STYLE="fork" TEXT="the agents of change"/>
</node>
<node CREATED="1329362368457" FOLDED="true" ID="ID_868700252" MODIFIED="1346157174696" STYLE="fork" TEXT="build-time constraints">
<node CREATED="1329362414277" ID="ID_669252699" MODIFIED="1329388692536" STYLE="fork" TEXT="functional requirements"/>
<node CREATED="1329362421137" ID="ID_1706693406" MODIFIED="1329388692536" STYLE="fork" TEXT="non-functional requirements"/>
<node CREATED="1329362425567" ID="ID_1628002402" MODIFIED="1329388692536" STYLE="fork" TEXT="political forces"/>
<node CREATED="1329362436257" FOLDED="true" ID="ID_82476935" MODIFIED="1330483312621" STYLE="fork" TEXT="developer preference">
<node CREATED="1330482856689" ID="ID_643609615" MODIFIED="1330482875258" TEXT="i dont like language x, i prefer y"/>
<node CREATED="1330482875779" ID="ID_1030259481" MODIFIED="1330482916183" TEXT="language x does y like this, not this (idioms)"/>
<node CREATED="1330482918215" ID="ID_1612639813" MODIFIED="1330482947449" TEXT="i dont do threads, i prefer actors/event loops/X (arch patterns)"/>
</node>
</node>
<node CREATED="1329362401317" FOLDED="true" ID="ID_1092078847" MODIFIED="1346157178053" STYLE="fork" TEXT="run-time constraints">
<node CREATED="1329362446557" ID="ID_1469375182" MODIFIED="1329388692536" STYLE="fork" TEXT="load"/>
<node CREATED="1329362450817" ID="ID_723732362" MODIFIED="1329388692536" STYLE="fork" TEXT="capacity"/>
<node CREATED="1329362482197" ID="ID_894077226" MODIFIED="1329388692536" STYLE="fork" TEXT="more tbd">
<icon BUILTIN="messagebox_warning"/>
</node>
</node>
<node CREATED="1329997637649" FOLDED="true" ID="ID_1374608482" MODIFIED="1346157902958" TEXT="notions of forces">
<node CREATED="1329997646874" FOLDED="true" ID="ID_1528099855" MODIFIED="1346157183626" TEXT="they affect the static nature">
<node CREATED="1329997666616" ID="ID_1642114121" MODIFIED="1329997676007" TEXT="from the outside - as things that change the structure"/>
</node>
<node CREATED="1329997701459" FOLDED="true" ID="ID_1823935756" MODIFIED="1346157189347" TEXT="they affect the dynamic nature">
<node CREATED="1329997708298" ID="ID_67834464" MODIFIED="1329997724996" TEXT="from inside, as characteristics of the flow -eg, load"/>
</node>
</node>
<node CREATED="1330482989575" ID="ID_207337751" MODIFIED="1330483019776" TEXT="forces are more likely seen than felt ie, you see the effects of the force than the force in action itself"/>
</node>
<node CREATED="1329362520907" ID="ID_1392220180" MODIFIED="1346988670366" POSITION="left" STYLE="fork" TEXT="Questions expected to be answered">
<font NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="help"/>
<node CREATED="1329362530967" ID="ID_203580458" MODIFIED="1346156916358" STYLE="fork" TEXT="Is this piece of software stable? Flexible? Brittle?">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1329389523317" FOLDED="true" ID="ID_1484561328" MODIFIED="1346157018245" TEXT="Can I define how complex a system is based on its code?">
<font NAME="SansSerif" SIZE="12"/>
<node CREATED="1329389534437" FOLDED="true" ID="ID_1685294786" MODIFIED="1346157017381" TEXT="how can I use this to develop a plan to understand it?">
<node CREATED="1329389553067" ID="ID_206163394" MODIFIED="1329389557997" TEXT="What is important/core?"/>
<node CREATED="1329389558527" ID="ID_369668103" MODIFIED="1329389569316" TEXT="What is large in size?"/>
</node>
</node>
<node CREATED="1329362541478" ID="ID_794945914" MODIFIED="1346156916358" STYLE="fork" TEXT="if I change X, what will happen to the software?">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1329362639887" ID="ID_442734906" MODIFIED="1346156916358" STYLE="fork" TEXT="How much change of X can the software take before it breaks?">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1329362665951" ID="ID_139738722" MODIFIED="1346156916354" STYLE="fork" TEXT="What is the cost of changing X?">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1329362584607" ID="ID_1234208980" MODIFIED="1346156916354" STYLE="fork" TEXT="How did it reach its current state of stability/flexibility/brittleness?">
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node CREATED="1329298773513" ID="ID_690891581" MODIFIED="1346156916354" POSITION="right" STYLE="fork" TEXT="All definitions are &quot;at a certain level&quot; defined by a human observer called the &quot;user&quot;">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1330084924653" FOLDED="true" ID="ID_162728351" MODIFIED="1347358477338" POSITION="right" TEXT="code, data and execution are the three basic types of &quot;things&quot; in software">
<font NAME="SansSerif" SIZE="12"/>
<node CREATED="1346935067724" ID="ID_1177991931" MODIFIED="1346935079840" TEXT="data IS something"/>
<node CREATED="1346935080249" ID="ID_1709637725" MODIFIED="1346989591226" TEXT="code POTENTIALLY DOES something"/>
<node CREATED="1346989593351" ID="ID_1109387176" MODIFIED="1346989623978" TEXT="execution converts this potential to actual ACTION"/>
</node>
<node CREATED="1330085166007" FOLDED="true" ID="ID_1095509452" MODIFIED="1347358463796" POSITION="right">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <strike>code is active, data is passive</strike>
    </p>
  </body>
</html></richcontent>
<font NAME="SansSerif" SIZE="12"/>
<node CREATED="1330310598645" ID="ID_78469377" MODIFIED="1330310619443" TEXT="So what about data stored in memory vs disk? Is one active and the other passive?">
<icon BUILTIN="help"/>
</node>
<node CREATED="1330310749410" ID="ID_844968014" MODIFIED="1330310796655" TEXT="Can we unite quote/unquote and load/store into one single paradigm which flows from active data to passive data?">
<icon BUILTIN="help"/>
</node>
<node CREATED="1330310626528" ID="ID_995980640" MODIFIED="1330310630064" TEXT="TBD">
<icon BUILTIN="messagebox_warning"/>
</node>
</node>
<node CREATED="1330346614871" ID="ID_119647970" MODIFIED="1346935162023" POSITION="right">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      code is a structure, a container <b>and a processor</b>; data is what is contained or passes through code
    </p>
  </body>
</html></richcontent>
<font NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1346989991736" ID="ID_1106600717" MODIFIED="1346990018390" POSITION="right" TEXT="thus code is data with at least one identifiable &quot;command&quot; or action - by some executor"/>
<node CREATED="1330085004511" FOLDED="true" ID="ID_47496484" MODIFIED="1346990174055" POSITION="right" TEXT="code can be changed to data and vice versa">
<font NAME="SansSerif" SIZE="12"/>
<node CREATED="1330085117117" FOLDED="true" ID="ID_54643544" MODIFIED="1346990172882" TEXT="code becomes data when it is PASSIVATED">
<node CREATED="1330348237510" ID="ID_972104990" MODIFIED="1330348241753" TEXT="aka quoted"/>
<node CREATED="1330348292713" ID="ID_92538186" MODIFIED="1330348309240" TEXT="this is akin to making a blueprint from an existing building"/>
<node CREATED="1331002932252" ID="ID_1985948490" MODIFIED="1331002970105" TEXT="this is fine for data that actually IS code; what about pure data?">
<icon BUILTIN="help"/>
</node>
<node CREATED="1331003072634" ID="ID_1156721511" MODIFIED="1346989920853">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <strike>Current answer: all code is data and vice versa. The container/contained dual is sufficient for our purposes</strike>
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="button_ok"/>
<icon BUILTIN="messagebox_warning"/>
</node>
<node CREATED="1346989757561" ID="ID_1733947196" MODIFIED="1346989893134" TEXT="New answer: Pure data is also processed, but not acted upon. There is always at least one &quot;executor&quot; that can read or understand any data. Only when it acts on it does it become code">
<icon BUILTIN="button_ok"/>
</node>
</node>
<node CREATED="1330085140447" FOLDED="true" ID="ID_1375363297" MODIFIED="1346990171110" TEXT="data becomes code when it is ACTIVATED/EXECUTED">
<node CREATED="1330085202766" ID="ID_705134811" MODIFIED="1330348269063" TEXT="aka evaluated"/>
<node CREATED="1330348311457" ID="ID_1574451037" MODIFIED="1330348343483" TEXT="this is equivalent to making a building from the blueprints"/>
<node CREATED="1330348350875" ID="ID_40387814" MODIFIED="1330348409035" TEXT="So to represent execution - which is the building being actually used?">
<icon BUILTIN="help"/>
</node>
<node CREATED="1346990078022" ID="ID_536669323" MODIFIED="1346990154074" TEXT="Just as a paper-based model of the building is used to model the actual one, a paper-based model of code will be used to model its structural behavior&#xa;Execution will be modeled by data flowing through the structure">
<icon BUILTIN="button_ok"/>
</node>
</node>
</node>
<node CREATED="1329298743240" FOLDED="true" ID="ID_1248203685" MODIFIED="1347358749618" POSITION="right" STYLE="fork" TEXT="statements are the atoms of code">
<font NAME="SansSerif" SIZE="12"/>
<node CREATED="1329298834443" ID="ID_368024794" MODIFIED="1329388684476" STYLE="fork" TEXT="they have context and a user at their level"/>
<node CREATED="1329298847884" ID="ID_12407724" MODIFIED="1329388684466" STYLE="fork" TEXT="meaning at a level above them"/>
<node CREATED="1329298854804" ID="ID_632534766" MODIFIED="1329388684466" STYLE="fork" TEXT="implementation at a level below them"/>
<node CREATED="1329298864691" FOLDED="true" ID="ID_1994379696" MODIFIED="1346934501952" STYLE="fork" TEXT="so statement can be represented as: s: (M,C,U, B)">
<node CREATED="1329298922118" ID="ID_32609701" MODIFIED="1346157450859" STYLE="fork" TEXT="M: Meaning - facts/ s^1">
<node CREATED="1329301488392" ID="ID_1879104980" MODIFIED="1329388684466" STYLE="fork" TEXT="meaning is always orthogonal to Base and the set of executors made available"/>
<node CREATED="1329367096777" ID="ID_1104548130" MODIFIED="1329388684466" STYLE="fork" TEXT="meaning is expressed in an informal way eg, English, to denote that its not directly amenable to mechanical processing"/>
<node CREATED="1329367124519" ID="ID_1048240758" MODIFIED="1329388684466" STYLE="fork" TEXT="it is possible to ascribe FOPL (or even imperative) semantics to meaning.Some gain in higher-order calculation is obviously possible, but Godel&apos;s limits render it eventually pointless."/>
<node CREATED="1329367189823" ID="ID_13323861" MODIFIED="1329388684466" STYLE="fork" TEXT="the point of representing meaning is that processes occuring inside the user&apos;s mind can be modeled as being contained in it"/>
<node CREATED="1346934411851" ID="ID_1141197053" MODIFIED="1346934439634" TEXT="another way of looking at meaning is that they&apos;re statements at a higher level, denoted here by s^1"/>
</node>
<node CREATED="1329298944528" ID="ID_1087983480" MODIFIED="1346933094347" STYLE="fork" TEXT="C: Context: (I, E, O, S)">
<node CREATED="1329298982502" ID="ID_579882248" MODIFIED="1329388684466" STYLE="fork" TEXT="I: Input: Inputs to the statement"/>
<node CREATED="1329299054052" ID="ID_866873097" MODIFIED="1329388684466" STYLE="fork" TEXT="E: Executor: the part of the base that knows how to execute the statment"/>
<node CREATED="1329298992763" ID="ID_452576411" MODIFIED="1329388684466" STYLE="fork" TEXT="O: Output: Outputs from the statement"/>
<node CREATED="1329299010626" ID="ID_717653547" MODIFIED="1346934089165" STYLE="fork" TEXT="S: Side effects: Impacts to the context as a result of executing the statement"/>
</node>
<node CREATED="1329299115185" ID="ID_164678851" MODIFIED="1329388684466" STYLE="fork" TEXT="U: User: who observes, optionally provides input and/or on whose behalf the execution happens"/>
<node CREATED="1329298954183" ID="ID_1136311919" MODIFIED="1346932786393" STYLE="fork" TEXT="B: Base: (Eb, Sb)">
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
<node CREATED="1329302096012" FOLDED="true" ID="ID_1824290203" MODIFIED="1346934541276" TEXT="Special Statements">
<node CREATED="1329396047946" ID="ID_1494261248" MODIFIED="1329396060648" TEXT="Input"/>
<node CREATED="1329396053306" ID="ID_1108604133" MODIFIED="1329396063318" TEXT="Output"/>
<node CREATED="1329396019036" ID="ID_1497708583" MODIFIED="1329396021018" TEXT="Branch"/>
<node CREATED="1329302022151" ID="ID_478667032" MODIFIED="1329388684376" STYLE="fork" TEXT="Fork"/>
<node CREATED="1329302048850" ID="ID_636541915" MODIFIED="1329388684376" STYLE="fork" TEXT="Join"/>
<node CREATED="1329302117322" FOLDED="true" ID="ID_1923966136" MODIFIED="1346933042396" STYLE="fork" TEXT="Loop">
<node CREATED="1329396202606" ID="ID_471839668" MODIFIED="1329396223308" TEXT="Should this be just a spl case of branch? TBD">
<icon BUILTIN="messagebox_warning"/>
</node>
</node>
<node CREATED="1329303532367" ID="ID_1341171281" MODIFIED="1329388684376" STYLE="fork" TEXT="Quote"/>
<node CREATED="1329303536887" ID="ID_905807551" MODIFIED="1329388684376" STYLE="fork" TEXT="Eval"/>
</node>
<node CREATED="1329301597637" ID="ID_1443429226" MODIFIED="1347358516840" STYLE="fork" TEXT="properties of statements">
<node CREATED="1329303908525" FOLDED="true" ID="ID_1350894160" MODIFIED="1347358689974" STYLE="fork" TEXT="static">
<node CREATED="1329302616557" FOLDED="true" ID="ID_775908008" MODIFIED="1347358537987" STYLE="fork" TEXT="h: height: distance from the base in count of statements">
<node CREATED="1329363894983" ID="ID_757283116" MODIFIED="1329388684456" STYLE="fork" TEXT="1 for statements"/>
<node CREATED="1329370762630" ID="ID_1889767535" MODIFIED="1329388684456" STYLE="fork" TEXT="statement aggregates will obviously have &gt;1 height"/>
</node>
<node CREATED="1329301655139" FOLDED="true" ID="ID_1339697097" MODIFIED="1347358540097" STYLE="fork" TEXT="m: static mass: &quot;amount of space&quot; taken up by the statement">
<node CREATED="1329389288782" ID="ID_557447816" MODIFIED="1330084462407" TEXT="=1 for statements"/>
</node>
<node CREATED="1329372695234" FOLDED="true" ID="ID_281595980" MODIFIED="1347358546838" STYLE="fork" TEXT="w: weight: mass x gb">
<node CREATED="1329372708475" ID="ID_95823430" MODIFIED="1329388684456" STYLE="fork" TEXT="this just seems cool. but will it be needed? tbd">
<icon BUILTIN="messagebox_warning"/>
<icon BUILTIN="attach"/>
</node>
</node>
<node CREATED="1329301651659" FOLDED="true" ID="ID_1700809000" MODIFIED="1347358554635" STYLE="fork" TEXT="s: speed: Big O of the statement wrt the context">
<node CREATED="1329389004934" ID="ID_1500179884" MODIFIED="1329389031453" TEXT="alternately, using the pipe model, 1/speed would be the resistance to flow"/>
<node CREATED="1329389040722" ID="ID_550091586" MODIFIED="1329389057832" TEXT="More work on this when I reach the dynamic parts">
<icon BUILTIN="messagebox_warning"/>
</node>
</node>
<node CREATED="1329303666165" ID="ID_1624160501" MODIFIED="1329392458473" STYLE="fork" TEXT="Fi: fan in: the number of unique inputs to the statement"/>
<node CREATED="1329303679935" ID="ID_1356335565" MODIFIED="1329392464063" STYLE="fork" TEXT="Fo: fan out: the number of unique outputs to the statement"/>
<node CREATED="1329303688655" ID="ID_1500910572" MODIFIED="1329392469353" STYLE="fork" TEXT="E: effects: the number of unique side effects due to its execution"/>
<node CREATED="1329304133162" FOLDED="true" ID="ID_1778094766" MODIFIED="1347358621291" STYLE="fork">
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
<node CREATED="1329360947343" ID="ID_832814093" MODIFIED="1346932978557" STYLE="fork" TEXT="sim: simplicity: 1-complexity">
<node CREATED="1329361368831" ID="ID_1484868274" MODIFIED="1329388684466" STYLE="fork" TEXT="note: i originally called this understandability">
<icon BUILTIN="attach"/>
</node>
</node>
<node CREATED="1329304429898" FOLDED="true" ID="ID_1028255278" MODIFIED="1347358683581" STYLE="fork" TEXT="S: stability">
<node CREATED="1329333342773" ID="ID_1779893464" MODIFIED="1329388684466" STYLE="fork" TEXT="=1 for statements"/>
<node CREATED="1329333374286" ID="ID_797636524" MODIFIED="1329391426051" STYLE="fork" TEXT="i thought for long about measuing stability of individual statements, but it seems to me after some thought that instability comes from the incorrect/complex combination of statements rather than the statements themselves.&#xa;Hence moving calculated stability to the aggregates"/>
</node>
<node CREATED="1329304462685" FOLDED="true" ID="ID_231771709" MODIFIED="1347358686070" STYLE="fork" TEXT="f: flexibility: Fi/(Fi+Fo+Fe)">
<node CREATED="1329333342773" ID="ID_1669841278" MODIFIED="1329388885486" STYLE="fork" TEXT="Measured as how many ways there are to influence the output"/>
<node CREATED="1329388888936" ID="ID_690871127" MODIFIED="1329388904225" TEXT="Therefore, the larger the input options, the larger the flexiblity"/>
<node CREATED="1329388948475" ID="ID_80861897" MODIFIED="1329389952679" TEXT="This is similar to Bob Martin&apos;s stability definition for classes and packages">
<icon BUILTIN="attach"/>
</node>
</node>
</node>
<node CREATED="1329303949626" FOLDED="true" ID="ID_602967971" MODIFIED="1346934382084" STYLE="fork" TEXT="dynamic">
<node CREATED="1329303955146" ID="ID_180446275" MODIFIED="1329388684466" STYLE="fork" TEXT="state: passive, loaded, active, done"/>
<node CREATED="1329303999547" ID="ID_1098763686" MODIFIED="1329388684466" STYLE="fork" TEXT="execution frame: sum total of the running context state"/>
<node CREATED="1330084486409" FOLDED="true" ID="ID_516154761" MODIFIED="1346932970685" TEXT="md: dynamic mass: &quot;amount of space&quot; taken up by a running instance of the statement">
<node CREATED="1330084520963" ID="ID_227615241" MODIFIED="1330084522800" TEXT="Space complexity of the statement wrt the context"/>
</node>
</node>
</node>
<node CREATED="1329301746756" ID="ID_777864323" MODIFIED="1329388684376" STYLE="fork" TEXT="changes on statements"/>
</node>
<node CREATED="1329301788158" FOLDED="true" ID="ID_726108879" MODIFIED="1346934717580" POSITION="right" STYLE="fork" TEXT="statements can be aggregated to increasingly nested superstructures">
<font NAME="SansSerif" SIZE="12"/>
<node CREATED="1330085473690" ID="ID_1663733139" MODIFIED="1346934590882" TEXT="For eg:">
<node CREATED="1329299291952" ID="ID_26607867" MODIFIED="1346934595000" STYLE="fork" TEXT="Sequence of statements">
<node CREATED="1329394885325" ID="ID_857995712" MODIFIED="1329394905467" TEXT="This is a set of statements that are executed in exact order"/>
<node CREATED="1329299319451" FOLDED="true" ID="ID_830057011" MODIFIED="1346934603110" STYLE="fork" TEXT="s = s1 , s2 implies">
<node CREATED="1329299395229" FOLDED="true" ID="ID_828503570" MODIFIED="1330483312635" STYLE="fork" TEXT="M = M1 &amp; M2">
<node CREATED="1329299484368" ID="ID_1513203125" MODIFIED="1329388684376" STYLE="fork" TEXT="where &quot;&amp;&quot; implies a merge of the two meanings that is undefined at this level, but defined at the +1 level"/>
</node>
<node CREATED="1329299410098" FOLDED="true" ID="ID_1164785870" MODIFIED="1330483312636" STYLE="fork" TEXT="C = C1 + C2">
<node CREATED="1329299522278" FOLDED="true" ID="ID_1026952964" MODIFIED="1330483312636" STYLE="fork" TEXT="where &quot;+&quot; implies that the states of both contexts have now merged such that:">
<node CREATED="1329299545708" ID="ID_306417967" MODIFIED="1329388684376" STYLE="fork" TEXT="I: input of the sequence is the union of both individual inputs"/>
<node CREATED="1329299601657" ID="ID_1856655594" MODIFIED="1329388684376" STYLE="fork" TEXT="O: output of the sequence is the union of both individual outputs "/>
<node CREATED="1329299617656" ID="ID_714459904" MODIFIED="1329388684376" STYLE="fork" TEXT="S: Side-effects from the first statement are superimposed upon by those from the second statement"/>
</node>
</node>
<node CREATED="1329299430048" FOLDED="true" ID="ID_1468475984" MODIFIED="1346933675388" STYLE="fork" TEXT="U = U1 or  = U2 or not at all">
<node CREATED="1329301415730" ID="ID_841825593" MODIFIED="1329388684376" STYLE="fork" TEXT="ie the user becomes pertinent only when the input and output are directly tied to the user"/>
</node>
<node CREATED="1329299417688" FOLDED="true" ID="ID_597978498" MODIFIED="1346934599375" STYLE="fork" TEXT="B = B1 = B2">
<node CREATED="1329299750542" ID="ID_1590715224" MODIFIED="1346933680058" STYLE="fork" TEXT="where &quot;=&quot; implies that Base 1 and 2 are equivalent, ie">
<node CREATED="1329299781181" ID="ID_457591011" MODIFIED="1329388684376" STYLE="fork" TEXT="they are the same"/>
<node CREATED="1329299783981" FOLDED="true" ID="ID_613812391" MODIFIED="1330483312636" STYLE="fork" TEXT="or, they both support s1 and s2">
<node CREATED="1329300114459" ID="ID_455530108" MODIFIED="1329388684376" STYLE="fork" TEXT="B supports s if there exists an executor E for s in B"/>
</node>
</node>
</node>
<node CREATED="1329392736791" ID="ID_264183161" MODIFIED="1346933686668">
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
<node CREATED="1329392658191" FOLDED="true" ID="ID_50055452" MODIFIED="1346933694440" TEXT="S">
<node CREATED="1329392693761" ID="ID_1810718776" MODIFIED="1329392725883" TEXT="stability decreases as the height of the sequence does"/>
<node CREATED="1329393916553" ID="ID_1456815716" MODIFIED="1329393936385" TEXT="exponential function of h tbd">
<icon BUILTIN="messagebox_warning"/>
</node>
</node>
<node CREATED="1329394060573" ID="ID_518012492" MODIFIED="1329394069395" TEXT="other properties tbd">
<icon BUILTIN="messagebox_warning"/>
</node>
</node>
<node CREATED="1329300373341" FOLDED="true" ID="ID_209733810" MODIFIED="1346933734270" STYLE="fork" TEXT="s = s1, s2, ...., sn">
<node CREATED="1329300387058" ID="ID_1481400169" MODIFIED="1329388684376" STYLE="fork" TEXT="extrapolate from binary logic above"/>
</node>
</node>
<node CREATED="1329301832579" FOLDED="true" ID="ID_1054163326" MODIFIED="1346933741399" STYLE="fork" TEXT="Parallel Statements">
<node CREATED="1329394096183" ID="ID_1500477524" MODIFIED="1329394103425" TEXT="s = s1 || s2"/>
</node>
<node CREATED="1329302137233" FOLDED="true" ID="ID_1614834312" MODIFIED="1346933760192" STYLE="fork" TEXT="Routine - a group of statements">
<node CREATED="1329394702664" ID="ID_1742801050" MODIFIED="1329394716556" TEXT="this is similar to sequence, except it allows all other kinds of statements"/>
</node>
<node CREATED="1329387402101" FOLDED="true" ID="ID_816669729" MODIFIED="1346933764769" STYLE="fork" TEXT="Component - a group of routines">
<node CREATED="1329394723804" ID="ID_979766687" MODIFIED="1329394749616" TEXT="this is a collection of related routines that may/not depend on each other"/>
</node>
<node CREATED="1329387410259" FOLDED="true" ID="ID_578452799" MODIFIED="1346933776533" STYLE="fork" TEXT="Application - group of components">
<node CREATED="1329394801184" ID="ID_494395569" MODIFIED="1329394834246" TEXT="this is a group of components orchestrated together to achieve a set of goals defined in the M domain"/>
<node CREATED="1329394834864" ID="ID_1400024757" MODIFIED="1329394847746" TEXT="there is a user attached to the sytem"/>
<node CREATED="1329394848474" ID="ID_853028684" MODIFIED="1329394869626" TEXT="there is a feedback/control loop between user and application"/>
</node>
<node CREATED="1329400119779" FOLDED="true" ID="ID_186182206" MODIFIED="1346933778589" TEXT="What about process or machine boundaries?">
<node CREATED="1329400130299" ID="ID_1794799504" MODIFIED="1329400260811" TEXT="Well, that&apos;s what the executor is! to be expanded from Seq onwards">
<arrowlink COLOR="#ff3300" DESTINATION="ID_26607867" ENDARROW="Default" ENDINCLINATION="303;0;" ID="Arrow_ID_852907189" STARTARROW="Default" STARTINCLINATION="303;0;"/>
</node>
<node CREATED="1329400269150" ID="ID_1959128742" MODIFIED="1329400349412" TEXT="Todo: When drawing multiple stmts with a single executor, box them together and write the executor on a corner">
<icon BUILTIN="button_ok"/>
</node>
</node>
</node>
<node CREATED="1329395667257" ID="ID_1486900774" MODIFIED="1346933779794" TEXT="Properties of aggregates">
<node CREATED="1329395677976" ID="ID_761752636" MODIFIED="1329395705648" TEXT="height is the sum of the child elements&apos; heights"/>
<node CREATED="1329395705926" FOLDED="true" ID="ID_1187205767" MODIFIED="1346933796084" TEXT="stability is defined in a ladder">
<icon BUILTIN="closed"/>
<node CREATED="1329395717976" ID="ID_1820195065" MODIFIED="1329395743958" TEXT="straight seq: = exp decrease as height increases"/>
<node CREATED="1329395744826" ID="ID_955892670" MODIFIED="1329395769738" TEXT="parallel stmts = min(stability of individual stmts)"/>
<node CREATED="1329395773836" ID="ID_1619155534" MODIFIED="1329395814048" TEXT="routine = compound stability of child elements"/>
<node CREATED="1329395815226" ID="ID_1995674028" MODIFIED="1329395842688" TEXT="component/application = function of # layers, size of each layer etc"/>
</node>
</node>
<node CREATED="1329301806588" ID="ID_1788415420" MODIFIED="1329388684376" STYLE="fork" TEXT="Changes on aggregates"/>
</node>
<node CREATED="1330085576443" FOLDED="true" ID="ID_50351865" MODIFIED="1346934571909" POSITION="right" TEXT="|||ly data can be atomic or aggregate">
<font NAME="SansSerif" SIZE="12"/>
<node CREATED="1330085951364" ID="ID_1458803223" MODIFIED="1346157841296" TEXT="atomic data">
<node CREATED="1330085995342" ID="ID_1796438867" MODIFIED="1330085998416" TEXT="has a value"/>
<node CREATED="1330085998788" ID="ID_1843538591" MODIFIED="1330086011708" TEXT="and a base where its valid"/>
</node>
<node CREATED="1330085957736" ID="ID_37473761" MODIFIED="1330085960929" TEXT="aggregate data"/>
</node>
<node CREATED="1346934721151" FOLDED="true" ID="ID_704147697" MODIFIED="1346935014258" POSITION="right" TEXT="statements are aggregated by forces">
<node CREATED="1346934737573" ID="ID_1312190183" MODIFIED="1346934758001" TEXT="forces can assemble steps into larger structures"/>
<node CREATED="1346934743358" ID="ID_1902726685" MODIFIED="1346934766962" TEXT="..or disassamble them"/>
<node CREATED="1346934807801" ID="ID_1973373129" MODIFIED="1346934813016" TEXT="but not create statements"/>
</node>
<node CREATED="1346934931314" FOLDED="true" ID="ID_1982732819" MODIFIED="1347358507542" POSITION="right" TEXT="statement creation">
<node CREATED="1346934940018" ID="ID_1367397133" MODIFIED="1346934964226" TEXT="...is envisioned at the M level"/>
<node CREATED="1346934946127" ID="ID_1735094407" MODIFIED="1346934954550" TEXT="...and implemented at the B level"/>
</node>
<node CREATED="1329387661360" ID="ID_237796339" MODIFIED="1347157935915" POSITION="left" STYLE="fork" TEXT="notes">
<font NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="edit"/>
<node CREATED="1329387665319" ID="ID_928161729" MODIFIED="1329388684376" STYLE="fork" TEXT="Can Bob Martin&apos;s SOLID priniciples be included here?"/>
<node CREATED="1329387682907" ID="ID_1895407319" MODIFIED="1329388684376" STYLE="fork" TEXT="In particular the Stability principle and the &quot;Main Line&quot; concept?"/>
<node CREATED="1329391468933" ID="ID_430344424" MODIFIED="1329391496134" TEXT="Similarly, can equivalents of the McCabe metrics be incorporated?"/>
<node CREATED="1329611935312" ID="ID_595069496" LINK="http://blog.johanneslink.net/2009/03/06/a-unified-theory-of-software-design/" MODIFIED="1329611981174" TEXT="Nice idea of modeling change as a &quot;probability p of x changing&quot; from this blog post"/>
<node CREATED="1329613576384" ID="ID_1739068988" LINK="http://research.microsoft.com/pubs/68626/unified_theories.pdf" MODIFIED="1329613606080" TEXT="CAR Hoare&apos;s Theories of Software is also a good source"/>
<node CREATED="1330483365789" ID="ID_1087075760" MODIFIED="1331003227682" TEXT="Found the wonderful &quot;Grand Unified Theory of Software Engineering&quot; book a week ago. Lots of overlap with my ideas.&#xa;Need to figure out how to merge mine with those. Initial thoughts:&#xa; - GUTSE is a much higher level thought process ie encompasses more.&#xa; - Does NOT want to get down to notation and symbols for valid reasons&#xa; - Has some awesome chapters on applying the theory esp using ACT-R. My theory should reach that level for it to be &quot;done&quot;&#xa;      - to clarify, however: not trying to use ACT-R and such like. I just want to use the theory I come up with.&#xa; - Hadnt heard about ACT-R but seems like that would be an awesome tool in and of itself to understand the human side of software."/>
<node CREATED="1347157942911" FOLDED="true" ID="ID_210810632" MODIFIED="1348037167896" TEXT="Brainwave today: Use Godel numbering to size code and/or Turning Machines">
<node CREATED="1347157982876" ID="ID_343495508" MODIFIED="1347158014450" TEXT="Godel numbering essentially &quot;size&quot;s code by encoding their contents as huge numbers that are unique to the contents&apos; value"/>
<node CREATED="1347158015102" ID="ID_56904385" MODIFIED="1347158060359" TEXT="The concept of &quot;Simplest turning machine&quot; could be used to start with a unit machine and build up from there to more complex ones. The NOOP machine could well be the unit of code"/>
</node>
<node CREATED="1347158069185" ID="ID_267611638" MODIFIED="1347158103865" TEXT="Similarly: Use &quot;godels&quot; or &quot;alans&quot; or &quot;tm&quot;s as units of size/complexity/whatever :)"/>
<node CREATED="1348037170103" ID="ID_347625496" MODIFIED="1348037186728" TEXT="Some more approaches to software size that I discovered">
<node CREATED="1348037188304" ID="ID_1184940707" LINK="http://www.virtualmachinery.com/sidebar2.htm" MODIFIED="1348037239994" TEXT="Halstead&apos;s software science that defines length, volume, difficulty etc">
<node CREATED="1348039160539" ID="ID_886106251" LINK="ref/Software%20Science%20Revisited-%20A%20Critical%20Analysis%20of%20the%20Theory%20and.pdf" MODIFIED="1348039183113" TEXT="One more on Halstead&apos;s metrics"/>
</node>
<node CREATED="1348037261500" ID="ID_1753510426" LINK="ref/kearney.pdf" MODIFIED="1348037392737" TEXT="A review of numerous methods of measuring software size from cmu"/>
<node CREATED="1348037303793" ID="ID_1742755527" LINK="http://en.wikipedia.org/wiki/Kolmogorov_complexity" MODIFIED="1348037490315" TEXT="Kolmogorov complexity as measure of &quot;length&quot; of objects. Can this be used to equate to program length?"/>
</node>
</node>
<node CREATED="1346987958052" FOLDED="true" ID="ID_1527585743" MODIFIED="1347157934062" POSITION="left" TEXT="The GUTS book">
<node CREATED="1346988095873" ID="ID_1641101045" MODIFIED="1346988099164" TEXT="content ideas">
<node CREATED="1346987984229" ID="ID_1179744454" MODIFIED="1346987985660" TEXT="size for statement, routine, app"/>
<node CREATED="1346987994163" ID="ID_798880785" MODIFIED="1346987995492" TEXT="testing out the formula for 99 bottles of beer in multiple languages"/>
<node CREATED="1346988006020" ID="ID_936949746" MODIFIED="1346988007358" TEXT="test out the formula for a standard algorithm in multiple languages"/>
<node CREATED="1346988013915" ID="ID_655155148" MODIFIED="1346988015221" TEXT="stability for statement, routine, app"/>
<node CREATED="1346988026166" ID="ID_1468101717" MODIFIED="1346988027429" TEXT="testing out the formula for a small business app - preferably implemented fairly standardly accross multiple languages"/>
</node>
<node CREATED="1346988110447" FOLDED="true" ID="ID_1748144385" MODIFIED="1346990344177" TEXT="toc">
<node CREATED="1346988741573" FOLDED="true" ID="ID_441396775" MODIFIED="1346990225989" TEXT="code statics">
<node CREATED="1346988115685" FOLDED="true" ID="ID_1149304824" MODIFIED="1346990184409" TEXT="code size">
<node CREATED="1346988123275" ID="ID_1727227104" MODIFIED="1346988127660" TEXT="current notions"/>
<node CREATED="1346988130708" ID="ID_342014725" MODIFIED="1346988135147" TEXT="the formula"/>
<node CREATED="1346988136018" ID="ID_971290580" MODIFIED="1346988149790" TEXT="examples of use"/>
<node CREATED="1346988306716" ID="ID_24350550" MODIFIED="1346988321414" TEXT="comparison of different bases, same solution"/>
</node>
<node CREATED="1346988152074" ID="ID_1264558401" MODIFIED="1346988155766" TEXT="code stability"/>
<node CREATED="1346988157962" ID="ID_387349514" MODIFIED="1346988170507" TEXT="code flexibility"/>
<node CREATED="1346988171412" ID="ID_1894280181" MODIFIED="1346988200721" TEXT="code complexity/simplicity"/>
</node>
<node CREATED="1346988754960" ID="ID_1546174016" MODIFIED="1346990329154" TEXT="code dynamics">
<node CREATED="1346988364235" ID="ID_426489750" MODIFIED="1346988367428" TEXT="forces on code"/>
<node CREATED="1346988374015" ID="ID_1547061536" MODIFIED="1346988380622" TEXT="effect of forces"/>
<node CREATED="1346990206717" ID="ID_165098568" MODIFIED="1346990215424" TEXT="building/changing code using forces"/>
</node>
<node CREATED="1346988421711" ID="ID_1695777439" MODIFIED="1346988426099" TEXT="bases and meaning"/>
</node>
</node>
<node CREATED="1346988952116" FOLDED="true" ID="ID_139350457" MODIFIED="1346989009591" POSITION="left" TEXT="Open Q&apos;s/concerns">
<node CREATED="1346988967912" FOLDED="true" ID="ID_1871672924" MODIFIED="1346989007127" TEXT="We need a code size metric that is language agnostic">
<node CREATED="1346988988168" ID="ID_519303419" MODIFIED="1346989004545" TEXT="current ans: weight the final weight by the specific gravity of each base"/>
</node>
</node>
<node CREATED="1331002039710" FOLDED="true" HGAP="-145" ID="ID_1800943276" MODIFIED="1346156976820" POSITION="right" TEXT="how to read this mindmap" VSHIFT="188">
<font NAME="SansSerif" SIZE="12"/>
<node CREATED="1331002121210" ID="ID_1676086014" MODIFIED="1331002143869" TEXT="the top level is unfolded to provide the most readable overview (imo)"/>
<node CREATED="1331002144679" ID="ID_1815434561" MODIFIED="1331002306262" TEXT="each node&apos;s children can be read from top to bottom as a paragraph or cohesive whole"/>
<node CREATED="1331002175476" ID="ID_586309297" MODIFIED="1331002327130" TEXT="each child node with chidren can be further expanded to read that sub topic in the same top-to-bottom fashion"/>
<node CREATED="1331002198707" ID="ID_1589754944" MODIFIED="1331002271773" TEXT="Eg: the &quot;big idea&quot; node opens out into 4-5 nodes that can be read as a sentence starting at &quot;Define code...&quot; and ending at &quot;determine their value&quot;"/>
<node CREATED="1331002360603" ID="ID_468218564" MODIFIED="1331002393868" TEXT="The left side of the map is roughly the &quot;ideaspace&quot; where incubation of ideas are added first"/>
<node CREATED="1331002394470" ID="ID_506788239" MODIFIED="1331002421170" TEXT="The right side is the more concrete side; representing thoughts that have been solidified enough to be called part of the theory"/>
<node CREATED="1331002424966" ID="ID_532742410" MODIFIED="1331002450801" TEXT="but this is a guideline, mostly. I typically add stuff to the left when I get stuck on the right."/>
</node>
<node CREATED="1331098183954" FOLDED="true" HGAP="-205" ID="ID_523686524" MODIFIED="1346156944370" POSITION="right" TEXT="status" VSHIFT="62">
<font NAME="SansSerif" SIZE="12"/>
<node CREATED="1331098204125" ID="ID_597985630" MODIFIED="1331098218003" TEXT="basic elements for code and data decided"/>
<node CREATED="1331098218930" ID="ID_1061172486" MODIFIED="1331098259835" TEXT="basic idea of stability still being worked on. was defining subroutine calls as &quot;dense&quot; points, and therefore defining the stability of the app as a volume-based CG-ish concept"/>
<node CREATED="1331098260434" ID="ID_1752710132" MODIFIED="1331098274146" TEXT="the data hierarchy needs to be expanded"/>
<node CREATED="1331098294467" ID="ID_1777961427" MODIFIED="1331098299061" TEXT="...as does the dynamic flow"/>
<node CREATED="1331098300166" ID="ID_1725208290" MODIFIED="1331098329779" TEXT="if you&apos;re reading this months after feb 2012, read the left nodes first, then the &quot;statements are atoms&quot; one.."/>
<node CREATED="1331098331234" ID="ID_1983185364" MODIFIED="1331098338738" TEXT="... and re-read the GUTSE book"/>
</node>
</node>
</map>
