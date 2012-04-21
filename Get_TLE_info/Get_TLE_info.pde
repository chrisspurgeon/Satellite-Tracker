/* Point the user to the TLE file, 
 search for the "ISS" entry, and get the lines.
 
 */

String[] filelines;
int index = 0;
int fileLength;

String filePath = selectInput("Find the TLE file");
String satellite = "ISS";

if (filePath == null) {
  // If a folder was not selected
  println("No file was selected...");
} 
else {
  println("File path is " + filePath);
  filelines = loadStrings(filePath);
  fileLength = filelines.length;
  for (index = 0; index < fileLength; index++) {
        println(filelines[index]);
    if (satellite.equals(trim(filelines[index]))) {
      println("Got a match at line " + index + "!");
    }
  }
}

