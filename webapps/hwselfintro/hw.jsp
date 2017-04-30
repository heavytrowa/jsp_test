<%@page contentType="text/html;charset=utf-8"%>
<HTML>
    <HEAD>
        <TITLE>presentation</TITLE>
    </HEAD>
    <BODY>
    <style>
    .a{
      font-size: 35pt;
      color: purple;
    }
    .littlered{
      color: red;
    }
    table, th, td {
        border: 1px solid black;
        border-collapse: collapse;
    }
    </style>
        <%
        String name = request.getParameter("username");
        String bday = request.getParameter("bday");
        String sex = request.getParameter("sex");
        String[] sports = request.getParameterValues("hobby");
        String positions = request.getParameter("list");
        String[] style = request.getParameterValues("list1");
        String intro = request.getParameter("note");
        %>
        <center>
          <div class='a'>自我介紹<br></div>
          <HR>
          <table>
            <tr>
              <td>姓名</td>
              <td class='littlered' onmouseover='this.style.color="blue";' onmouseout="this.style.color='red';"><%= name%></td>
            </tr>
            <tr>
              <td>生日</td>
              <td class='littlered' onmouseover='this.style.color="blue";' onmouseout="this.style.color='red';"><%= bday%></td>
            </tr>
            <tr>
              <td>性別</td>
              <td class='littlered' onmouseover='this.style.color="blue";' onmouseout="this.style.color='red';"><%= sex %></td>
            </tr>
            <tr>
              <td>興趣</td>
              <td class='littlered' onmouseover='this.style.color="blue";' onmouseout="this.style.color='red';"><%for(int k=0; k<sports.length;k++){
                if(sports[k].equals("swimming"))
                out.println("游泳");
                else if(sports[k].equals("basketball")){
                  out.println("籃球");
                }
                else if(sports[k].equals("baseball")){
                  out.println("棒球");
                }
              }%></td>
            </tr>
            <tr>
              <td>籃球擅長的位置</td>
              <td class='littlered' onmouseover='this.style.color="blue";' onmouseout="this.style.color='red';"><%if(positions.equals("pg")){
                out.println("控球後衛");
              }
              else if(positions.equals("sg")){
                out.println("得分後衛");
              }
              else if(positions.equals("sf")){
                out.println("小前鋒");
              }
              else if(positions.equals("pf")){
                out.println("大前鋒");
              }
              else if(positions.equals("c")){
                out.println("中鋒");
              }
              else if(positions.equals("no")){
                out.println("不會打");
              }
              %></td>
            </tr>
            <tr>
              <td>游泳最擅長</td>
              <td class='littlered' onmouseover='this.style.color="blue";' onmouseout="this.style.color='red';"><%if(style==null){
                out.println("不會游");
              }
              else{
              for(int q=0; q<style.length;q++){
                if(style[q].equals("1"))
                out.println("自由式");
                else if(style[q].equals("2")){
                  out.println("蛙式");
                }
                else if(style[q].equals("3")){
                  out.println("蝶式");
                }
              }
            }%></td>
          </tr>
          <tr>
            <td>自傳</td>
            <td class='littlered' onmouseover='this.style.color="blue";' onmouseout="this.style.color='red';"><%=  intro %></td>
          </tr>
        姓名：<%= name %><br> 生日：<%= bday %><br> 性別：<%= sex %><br>
        興趣：
        <%for(int k=0; k<sports.length;k++){
          if(sports[k].equals("swimming"))
          out.println("游泳");
          else if(sports[k].equals("basketball")){
            out.println("籃球");
          }
          else if(sports[k].equals("baseball")){
            out.println("棒球");
          }
        }%><br>
        籃球擅長的位置：
        <%if(positions.equals("pg")){
          out.println("控球後衛");
        }
        else if(positions.equals("sg")){
          out.println("得分後衛");
        }
        else if(positions.equals("sf")){
          out.println("小前鋒");
        }
        else if(positions.equals("pf")){
          out.println("大前鋒");
        }
        else if(positions.equals("c")){
          out.println("中鋒");
        }
        else if(positions.equals("no")){
          out.println("不會打");
        }
        %><br>
        游泳最擅長：
        <%if(style==null){
          out.println("不會游");
        }
        else{
        for(int q=0; q<style.length;q++){
          if(style[q].equals("1"))
          out.println("自由式");
          else if(style[q].equals("2")){
            out.println("蛙式");
          }
          else if(style[q].equals("3")){
            out.println("蝶式");
          }
        }
      }%><br>
        自傳：<%= intro %><br>
        表格：<br>



    </BODY>
</HTML>
