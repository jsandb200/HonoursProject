/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.47
 * Generated at: 2023-03-16 16:49:54 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.util.List;
import java.util.ArrayList;

public final class leaderboard_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("\r\n");
      out.write("    <head>\r\n");
      out.write("        <title>Denomigator</title>\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"styling/css.css\">\r\n");
      out.write("    </head>\r\n");
      out.write("    \r\n");
      out.write("    <body style=\"background-image: url(images/swamp2.jpg); background-size: cover;\" >\r\n");
      out.write("       \r\n");
      out.write("       <div class=\"title\"></div>\r\n");
      out.write("\r\n");
      out.write("       <div id=\"boardwacka\" onclick=\"displayWackaDESC()\" class=\"boardbutton\" style=\"left: 20%; top: 30%;\"><p class=\"center\">Whack-a-Number</p></div>\r\n");
      out.write("       <div id=\"boardaddi\" onclick=\"displayAddiDESC()\" class=\"boardbutton\" style=\"left: 36%; top: 30%;\"><p class=\"center\">Add-igator (Solo)</p></div>\r\n");
      out.write("       <div id=\"boardsubi\" onclick=\"displaySubiDESC()\" class=\"boardbutton\" style=\"left: 52%; top: 30%;\"><p class=\"center\">Sub-igator (Solo)</p></div>\r\n");
      out.write("\r\n");
      out.write("       <table class=\"center\" id=\"leaderboard\">\r\n");
      out.write("        \r\n");
      out.write("        <tr>\r\n");
      out.write("            <th colspan=\"5\" id=\"boardtitle\">Leaderboard</th>\r\n");
      out.write("        </tr>\r\n");
      out.write("        \r\n");
      out.write("        \r\n");
      out.write("        <tr id=\"boardgames\">\r\n");
      out.write("            <th style=\"width: 10%;\">Ranking</th>\r\n");
      out.write("            <th style=\"width: 30%;\">Username</th> \r\n");
      out.write("            <th style=\"width: 20%;\" id=\"boardwackaheader\">Whack-a-Number</th> \r\n");
      out.write("            <th style=\"width: 20%;\" id=\"boardaddiheader\">Add-igator</th> \r\n");
      out.write("            <th style=\"width: 20%;\" id=\"boardsubiheader\">Sub-igator</th> \r\n");
      out.write("        </tr>\r\n");
      out.write("        \r\n");
      out.write("        \r\n");
      out.write("       </table>\r\n");
      out.write("       \r\n");
      out.write("       <button onclick=\"back()\" class=\"button\" id=\"leaderback\" style=\"position: absolute; width:8%; height: 10%; top: 88%; left: 1%; padding: 0;\">Back</button>\r\n");
      out.write("           \r\n");
      out.write("       <script src=\"https://code.jquery.com/jquery-3.6.3.js\" integrity=\"sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM=\" crossorigin=\"anonymous\"></script>    \r\n");
      out.write("       <script>\r\n");
      out.write("       \r\n");
      out.write("       \r\n");
      out.write("       \r\n");
      out.write("       \r\n");
      out.write("\r\n");
      out.write("       var table = document.getElementById(\"leaderboard\");\r\n");
      out.write("       var row;\r\n");
      out.write("       var cell0;\r\n");
      out.write("       var cell1;\r\n");
      out.write("       var cell2;\r\n");
      out.write("       var cell3;\r\n");
      out.write("       var cell4;\r\n");
      out.write("       var wacka = document.getElementById(\"boardwackaheader\");\r\n");
      out.write("       var addi = document.getElementById(\"boardaddiheader\");\r\n");
      out.write("       var subi = document.getElementById(\"boardsubiheader\");\r\n");
      out.write("       var wackabut = document.getElementById(\"boardwacka\");\r\n");
      out.write("       var addibut = document.getElementById(\"boardaddi\");\r\n");
      out.write("       var subibut = document.getElementById(\"boardsubi\");\r\n");
      out.write("       var wackacols;\r\n");
      out.write("       var addicols;\r\n");
      out.write("       var subicols;\r\n");
      out.write("      \r\n");
      out.write("                \r\n");
      out.write("\r\n");
      out.write("      \r\n");
      out.write("       function back(){\r\n");
      out.write("                window.location.href = \"hub.jsp\";\r\n");
      out.write("            }\r\n");
      out.write("\r\n");
      out.write("        \r\n");
      out.write("       \r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("            function displayWackaDESC() {\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("               addi.style.backgroundColor = \"beige\";\r\n");
      out.write("               subi.style.backgroundColor = \"beige\";\r\n");
      out.write("               boardsubi.classList.remove(\"active\");\r\n");
      out.write("               boardaddi.classList.remove(\"active\");\r\n");
      out.write("               boardwacka.classList.add(\"active\");\r\n");
      out.write("                \r\n");
      out.write("                var numRows = table.rows.length;\r\n");
      out.write("                for (var i = numRows - 1; i > 1; i--) {\r\n");
      out.write("                    table.deleteRow(i);\r\n");
      out.write("                }\r\n");
      out.write("\r\n");
      out.write("                \r\n");
      out.write("\r\n");
      out.write("                \r\n");
      out.write("        ");
      
            String userName = (String)session.getAttribute("username");
            int addiHigh = (Integer)session.getAttribute("addihighscore");
            int wackaHigh = (Integer)session.getAttribute("wackahighscore");
            
            

            try {
                Connection connection = DriverManager.getConnection("jdbc:sqlite:C:\\Users\\Jason\\Desktop\\Uni\\Fourth_Year\\Honours_Project\\Denomigator\\demo\\src\\main\\webapp\\databases\\db1.db");
                Statement statement = connection.createStatement();   
                ResultSet resultSet = statement.executeQuery("SELECT * FROM users ORDER BY wackahighscore DESC");



                List<String> userList = new ArrayList<String>();
                List<Integer> addiList = new ArrayList<Integer>();
                List<Integer> subiList = new ArrayList<Integer>();
                List<Integer> wackaList = new ArrayList<Integer>();
                while(resultSet.next()) {
                    int wackahigh = resultSet.getInt("wackahighscore");
                    int addihigh = resultSet.getInt("addihighscore");
                    int subihigh = resultSet.getInt("subihighscore");
                    String username = resultSet.getString("username");
                    
                    userList.add(username);
                    addiList.add(addihigh);
                    subiList.add(subihigh);
                    wackaList.add(wackahigh);
                   

                   }
                    request.setAttribute("userlist", userList);
                    request.setAttribute("addilist", addiList);
                    request.setAttribute("subilist", subiList);
                    request.setAttribute("wackalist", wackaList);
                    
                    
                    for(int i = 0; i< userList.size() ; i++) {
                        
      out.write("\r\n");
      out.write("                        row = table.insertRow();\r\n");
      out.write("                        cell0 = row.insertCell(0);\r\n");
      out.write("                        cell1 = row.insertCell(1);\r\n");
      out.write("                        cell2 = row.insertCell(2);\r\n");
      out.write("                        cell3 = row.insertCell(3);\r\n");
      out.write("                        cell4 = row.insertCell(4);\r\n");
      out.write("\r\n");
      out.write("                        cell2.setAttribute(\"class\", \"wackacol\");\r\n");
      out.write("                        cell3.setAttribute(\"class\", \"addicol\");\r\n");
      out.write("                        cell4.setAttribute(\"class\", \"subicol\");\r\n");
      out.write("\r\n");
      out.write("                        cell0.innerHTML = ");
      out.print(i);
      out.write("+1;\r\n");
      out.write("                        cell1.innerHTML = \"");
      out.print(userList.get(i));
      out.write("\";\r\n");
      out.write("                        cell2.innerHTML = \"");
      out.print(wackaList.get(i));
      out.write("\";\r\n");
      out.write("                        cell3.innerHTML = \"");
      out.print(addiList.get(i));
      out.write("\";\r\n");
      out.write("                        cell4.innerHTML = \"");
      out.print(subiList.get(i));
      out.write("\";\r\n");
      out.write("\r\n");
      out.write("                        if(\"");
      out.print(userList.get(i));
      out.write("\" == '");
      out.print(userName);
      out.write("'){\r\n");
      out.write("                            cell0.style.border = \"solid\";\r\n");
      out.write("                            cell0.style.borderRight = \"none\";\r\n");
      out.write("                            cell1.style.borderTop = \"solid\";\r\n");
      out.write("                            cell1.style.borderBottom = \"solid\";\r\n");
      out.write("                            cell2.style.borderTop = \"solid\";\r\n");
      out.write("                            cell2.style.borderBottom = \"solid\";\r\n");
      out.write("                            cell3.style.borderTop = \"solid\";\r\n");
      out.write("                            cell3.style.borderBottom = \"solid\";\r\n");
      out.write("                            cell4.style.border = \"solid\";\r\n");
      out.write("                            cell4.style.borderLeft = \"none\";\r\n");
      out.write("\r\n");
      out.write("                        }\r\n");
      out.write("\r\n");
      out.write("                        wackacols = document.querySelectorAll(\".wackacol\");\r\n");
      out.write("                        addicols = document.querySelectorAll(\".addicol\");\r\n");
      out.write("                        subicols = document.querySelectorAll(\".subicol\");\r\n");
      out.write("                        ");

                    }
                    
                    connection.close();
                    
            }
           catch(Exception e){
            out.println(e);
        }
        
        
      out.write("\r\n");
      out.write("        \r\n");
      out.write("                wacka.style.backgroundColor = \"khaki\";\r\n");
      out.write("                for(let i = 0; i<wackacols.length;i++){\r\n");
      out.write("                    wackacols[i].style.backgroundColor = \"khaki\";\r\n");
      out.write("                }\r\n");
      out.write("\r\n");
      out.write("            }\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("function displayAddiDESC() {\r\n");
      out.write("\r\n");
      out.write("                wacka.style.backgroundColor = \"beige\";\r\n");
      out.write("                subi.style.backgroundColor = \"beige\";\r\n");
      out.write("                boardsubi.classList.remove(\"active\");\r\n");
      out.write("                boardwacka.classList.remove(\"active\");\r\n");
      out.write("                boardaddi.classList.add(\"active\");\r\n");
      out.write("                \r\n");
      out.write("                var numRows = table.rows.length;\r\n");
      out.write("                for (var i = numRows - 1; i > 1; i--) {\r\n");
      out.write("                    table.deleteRow(i);\r\n");
      out.write("                }\r\n");
      out.write("                \r\n");
      out.write("        ");
      

            try {
                Connection connection = DriverManager.getConnection("jdbc:sqlite:C:\\Users\\Jason\\Desktop\\Uni\\Fourth_Year\\Honours_Project\\Denomigator\\demo\\src\\main\\webapp\\databases\\db1.db");
                Statement statement = connection.createStatement();   
                ResultSet resultSet = statement.executeQuery("SELECT * FROM users ORDER BY addihighscore DESC");



                List<String> userList = new ArrayList<String>();
                List<Integer> addiList = new ArrayList<Integer>();
                List<Integer> subiList = new ArrayList<Integer>();
                List<Integer> wackaList = new ArrayList<Integer>();
                while(resultSet.next()) {
                    int wackahigh = resultSet.getInt("wackahighscore");
                    int addihigh = resultSet.getInt("addihighscore");
                    int subihigh = resultSet.getInt("subihighscore");
                    String username = resultSet.getString("username");
                    
                    userList.add(username);
                    addiList.add(addihigh);
                    subiList.add(subihigh);
                    wackaList.add(wackahigh);
                   

                   }
                    request.setAttribute("userlist", userList);
                    request.setAttribute("addilist", addiList);
                    request.setAttribute("subilist", subiList);
                    request.setAttribute("wackalist", wackaList);
                    
                    
                    for(int i = 0; i< userList.size() ; i++) {
                        
      out.write("\r\n");
      out.write("                        row = table.insertRow();\r\n");
      out.write("                        cell0 = row.insertCell(0);\r\n");
      out.write("                        cell1 = row.insertCell(1);\r\n");
      out.write("                        cell2 = row.insertCell(2);\r\n");
      out.write("                        cell3 = row.insertCell(3);\r\n");
      out.write("                        cell4 = row.insertCell(4);\r\n");
      out.write("\r\n");
      out.write("                        cell2.setAttribute(\"class\", \"wackacol\");\r\n");
      out.write("                        cell3.setAttribute(\"class\", \"addicol\");\r\n");
      out.write("                        cell4.setAttribute(\"class\", \"subicol\");\r\n");
      out.write("\r\n");
      out.write("                        cell0.innerHTML = ");
      out.print(i);
      out.write("+1;\r\n");
      out.write("                        cell1.innerHTML = \"");
      out.print(userList.get(i));
      out.write("\";\r\n");
      out.write("                        cell2.innerHTML = \"");
      out.print(wackaList.get(i));
      out.write("\";\r\n");
      out.write("                        cell3.innerHTML = \"");
      out.print(addiList.get(i));
      out.write("\";\r\n");
      out.write("                        cell4.innerHTML = \"");
      out.print(subiList.get(i));
      out.write("\";\r\n");
      out.write("\r\n");
      out.write("                        if(\"");
      out.print(userList.get(i));
      out.write("\" == '");
      out.print(userName);
      out.write("'){\r\n");
      out.write("                          cell0.style.border = \"solid\";\r\n");
      out.write("                            cell0.style.borderRight = \"none\";\r\n");
      out.write("                            cell1.style.borderTop = \"solid\";\r\n");
      out.write("                            cell1.style.borderBottom = \"solid\";\r\n");
      out.write("                            cell2.style.borderTop = \"solid\";\r\n");
      out.write("                            cell2.style.borderBottom = \"solid\";\r\n");
      out.write("                            cell3.style.borderTop = \"solid\";\r\n");
      out.write("                            cell3.style.borderBottom = \"solid\";\r\n");
      out.write("                            cell4.style.border = \"solid\";\r\n");
      out.write("                            cell4.style.borderLeft = \"none\";\r\n");
      out.write("\r\n");
      out.write("                        }\r\n");
      out.write("\r\n");
      out.write("                        wackacols = document.querySelectorAll(\".wackacol\");\r\n");
      out.write("                        addicols = document.querySelectorAll(\".addicol\");\r\n");
      out.write("                        subicols = document.querySelectorAll(\".subicol\");\r\n");
      out.write("                        ");

                    }
                    
                    connection.close();
                    
            }
           catch(Exception e){
            out.println(e);
        }
        
        
      out.write("\r\n");
      out.write("\r\n");
      out.write("                addi.style.backgroundColor = \"khaki\";\r\n");
      out.write("                for(let i = 0; i<addicols.length;i++){\r\n");
      out.write("                    addicols[i].style.backgroundColor = \"khaki\";\r\n");
      out.write("                }\r\n");
      out.write("            }\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("            function displaySubiDESC() {\r\n");
      out.write("\r\n");
      out.write("                addi.style.backgroundColor = \"beige\";\r\n");
      out.write("                wacka.style.backgroundColor = \"beige\";\r\n");
      out.write("                boardwacka.classList.remove(\"active\");\r\n");
      out.write("                boardaddi.classList.remove(\"active\");\r\n");
      out.write("                boardsubi.classList.add(\"active\");\r\n");
      out.write("                \r\n");
      out.write("                var numRows = table.rows.length;\r\n");
      out.write("                for (var i = numRows - 1; i > 1; i--) {\r\n");
      out.write("                    table.deleteRow(i);\r\n");
      out.write("                }\r\n");
      out.write("                \r\n");
      out.write("        ");
      

            try {
                Connection connection = DriverManager.getConnection("jdbc:sqlite:C:\\Users\\Jason\\Desktop\\Uni\\Fourth_Year\\Honours_Project\\Denomigator\\demo\\src\\main\\webapp\\databases\\db1.db");
                Statement statement = connection.createStatement();   
                ResultSet resultSet = statement.executeQuery("SELECT * FROM users ORDER BY subihighscore DESC");



                List<String> userList = new ArrayList<String>();
                List<Integer> addiList = new ArrayList<Integer>();
                List<Integer> subiList = new ArrayList<Integer>();
                List<Integer> wackaList = new ArrayList<Integer>();
                while(resultSet.next()) {
                    int wackahigh = resultSet.getInt("wackahighscore");
                    int addihigh = resultSet.getInt("addihighscore");
                    int subihigh = resultSet.getInt("subihighscore");
                    String username = resultSet.getString("username");
                    
                    userList.add(username);
                    addiList.add(addihigh);
                    subiList.add(subihigh);
                    wackaList.add(wackahigh);
                   

                   }
                    request.setAttribute("userlist", userList);
                    request.setAttribute("addilist", addiList);
                    request.setAttribute("subilist", subiList);
                    request.setAttribute("wackalist", wackaList);
                    
                    
                    for(int i = 0; i< userList.size() ; i++) {
                        
      out.write("\r\n");
      out.write("                        row = table.insertRow();\r\n");
      out.write("                        cell0 = row.insertCell(0);\r\n");
      out.write("                        cell1 = row.insertCell(1);\r\n");
      out.write("                        cell2 = row.insertCell(2);\r\n");
      out.write("                        cell3 = row.insertCell(3);\r\n");
      out.write("                        cell4 = row.insertCell(4);\r\n");
      out.write("\r\n");
      out.write("                        cell2.setAttribute(\"class\", \"wackacol\");\r\n");
      out.write("                        cell3.setAttribute(\"class\", \"addicol\");\r\n");
      out.write("                        cell4.setAttribute(\"class\", \"subicol\");\r\n");
      out.write("\r\n");
      out.write("                        cell0.innerHTML = ");
      out.print(i);
      out.write("+1;\r\n");
      out.write("                        cell1.innerHTML = \"");
      out.print(userList.get(i));
      out.write("\";\r\n");
      out.write("                        cell2.innerHTML = \"");
      out.print(wackaList.get(i));
      out.write("\";\r\n");
      out.write("                        cell3.innerHTML = \"");
      out.print(addiList.get(i));
      out.write("\";\r\n");
      out.write("                        cell4.innerHTML = \"");
      out.print(subiList.get(i));
      out.write("\";\r\n");
      out.write("\r\n");
      out.write("                        if(\"");
      out.print(userList.get(i));
      out.write("\" == '");
      out.print(userName);
      out.write("'){\r\n");
      out.write("                          cell0.style.border = \"solid\";\r\n");
      out.write("                            cell0.style.borderRight = \"none\";\r\n");
      out.write("                            cell1.style.borderTop = \"solid\";\r\n");
      out.write("                            cell1.style.borderBottom = \"solid\";\r\n");
      out.write("                            cell2.style.borderTop = \"solid\";\r\n");
      out.write("                            cell2.style.borderBottom = \"solid\";\r\n");
      out.write("                            cell3.style.borderTop = \"solid\";\r\n");
      out.write("                            cell3.style.borderBottom = \"solid\";\r\n");
      out.write("                            cell4.style.border = \"solid\";\r\n");
      out.write("                            cell4.style.borderLeft = \"none\";\r\n");
      out.write("\r\n");
      out.write("                        }\r\n");
      out.write("\r\n");
      out.write("                        wackacols = document.querySelectorAll(\".wackacol\");\r\n");
      out.write("                        addicols = document.querySelectorAll(\".addicol\");\r\n");
      out.write("                        subicols = document.querySelectorAll(\".subicol\");\r\n");
      out.write("                        ");

                    }
                    
                    connection.close();
                    
            }
           catch(Exception e){
            out.println(e);
        }
        
        
      out.write("\r\n");
      out.write("\r\n");
      out.write("                subi.style.backgroundColor = \"khaki\";\r\n");
      out.write("                for(let i = 0; i<subicols.length;i++){\r\n");
      out.write("                    subicols[i].style.backgroundColor = \"khaki\";\r\n");
      out.write("                }\r\n");
      out.write("            }\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("           \r\n");
      out.write("\r\n");
      out.write("            displayWackaDESC();\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("            \r\n");
      out.write("       \r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("       </script>\r\n");
      out.write("    </body>\r\n");
      out.write("\r\n");
      out.write("</html>\r\n");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
