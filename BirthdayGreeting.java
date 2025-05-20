import java.util.Scanner;
import java.util.Arrays;
import java.nio.file.Paths;
import java.io.*;

import de.kherud.llama.*;
import de.kherud.llama.LlamaLoader;

public class BirthdayGreeting {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        boolean found=false;
        String name="";
        String gender="";
        String keywordsraw="";
        int age=0;

        System.out.print("Choose a client ID: ");
        String IDtogreet = scanner.nextLine().trim();

        
        String csvFile = "sample.csv";
        // Try-with-resources to ensure the reader gets closed automatically
        try (BufferedReader br = new BufferedReader(new FileReader(csvFile))) {
            String line;

            // Read each line from the file
            while (((line = br.readLine()) != null)&&(!found)) {
                String[] values = line.split("\t");
                System.out.println("DEBUG "+line+" '"+values[0]+"'");
                if (values[0].equals(IDtogreet))
                {                
                    name=values[1];
                    gender=values[3];
                    age=Integer.parseInt(values[2]);
                    keywordsraw=values[4];
                    found=true;
                }
            }

        } catch (IOException e) {
            System.err.println("Error reading the CSV file: " + e.getMessage());
            e.printStackTrace();
        }

        if (!found)
        {
                System.out.println("This ID does not exist.");
                System.exit(0);
        }
        String[] keywords=keywordsraw.split(",");
        
        // --- Build prompt ---
        String prompt = buildPrompt(name, age, gender, keywords);

        // --- Load model parameters ---
        ModelParameters modelParams = new ModelParameters();
        modelParams.setModel( System.getProperty("user.home") + "/java/java-llama.cpp/build/_deps/llama.cpp-src/models/dolphin-2.2.1-mistral-7b.Q4_K_M.gguf"); // <-- adjust model name
        modelParams.setCtxSize( 512); // context size

        // --- Load model ---
        LlamaModel model=new LlamaModel(modelParams);
/*        try {
            LlamaLoader.loadNativeLibrary(Paths.get("/home/qdi/java/java-llama.cpp/build/_deps/llama.cpp-src/models/ggml-vocab-deepseek-llm.gguf"));
        } catch (LlamaException e) {
            System.err.println("Failed to load model: " + e.getMessage());
            return;
        }*/

        // --- Inference parameters ---
        InferenceParameters inferParams = new InferenceParameters(prompt);
        inferParams.setTemperature ( 0.7f);
        inferParams.setTopK ( 40);
        inferParams.setTopP ( 0.95f);
        //inferParams.nThreads = Runtime.getRuntime().availableProcessors();
        inferParams.setSeed ( 42);

        // --- Run inference ---
        System.out.println("\n Generating Birthday Greeting...\n");
        try {
            for (LlamaOutput token : model.generate( inferParams)) {
                System.out.print(token.text);
                System.out.flush();
            }
            System.out.println();
        } catch (LlamaException e) {
            System.err.println("Error during generation: " + e.getMessage());
        }

        model.close();
    }

    private static String buildPrompt(String name, int age, String gender, String[] keywords) {
        StringBuilder sb = new StringBuilder();
        sb.append("Write a cheerful and creative birthday greeting for a person named ")
          .append(name).append(", who is turning ").append(age)
          .append(". Their gender is ").append(gender)
          .append(". Include these themes: ");
        sb.append(String.join(", ", Arrays.stream(keywords).map(String::trim).toArray(String[]::new)));
        sb.append(". Keep it warm, fun, and personalized.\n\nGreeting:\n");
        return sb.toString();
    }
}
