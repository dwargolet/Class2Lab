package lab4.model;

import java.util.Calendar;

/**This class creates an instance of the Calendar object, pulls the current
 * time and then sets the corresponding message to reflect the time of day.
 *
 * @author Daniel
 */
public class WelcomeService {

    
   private final String MORNING = "Morning"; //Message for morning time
   private final String AFTERNOON = "Afternoon"; //Message for afternoon time
   private final String EVENING = "Evening"; //Message for evening time
   private final int NOON = 12;
   private final int FOUR = 4;
   private String msg;
   
   
   private String displayTime;
   
   
   
    
   private void determineTime(){
      Calendar currentTime = Calendar.getInstance(); //instance of the calendar object
      int hour = currentTime.get(Calendar.HOUR_OF_DAY); //the time of day hour
                               
        if(hour < NOON){
            displayTime = MORNING;
        }else if(hour <= FOUR || hour >= NOON) {
            displayTime = AFTERNOON;
        }else{
            displayTime = EVENING;
            System.out.println(hour);
        }              
    }
         
         
   public void buildMessage(String firstName, String lastName){
       determineTime();
       getFirstName(firstName);
       getLastName(lastName);
       
       msg = "Good " + displayTime + ", " + firstName + ". Welcome!";
       System.out.println(msg);
   }      
         
   
  
   public String getFirstName(String firstName){      
       return firstName;
   }
   
   public String getLastName(String lastName){      
       return lastName;
   }
    
   
   
   public static void main(String[] args) {
           WelcomeService w = new WelcomeService();
           
           String f = "Dan";
           String l = "Wargolet";
           
           w.buildMessage(f, l);
    }
   
    

}
