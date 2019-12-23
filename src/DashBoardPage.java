import org.json.simple.parser.ParseException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/dash")
public class DashBoardPage extends HttpServlet {


    @Override
    public void init() throws ServletException {


    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ConnectionUtil.sendGet();
        SensingData sensingData = JsonTools.parseJSON();
        List<SensingData> sensingDataList = JsonTools.parseListJSON();
        List<Double> tlist = new ArrayList<Double>();
        List<Double> hlist = new ArrayList<Double>();
        List<Double> llist = new ArrayList<Double>();
        for (SensingData s : sensingDataList) {
            tlist.add(s.temp);
            hlist.add(s.humidity);
            llist.add(s.light);
        }

        RequestDispatcher rd = req.getRequestDispatcher("index.jsp");
        req.setAttribute("temp", sensingData.temp);
        req.setAttribute("humidity", sensingData.humidity);
        req.setAttribute("light", sensingData.light);
        req.setAttribute("tlist", tlist);
        req.setAttribute("hlist", hlist);
        req.setAttribute("llist", llist);
        rd.forward(req, resp);


    }

    @Override
    public void destroy() {
        super.destroy();
    }

}
