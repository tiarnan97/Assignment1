
class SystemInfo {
    // the labels to display under the bars
String[] vitals = new String[12];
// the values for each system entity,going to be random
int[] values = new int[12];
  
  SystemInfo() {
    

  
 
  vitals[0] = "Fuel";
  vitals[1] = "Chassis";
  vitals[2] = "Engine";
  vitals[3] = "Thrusters";
  vitals[4] = "Suspension";
  vitals[5] = "Flux Cap";
  vitals[6] = "Coil";
  vitals[7] = "Battery";
  vitals[8] = "Transmission";
  vitals[9] = "Brakes";
  vitals[10] = "Shock";
  vitals[11] = "Oxygen";
  
 }

void displayT()
{
  for (int i = 0; i < values.length; i++) {
     values[i] = (int)random(1,5);
    float h = map(values[i], 0, 5, 0, 350);
    rect(20 + i*65, 450-h, 30, h);
    text(vitals[i], 20 + i*55, 400); //display the labels of bars
    text(str(values[i]), 20 + i*55, 400-h-20);
  }
}//end of displayT()
}