/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;

/**
 *
 * @author nishant
 */
public class HadoopProcessingClass {
    
    protected String startprocess(String startProcess) {

        StringBuilder output = new StringBuilder();

        Process pStart;
        try {
            String[] envp = {"PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/home/nishant/bin:/usr/local/java/jdk1.8.0_66/bin:/home/nishant/bin:/usr/local/java/jre1.8.0_66/bin:/usr/lib/jvm/java-7-openjdk-amd64/bin:/usr/local/hadoop/bin:/usr/local/hadoop/sbin:/usr/local/hive/bin:/usr/lib/sqoop/bin"};

            Runtime rtime = Runtime.getRuntime();
            pStart = rtime.exec(startProcess, envp);
           
            pStart.waitFor();

            BufferedReader reader = new BufferedReader(new InputStreamReader(pStart.getInputStream()));

            String line = "";
            while ((line = reader.readLine()) != null) {
                if (!line.contains("Warning")) {
                    output.append(line).append("<br/>");
                }
            }

        } catch (IOException | InterruptedException e) {
            System.out.print(e);
        }

        return output.toString();
    }
    
    public static void Do_Process()
    {
        ProcessBuilder pd = new ProcessBuilder("xterm", "-e", "sh /home/rushin/Proj_scripts/s3.sh");
//            String Path = "/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/home/nishant/bin:/usr/local/java/jdk1.8.0_66/bin:/home/nishant/bin:/usr/local/java/jre1.8.0_66/bin:/usr/lib/jvm/java-7-openjdk-amd64/bin:/usr/local/hadoop/bin:/usr/local/hadoop/sbin:/usr/local/hive/bin:/usr/lib/sqoop/bin";
//             Map<String, String> envs = pd.environment();
//             envs.put("Path", "/home/rushin/Proj_scripts/");
//             File f = new File("/home/rushin/pd.txt");
//             pd.redirectError(f);
//             pd.redirectOutput(f); 
        
        
        
            try {
                Process p = pd.start();
                p.waitFor();
            } catch (IOException ex) {
                System.out.print(ex);
            } catch (InterruptedException ex) {
            Logger.getLogger(HadoopProcessingClass.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
