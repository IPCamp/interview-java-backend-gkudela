import java.io.*;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;

public class ClientMgmt {

    public static void main(String[] args) {
        boolean modif=false;
        int chosen=0;int maxind=0;
        HashMap<String, PersonalData> data = new HashMap<String,PersonalData>();

        String csvFile = "sample.csv";
        // Try-with-resources to ensure the reader gets closed automatically
        try (BufferedReader br = new BufferedReader(new FileReader(csvFile))) {
            String line;

            // Read each line from the file
            while ((line = br.readLine()) != null) {
                // Split the line by comma and convert to a List
                String[] values = line.split("\t");
                //System.out.println("DEBUG "+values[0]+" xxx "+values[1]+" xxx "+values[2]+" xxx "+values[3]+" xxx "+values[4]+" xxx ");
                PersonalData HelpVar=new PersonalData();                
                HelpVar.name=values[1];
                HelpVar.gender=values[3].charAt(0);
                HelpVar.age=Integer.parseInt(values[2]);
                HelpVar.keywords=values[4];
                data.put(values[0],HelpVar);
                if(Integer.parseInt(values[0])>maxind) maxind=Integer.parseInt(values[0]);
                // Add the line data to our main list
            }

        } catch (IOException e) {
            System.err.println("Error reading the CSV file: " + e.getMessage());
            e.printStackTrace();
        }              
                
    while (chosen<5)
    {
        System.out.println("");
        System.out.println("------------------------------");
        System.out.println("");
        System.out.println("1: List clients");
        System.out.println("2: New client");
        System.out.println("3: Delete client");
        System.out.println("4: Modify client");
        if (modif)
        {
            System.out.println("5: Quit without saving");
            System.out.println("6: Save and quit");
        }
        else
        {
            System.out.println("5: Quit");
        }
        
        System.out.print("Choose an option! ");
        Scanner scanner = new Scanner(System.in);
        chosen = Integer.parseInt( scanner.nextLine().trim());

        if (chosen==1)
        {
            for (HashMap.Entry<String, PersonalData> entry : data.entrySet())
            {
                String i = entry.getKey();
                PersonalData row = entry.getValue();
                System.out.println("Row " + i + ": " + row.name+" "+row.gender+" "+ row.age+" "+ row.keywords);
            }

        } //end of 1

        if (chosen==2)
        {

            System.out.print("Name: ");
            String name = scanner.nextLine().trim();

            System.out.print("Enter age: ");
            int age = Integer.parseInt(scanner.nextLine().trim());

            System.out.print("Enter gender (M/F/Other): ");
            String gender = scanner.nextLine().trim();

            System.out.print("Enter keywords (comma-separated): ");
            String keywords = scanner.nextLine().trim();
            
            PersonalData HelpVar=new PersonalData();                
            HelpVar.name=name;
            HelpVar.gender=gender.charAt(0);
            HelpVar.age=age;
            HelpVar.keywords=keywords;
            maxind++;
            // System.out.println("DEBUG "+maxind);
            data.put(Integer.toString(maxind),HelpVar);
            modif=true;

        } //end of 2

        if (chosen==3)
        {
             System.out.print("ID of the client to be deleted: ");
             String IDtodel = scanner.nextLine().trim();
             if (data.get(IDtodel)==null)
             {
                System.out.println("This ID does not exist.");
             }
             else
             {
                data.remove(IDtodel);
                System.out.println("Deleted.");                
             }
             modif=true;
        } //end of 3

        if (chosen==4)
        {
             System.out.print("ID of the client to be modified: ");
             String IDtomod = scanner.nextLine().trim();
             if (data.get(IDtomod)==null)
             {
                System.out.println("This ID does not exist.");
             }
             else
             {
                System.out.println("New data -- press enter if you wish to leave a certain data member unchanged.");
                PersonalData HelpVar=new PersonalData(); 
                HelpVar=data.get(IDtomod);
                System.out.print("Name: ");
                String s = scanner.nextLine().trim();
                if(s.length()>0)
                {
                    HelpVar.name=s;
                    modif=true;
                }
                System.out.print("Gender: ");
                s = scanner.nextLine().trim();
                if(s.length()>0)
                {
                    HelpVar.gender=s.charAt(0);
                    modif=true;
                }
                System.out.print("Age: ");                
                s = scanner.nextLine().trim();
                if(s.length()>0)
                {
                    HelpVar.age=Integer.parseInt(s);
                    modif=true;
                }
                System.out.print("Keywords: ");                
                s = scanner.nextLine().trim();
                if(s.length()>0)
                {
                    System.out.print("Append or overwrite existing keywords (A/o)?");                                    
                    String aow = scanner.nextLine().trim();
                    if((aow.length()>0) && ((aow.charAt(0)=='O')||(aow.charAt(0)=='o')))
                    {
                        HelpVar.keywords=s;
                    }
                    else
                    {
                        HelpVar.keywords=HelpVar.keywords+","+s;
                    }
                    modif=true;
                }
                data.put(IDtomod, HelpVar);

             }
        } //end of 4

        if (chosen==5)
        {
            System.out.println("5: Quitting...");
        } //end of 5

        if ((chosen==6)&&(modif))
        {
            
            try
            {
                PrintWriter ofile = new PrintWriter("sample.csv");

                for (HashMap.Entry<String, PersonalData> entry : data.entrySet())
                {
                    String i = entry.getKey();
                    PersonalData row = entry.getValue();
                    ofile.println(i + "\t" + row.name+"\t"+row.age+"\t"+ row.gender+"\t"+ row.keywords);
                }
                ofile.close();
                        
            }
            
            catch (IOException e) {
                System.err.println("Error writing the CSV file: " + e.getMessage());
                e.printStackTrace();
            }
        
        } //end of 6
        
    }
    }
}
