void setup() {

  String URLPath = "http://celestrak.com/NORAD/elements/";
   PrintWriter output, outputALL;
   
   String[] TLEURLs = {
   "1999-025.txt",
   "amateur.txt",
   "cosmos-2251-debris.txt",
   "cubesat.txt",
   "dmc.txt",
   "education.txt",
   "engineering.txt",
   "galileo.txt",
   "geo.txt",
   "geodetic.txt",
   "glo-ops.txt",
   "globalstar.txt",
   "goes.txt",
   "gorizont.txt",
   "gps-ops.txt",
   "intelsat.txt",
   "iridium-33-debris.txt",
   "iridium.txt",
   "military.txt",
   "molniya.txt",
   "musson.txt",
   "nnss.txt",
   "noaa.txt",
   "orbcomm.txt",
   "other-comm.txt",
   "other.txt",
   "radar.txt",
   "raduga.txt",
   "resource.txt",
   "sarsat.txt",
   "sbas.txt",
   "science.txt",
   "stations.txt",
   "tdrss.txt",
   "tle-new.txt",
   "visual.txt",
   "weather.txt",
   "x-comm.txt"
   };
   
   
   
   // We'll have one file that holds all of the TLEs, and make individual 
   // sub-files too.
   
   //outputALL = createWriter("../TLEs/" + "all.txt"); 
   outputALL = createWriter("../TLEs/" + "all_except_debris.txt"); 
   
   
   for (int thisTLE=0; thisTLE < TLEURLs.length; thisTLE++) {
   String lines[] = loadStrings(URLPath + TLEURLs[thisTLE]);
   output = createWriter("../TLEs/" + TLEURLs[thisTLE]); 
   println("there are " + lines.length + " lines");
   for (int i=0; i < lines.length; i++) {
   outputALL.println(lines[i]);
   output.println(lines[i]);
   println(lines[i]);
   }
   output.flush();
   output.close();
   }
   outputALL.flush();
   outputALL.close();
   println(TLEURLs.length);
   println("ALL DONE");
   
/*
  int foo = updateTLEs("myfolder.txt");
  println(foo);
  foo = updateTLEs();
  println(foo);
*/

}

