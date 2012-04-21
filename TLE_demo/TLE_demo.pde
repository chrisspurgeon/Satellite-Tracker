//  Given a string, retrieve the TLE object

String TLEFile = "../TLEs/all.txt";

String searchString = "ZARYA";
String[] lines;
//int i = 0;
String line0, line1, line2;

void setup() {
  lines = loadStrings(TLEFile);
  for (int i = 0; i < lines.length; i++) {
    String thisLine = lines[i];
    String[] searchMatch = match(thisLine, searchString); 
    // println(thisLine);
    if (searchMatch != null) {
      println ("Found a match on line number " + i);
      println(searchMatch.length);
      println(thisLine.length());
      println(trim(thisLine).length());
      break;
    }
  }
}

