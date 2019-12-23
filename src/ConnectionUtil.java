import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

public class ConnectionUtil {
    public static void sendGet() {
        HttpURLConnection httpConn = null;
        BufferedReader in = null;

        try {
            URL url = new URL("http://127.0.0.1:8000/get_data");
            httpConn = (HttpURLConnection) url.openConnection();

            //读取响应
            if (httpConn.getResponseCode() == HttpURLConnection.HTTP_OK) {
                StringBuffer content = new StringBuffer();
                String tempStr = "";
                in = new BufferedReader(new InputStreamReader(httpConn.getInputStream()));
                while ((tempStr = in.readLine()) != null) {
                    content.append(tempStr);
                }

            } else {

            }
        } catch (IOException e) {
            e.printStackTrace();
        }


    }
}



