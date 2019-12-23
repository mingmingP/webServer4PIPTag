import com.SensingDat;
import netscape.javascript.JSObject;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import java.io.*;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

public class JsonTools {

    static SensingData parseJSON() {
        Object object = null;
        try {
            //path may differ when the code been run on different platforms, but the file name would be the same
            object = new JSONParser().parse(new FileReader("/Users/mindyp/downloads/jsonFile/alldatawith3feature.json"));
        } catch (IOException e) {
            e.printStackTrace();
        } catch (ParseException e) {
            e.printStackTrace();
        }

        JSONObject jo = (JSONObject) ((JSONArray) object).get(((JSONArray) object).size()-1);
        double humidity = (double) jo.get("humidity");
        double temp = (double) jo.get("temp");
        double light = (double) jo.get("light");
        SensingData sensingData = new SensingData(humidity, temp, light);
        return sensingData;

    }

    static List<SensingData> parseListJSON() {
        List<SensingData> sensingDataList = new ArrayList<SensingData>();
        Object object = new Object();
        try {
            object = new JSONParser().parse(new FileReader("/Users/mindyp/downloads/jsonFile/alldatawith3feature.json"));
          System.out.println(((JSONArray) object).size()-1);
          System.out.println(((JSONArray) object).size()-11);
        } catch (IOException | ParseException e) {
            e.printStackTrace();
        }

        //  JSONArray ja = (JSONArray) object;
        for (int i = ((JSONArray) object).size()-1; i > ((JSONArray) object).size()-11; i--) {
            JSONObject jo = (JSONObject) ((JSONArray) object).get(i);
            double humidity = (double) jo.get("humidity");
            double temp = (double) jo.get("temp");
            double light = (double) jo.get("light");
            sensingDataList.add(new SensingData(humidity, temp, light));
        }

        return sensingDataList;

    }

}
